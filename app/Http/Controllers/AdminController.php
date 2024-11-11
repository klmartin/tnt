<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Auth;

use Illuminate\Http\Request;
use App\Category;
use App\Shop;
use App\User;
use App\Booking;

class AdminController extends Controller
{
    public function  index(){

        $categories = Category::all();

        $shops = Shop::Paginate(9);
        $mapShops = $shops->makeHidden(['active', 'created_at', 'updated_at', 'deleted_at', 'created_by_id', 'photos', 'media']);
        $latitude = $shops->count() && (request()->filled('category') || request()->filled('search')) ? $shops->average('latitude') : -7.766638568253256;
        $longitude = $shops->count() && (request()->filled('category') || request()->filled('search')) ? $shops->average('longitude') : 36.9037701658003;
        $customersTotal = User::count();
        $totalBookings = Booking::count();
        $shopsTotal = Shop::count();
        $myBookings =  Booking::where('user_id', Auth::user()->id)->count();


        return view('admin.dashboard.index', compact('categories', 'shops', 'mapShops', 'latitude', 'longitude','customersTotal','totalBookings','shopsTotal','myBookings'));
    }
}
