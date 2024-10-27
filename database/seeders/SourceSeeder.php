<?php

namespace Database\Seeders;

use App\Models\Source;
use App\Services\CryptoPanicService;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class SourceSeeder extends Seeder
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
            if(!empty($item['source'])){


                $ch = Source::where('title','=',$item['source']['title'])->first();

                 if(empty($ch)){
                        $s = new Source();
                        $s->title = $item['source']['title'];
                        $s->region = $item['source']['region'];
                        $s->domain = $item['source']['domain'];
                        $s->path = $item['source']['path'];
                        $s->type = $item['source']['type'];
                        $s->save();
                }


        }

        }
        }
    }

