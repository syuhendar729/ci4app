<?php namespace App\Controllers;

class Home extends BaseController
{
	public function index()
	{
		return view('welcome_message');
		//echo "Hello World";
	}

	//--------------------------------------------------------------------
	public function coba($value='')
	{
		echo "Home/coba $this->nama";
	}
}
