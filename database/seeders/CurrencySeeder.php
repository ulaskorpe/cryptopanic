<?php

namespace Database\Seeders;
use App\Services\CryptoPanicService;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Currency;
class CurrencySeeder extends Seeder
{

    protected $service;

    public function __construct(CryptoPanicService $service)
    {
        $this->service = $service;
    }

    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $newsData = $this->service->fetchNews([]);
        foreach ($newsData['results'] as $item) {
            if(!empty($item['currencies'])){
            foreach ($item['currencies'] as $currency) {

                $ch = Currency::where('code','=',$currency['code'])->first();

                 if(empty($ch)){
                        $cur = new Currency();
                        $cur->code = $currency['code'];
                        $cur->title = $currency['title'];
                        $cur->slug = $currency['slug'];
                        $cur->url = $currency['url'];
                        $cur->save();
                }

            }
        }

        }
        }


    }

