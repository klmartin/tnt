<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Auth;

use Illuminate\Http\Request;
use App\Booking;
class BookingController extends Controller
{
    public function store(Request $request)
    {
        // dd($request->all());
        $request->validate([
            'site_id' => 'required|exists:shops,id',
            'user_id' => 'required|exists:users,id',
            'user_phone' => 'required|string|max:20',
            'travel_date' => 'required|date',
            'return_date' => 'nullable|date|after_or_equal:travel_date',
            'visitors' => 'required|integer|min:1|max:15',
            'additional_notes' => 'nullable|string',
        ]);

        try {
            $booking = Booking::create([
                'site_id' => $request->input('site_id'),
                'user_id' => $request->input('user_id'),
                'user_phone' => $request->input('user_phone'),
                'travel_date' => $request->input('travel_date'),
                'return_date' => $request->input('return_date'),
                'visitors' => $request->input('visitors'),
                'additional_notes' => $request->input('additional_notes'),
            ]);

            return redirect()->back()->with('success', 'Booking created successfully!');
        } catch (\Exception $e) {
            dd($e);
            return redirect()->back()->with('error', 'Failed to create booking. Please try again.');
        }
    }

    public function booking(){
        if(Auth::user()->role == 1 ){
            $booking = Booking::paginate(10);

        }else{
            $booking = Booking::where('user_id', Auth::user()->id)->paginate(10);

        }
        return view('booking.index', compact('booking'));
    }



}


