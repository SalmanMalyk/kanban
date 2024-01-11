<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\BoardResource;
use App\Models\Board;
use App\Models\Card;
use Illuminate\Http\Request;

class CardController extends Controller
{
    public function index(Request $request)
    {
        $request->validate([
            'date' => ['nullable', 'date'],
            'status' => ['nullable', 'boolean'],
            'access_token' => 'required|string'
        ]);

        if ($request->access_token != 'ASIBH798ASDLJKA') {
            return response()->json(['message' => 'Unauthorized'], 401);
        }

        $cards = Card::query()
            ->when($request->date, function ($query, $date) {
                $query->whereDate('created_at', $date);
            })
            ->withTrashed()
            ->where(function ($query) use ($request) {
                if ($request->has('status')) {
                    if ($request->status == 0) {
                        $query->whereNotNull('deleted_at');
                    } else if ($request->status == 1) {
                        $query->whereNull('deleted_at');
                    }
                }
            })
            ->get(['id', 'title', 'content', 'created_at', 'deleted_at']);

        return response()->json($cards);
    }
}
