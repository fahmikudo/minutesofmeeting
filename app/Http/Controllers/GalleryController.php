<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Gallery;

class GalleryController extends Controller
{
    public function index($id)
    {
        return view('mom.gallery.index', [
            'id' => $id
        ]);
    }
}
