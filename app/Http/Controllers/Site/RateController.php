<?php

namespace App\Http\Controllers\Site;

use App\Http\Controllers\Controller;
use App\Models\Rate;
use Illuminate\Http\Request;

class RateController extends Controller
{
    public function storeRate(Request $request, $service_id)
    {
        $request->validate([
            'num' => 'required|numeric',
        ]);
        if (Rate::where(['ip_address' => $request->ip(), 'service_id' => $service_id])->exists()) {
            $rate = Rate::where(['ip_address' => $request->ip(), 'service_id' => $service_id])->first();
            $rate->update(['value' => $request->num]);
            return response()->json(['success' => 'Post updated successfully.']);

        }
        Rate::create([
            'service_id' => $service_id,
            'value' => $request->num,
            'ip_address' => $request->ip()
        ]);
        return response()->json(['success' => 'Post created successfully.']);
    }
}
