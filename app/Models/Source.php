<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
class Source extends Model
{
    use HasFactory,SoftDeletes;
    protected $table = 'sources';

    protected $fillable = ['code','title','slug','url'];

    public function news()
    {
        return $this->belongsToMany(News::class, 'currency_news');
    }

}
