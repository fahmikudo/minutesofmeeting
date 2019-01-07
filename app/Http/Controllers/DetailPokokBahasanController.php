<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\DetailPokokBahasan;

class DetailPokokBahasanController extends Controller
{
    public function index($id)
    {
        return view('mom.detailpokokbahasan.index', [
            'id' => $id
        ]);
    }
}
