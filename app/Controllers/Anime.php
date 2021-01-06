<?php

namespace App\Controllers;

use App\Models\AnimeModel;

class Anime extends BaseController
{
	protected $animeModel;

	# =================================================================
	public function __construct()
	{
		$this->animeModel = new AnimeModel();
	}

	# =================================================================
	public function index()
	{
		$data = [
			'title' => 'Daftar Anime | MyWebsite',
			'anime' => $this->animeModel->getAnime()
		];

		return view('anime/index', $data);
	}

	# =================================================================
	public function detail($slug)
	{

		$data = [
			'title' => 'Detail Anime | MyWebsite',
			'anime' => $this->animeModel->getAnime($slug)
		];

		# Cek jika anime tidak ada di table
		if (empty($data['anime'])) {
			throw new \CodeIgniter\Exceptions\PageNotFoundException("Anime : $slug tidak ditemukan!");
		}

		return view('anime/detail', $data);
	}

	# =================================================================
	public function create()
	{
		$data = [
			'title' => 'Tambah Data | MyWebsite',
			'validation' => \Config\Services::validation()
		];

		return view('anime/create', $data);
	}

	# =================================================================
	public function save()
	{
		if (!$this->validate([
			'judul' => 'required|is_unique[anime.judul]',
			'rating' => 'required|numeric',
			'genre' => 'required',
			'sinopsis' => 'required|max_length[10240]',
			'image' => [
				'rules' => 'mime_in[image,image/png,image/jpg,image/jpeg]|is_image[image]|max_size[image,4096]',
				'errors' => [
					'mime_in' => 'This is not a image',
					'is_image' => 'This is not a image',
					'max_size' => 'Max size image 4 Mb'
				]
			]

		])) {
			// $validation = \Config\Services::validation();
			// return redirect()->to('/anime/create')->withInput()->with('validation', $validation);
			return redirect()->to('/anime/create')->withInput();
		}

		# Ambil gambar
		$fileImage = $this->request->getFile('image');

		# Jika tidak ada gambar yg diupload
		if ($fileImage->getError() == 4) {
			# Gunakan gambar default
			$namaImage = 'anime.jpg';
		} else {
			# Move ke /img
			$fileImage->move('img');
			# Ambil nama file image
			$namaImage = $fileImage->getName();
		}


		$slug = url_title($this->request->getVar('judul'), '-', true);
		$this->animeModel->save([
			'judul' => $this->request->getVar('judul'),
			'slug' => $slug,
			'rating' => $this->request->getVar('rating'),
			'genre' => $this->request->getVar('genre'),
			'sinopsis' => $this->request->getVar('sinopsis'),
			'image' => $namaImage
		]);

		session()->setFlashData('pesan', 'Data berhasil <b>ditambahkan!</b>');
		session()->setFlashData('alert', 'success');
		return redirect()->to('/anime');
	}

	# =================================================================
	public function delete($id)
	{
		# Cari gambar berdasarkan id
		$anime = $this->animeModel->find($id);
		# Cek jika gambar default
		if ($anime['image'] != 'anime.jpg') {
			# maka hapus
			unlink('img/' . $anime['image']);
		}

		$this->animeModel->delete($id);
		session()->setFlashData('pesan', 'Data berhasil <b>dihapus!</b>');
		session()->setFlashData('alert', 'danger');
		return redirect()->to('/anime');
	}

	# =================================================================
	public function edit($slug)
	{
		$data = [
			'title' => 'Edit Data | MyWebsite',
			'validation' => \Config\Services::validation(),
			'anime' => $this->animeModel->getAnime($slug)
		];

		return view("anime/edit", $data);
	}

	# =================================================================
	public function update($id)
	{
		$judulBaru = $this->request->getVar('judul');
		$anime = $this->animeModel->getAnimeById($id);

		if ($judulBaru == $anime['judul']) {
			$rule_judul = 'required';
		} else {
			$rule_judul = 'required|is_unique[anime.judul]';
		}

		if (!$this->validate([
			'judul' => $rule_judul,
			'rating' => 'required|numeric',
			'genre' => 'required',
			'sinopsis' => 'required|max_length[10240]',
			'image' => [
				'rules' => 'mime_in[image,image/png,image/jpg,image/jpeg]|is_image[image]|max_size[image,4096]',
				'errors' => [
					'mime_in' => 'This is not a image',
					'is_image' => 'This is not a image',
					'max_size' => 'Max size image 4 Mb'
				]
			]

		])) {
			return redirect()->to('/anime/edit/' . $anime['slug'])->withInput();
		}

		$fileImage = $this->request->getFile('image');
		$imageLama = $this->request->getVar('imageLama');
		# Cek apakah gambar diubah
		if ($fileImage->getError() == 4) {
			# Gunakan gambar yg lama
			$namaImage = $imageLama;
		} else {
			# Hapus file lama
			// unlink('img/' . $imageLama);
			if ($imageLama != 'anime.jpg') {
				# maka hapus
				unlink('img/' . $imageLama);
			}
			# Move gambar baru ke /img
			$fileImage->move('img');
			# Ambil nama file image
			$namaImage = $fileImage->getName();
		}

		$slugBaru = url_title($this->request->getVar('judul'), '-', true);
		$this->animeModel->save([
			'id' => $id,
			'judul' => $judulBaru,
			'slug' => $slugBaru,
			'rating' => $this->request->getVar('rating'),
			'genre' => $this->request->getVar('genre'),
			'sinopsis' => $this->request->getVar('sinopsis'),
			'image' => $namaImage
		]);

		session()->setFlashData('pesan', 'Data berhasil <b>diedit!</b>');
		session()->setFlashData('alert', 'warning');
		return redirect()->to('/anime');
	}
}

# ambil data tanpa model
		// $anime = $this->animeModel->where(['slug' => $slug])->first();

# cara konek db manual (tanpa model)
		// $db = \Config\Database::connect();
		// $anime = $db->query("SELECT * FROM anime");
		// $anime = $anime->getResultArray();

		# konek db dengan model
		// $anime = $this->animeModel->findAll();

# Validasi form save
		// if (! $this->validate([
		// 	// 'judul' => 'required|is_unique[anime.judul]' # gunakan ini jika ingin pesan default
		// 	'judul' => 
		// 	[
		// 		'rules'  => 'required|is_unique[anime.judul]',
		// 		'errors' => 
		// 		[
		// 			'required'  => 'The {field} field is required !',
		// 			'is_unique' => 'The {field} field is already registered !'
		// 		]
		// 	],
		// 	'rating' => 
		// 	[
		// 		'rules'  => 'required|numeric',
		// 		'errors' => 
		// 		[
		// 			'required' => 'The {field} field is required !',
		// 			'numeric'  => 'The {field} must be numeric !'
		// 		]
		// 	],
		// 	'genre' => 'required',
		// 	'image' => 'is_image[image]',
		// 	'sinopsis' => 'required|max_length[10240]'

		// ]))
		// {
		// 	$validation = \Config\Services::validation();
		// 	return redirect()->to('/anime/create')->withInput()->with('validation', $validation);
		// }
