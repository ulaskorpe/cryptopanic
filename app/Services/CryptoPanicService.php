<?php

namespace App\Services;

use Illuminate\Support\Facades\Http;
use App\Models\Currency;
use App\Models\Source;
use App\Models\News;
use Carbon\Carbon;
use Illuminate\Support\Facades\Redis;
class CryptoPanicService
{
    //protected $baseUrl = 'https://cryptopanic.com/api/v1/posts/';
    protected $baseUrl = 'https://cryptopanic.com/api/free/v1/posts/';


    private function findCurrency($currencies){

        $c_array = [];

            foreach ($currencies as $currency) {
                $ch = Currency::where('code','=',$currency['code'])->first();
                 if(empty($ch)){
                        $ch = new Currency();
                        $ch->code = $currency['code'];
                        $ch->title = $currency['title'];
                        $ch->slug = $currency['slug'];
                        $ch->url = $currency['url'];
                        $ch->save();
                }
                    $c_array[]=$ch['id'];
            }
            return $c_array;
       }

    private function findSource($source){
        $ch = Source::where('title','=',$source['title'])->first();

        if(empty($ch)){
               $s = new Source();
               $s->title = $source['title'];
               $s->region = $source['region'];
               $s->domain = $source['domain'];
               $s->path = $source['path'];
               $s->type = $source['type'];
               $s->save();
               return $s['id'];
       }
       return $ch['id'];
    }


    public function fetchNews( $page)
    {
        $param_array =  [
            'auth_token' => env('CRYPTOPANIC_API_KEY'),
            'page' => $page,

        ];


        $response = Http::get($this->baseUrl , $param_array);

        if ($response->successful()) {
            return $response->json();
        } else {
            return [
                'status' => $response->status(),
                'body' => $response->body(),
            ];
        }
    }


    public function storeNews($item){
        $news = News::find($item['id']);
        if(empty($news)){
            $news = new News();
        }
        $news->id =   $item['id'];
        $news->kind =   $item['kind'];
        $news->title = $item['title'];
        $news->slug = $item['slug'];
        $news->url = $item['url'];
        $news->published_at = Carbon::parse( $item['published_at'])->format('Y-m-d H:i:s');;
        $news->save();
        if(!empty($item['source'])){

            $s = $this->findSource($item['source']);
            $news->sources()->detach();
            $news->sources()->attach([$s]);
        }

        if(!empty($item['currencies'])){
            $c = $this->findCurrency($item['currencies']);
            $news->currencies()->detach();
            $news->currencies()->attach($c);
        }
           return $item['id'];

    }

public function getDates(){
    $keys = Redis::zrange('news', 0, -1);

    $dates_array = [];
    foreach ($keys as $key) {
        $item = Redis::hgetall($key);
        $date =  Carbon::parse($item['published_at'])->format('Y-m-d');
        if(!in_array($date,$dates_array)){
            $dates_array[] = $date;
        }

    }
    return $dates_array;
}


public function getFilteredNews($start_date=0, $end_date=0, $currency = 0)
{

    if ($end_date == 0) {
        $end_date = Carbon::now();
    }

    if ($start_date == 0) {
        $start_date = Carbon::now()->subYears(20);
    }

    $startDate = Carbon::parse($start_date);
    $endDate = Carbon::parse($end_date)->addDay() ;

    // Get timestamps
    $startTimestamp = $startDate->timestamp;
    $endTimestamp = $endDate->timestamp;

    $keys = Redis::zrangebyscore('news', $startTimestamp, $endTimestamp);

    $newsItems = [];

    foreach ($keys as $key) {
        $item = Redis::hgetall($key);

        if ($currency != 0) {

            if(empty($item['currency'])){
                continue;
            }
            $currency_array =[];
            $currencies = json_decode($item['currency'], true);

            foreach($currencies as $cur){
               $currency_array[] = $cur['code'];
           }

           if(!in_array($currency,$currency_array)){
            continue;
           }

        }// currency

        $newsItems[] = $item;
    }

    return $newsItems;
}


}
