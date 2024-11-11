<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Booking extends Model
{
    use HasFactory;
    protected $fillable = ['site_id','user_id','user_phone','travel_date','return_date','visitors'];

    public function shop() {
        return $this->belongsTo(Shop::class, 'site_id');
    }

    public function user() {
        return $this->belongsTo(User::class);
    }

}
