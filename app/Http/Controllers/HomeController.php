<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class HomeController extends BaseController
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
    }

    public function index(){
        $path = storage_path() . "/data.json";

        $data = json_decode(file_get_contents($path), true); 
        // print_r($data);
        return view('layout.main',compact('data')); 
    }
}