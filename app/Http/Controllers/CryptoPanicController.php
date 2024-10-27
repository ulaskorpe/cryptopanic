<?php

namespace App\Http\Controllers;

use App\Models\Currency;
use Illuminate\Http\Request;
use App\Services\CryptoPanicService;
use App\Models\News;
// use App\Models\Source;
 use Carbon\Carbon;
use Illuminate\Support\Facades\Redis;

class CryptoPanicController extends Controller
{
    protected $service;

    public function __construct(CryptoPanicService $service)
    {
      $this->service = $service;
    }

    public function index(){



        return view('cryptopanic.index',['dates'=>$this->service->getDates(),'currencies'=>Currency::all() ]);
    }


    public function news_list($page=0,$start_date=0,$end_date=0,$currency=0){


        ///echo $start_date.":".$end_date.":".$currency."<br>";

        $news = $this->service->getFilteredNews($start_date,$end_date,$currency);
       // echo  count($news);
        //echo count($news);
        $per_page = 20;
        $page_count  = ceil( count($news) /$per_page);
        $news = array_slice($news,$page*$per_page, $per_page);
        return view('cryptopanic.news_list',['news'=>$news,'page'=>$page,'page_count'=>$page_count]);
    }



}


