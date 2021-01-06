<?php

namespace App\Controllers;

use CodeIgniter\I18n\Time;

class Pages extends BaseController
{
	public function index()
	{
		$data = [
			'title' => 'Home | MyWebsite',
		];
		return view('pages/home', $data);
	}

	public function about()
	{
		$data = [
			'title' => 'About | MyWebsite',
		];
		echo view('templates/header', $data);
		echo view('pages/about');
		echo view('templates/footer');
	}

	public function contact()
	{
		$data = [
			'title' => 'Contact | MyWebsite',
			'contact' => [
				[
					'email' => 'rantisi729@gmai.com',
					'no.telp' => '<a href="https://wa.me/6281319306262" target="_blank">081319306262</a>',
					'telegram' => '<a href="https://t.me/SangLegenda729" target="_blank">@SangLegenda729</a>'
				],
				[
					'email' => 'suadarantisi@gmai.com',
					'no.telp' => '0895385001111',
					'telegram' => '<a href="https://t.me/Hidden_ll" target="_blank">@Hidden_ll</a>'
				]
			]
		];
		echo view('templates/header', $data);
		echo view('pages/contact', $data);
		echo view('templates/footer');
	}
}
