<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Redis;
use App\Services\CryptoPanicService;

class FetchNews extends Command
{


    protected $signature = 'fetch-news {page=1} {flush=0}';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    protected $service;

    public function __construct(CryptoPanicService $service)
    {
        parent::__construct();
      $this->service = $service;
    }
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    /**
     * Execute the console command.
     */
    public function handle()
    {


       $flush = $this->argument('flush');
        if($flush>0){
            Redis::flushdb();
        }

       $page = $this->argument('page');

        for($i=1;$i<=$page;$i++){
            echo $i.PHP_EOL;
        $results = $this->service->fetchNews($i);
        foreach($results['results'] as $item){

            //echo $item['title'].PHP_EOL;
            $timestamp = strtotime($item['published_at']);
            $key = 'news'.$item['id'];
            $source = !empty($item['source']) ? json_encode($item['source']) : null;
            $currencies = !empty($item['currencies']) ? json_encode($item['currencies']) : null;

            Redis::hmset($key, [
                'title' => $item['title'],
                'url' => $item['url'],
                'source'=> $source ,
                'currency' => $currencies,
                'published_at' => $item['published_at'],
            ]);
            //Redis::rpush('news_keys', $key);
           Redis::zadd('news', $timestamp, $key);

        }///foreach

        }//page


    }
}
