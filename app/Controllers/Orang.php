<?php

namespace App\Controllers;

use App\Models\OrangModel;

class Orang extends BaseController
{
    protected $orangModel;

    # =================================================================
    public function __construct()
    {
        $this->orangModel = new OrangModel();
    }

    # =================================================================
    public function index()
    {
        // d($this->request->getVar('keyword'));

        $keyword = $this->request->getVar('keyword');
        if ($keyword) {
            $orang = $this->orangModel->search($keyword);
        } else {
            $orang = $this->orangModel;
        }

        // $orang = $this->orangModel->findAll();
        $currentPage = $this->request->getVar('page_orang') ? $this->request->getVar('page_orang') : 1;
        $data        = [
            'title'       => 'Daftar Orang | MyWebsite',
            'orang'       => $this->orangModel->paginate(10, 'orang'),
            'pager'       => $this->orangModel->pager,
            'currentPage' => $currentPage,
        ];

        return view('orang/index', $data);
    }

    public function detail()
    {
        echo json_encode($this->orangModel->find($_POST['id']));
    }

    public function search()
    {
        // echo json_encode($this->orangModel->search($_GET['nama']));
        // d($_GET['nama']);
        // d($keyword);
        $keyword = $_GET['nama'];
        if ($keyword) {
            $orang = $this->orangModel->search($keyword);
        } else {
            $orang = $this->orangModel;
        }

        // $orang = $this->orangModel->findAll();
        $currentPage = $this->request->getVar('page_orang') ? $this->request->getVar('page_orang') : 1;
        $data        = [
            'title'       => 'Daftar Orang | MyWebsite',
            'orang'       => $this->orangModel->paginate(10, 'orang'),
            'pager'       => $this->orangModel->pager,
            'currentPage' => $currentPage,
        ];

        return view('orang/search', $data);
    }
}
