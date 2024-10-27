<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class News extends Model
{
    use HasFactory,SoftDeletes;

    protected $table = 'news';

    protected $fillable = ['id','kind','title','slug','url','published_at'];


    public function currencies()
    {
        return $this->belongsToMany(Currency::class, 'currency_news');
    }

    public function sources()
    {
        return $this->belongsToMany(Source::class, 'source_news');
    }

}
