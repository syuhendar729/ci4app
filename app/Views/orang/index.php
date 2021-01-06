<?= $this->extend('templates/template'); ?>

<?= $this->section('content'); ?>
<div class="container">
    <div class="row">
        <div class="col-6">
            <h1 class="mt-3 mx-auto"><b>Daftar Orang</b></h1>
        </div>
        <div class="my-4 col-6">
            <form action="" method="post">
                <div class="input-group mb-3">
                    <input type="text" class="form-control" placeholder="Search nama ..." name="keyword" aria-label="Recipient's username" aria-describedby="button-addon2" id="keyword">
                    <div class="input-group-append">
                        <button class="btn btn-outline-secondary" type="submit" name="submit" id="button-addon2">Cari</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <div class="row">
        <div class="col konten">
            <table class="table table-light table-striped mx-auto">
                <thead class="thead-dark">
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Nama</th>
                        <!-- <th scope="col">Email</th> -->
                        <!-- <th scope="col">Alamat</th> -->
                        <th scope="col">Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $i = 1 + (10 * ($currentPage - 1)); ?>
                    <?php foreach ($orang as $org) : ?>
                        <tr>
                            <th scope="row"><?= $i++; ?></th>
                            <td><?= $org['nama']; ?></td>
                            <td><a href="/orang/detail/<?= $org['id']; ?>" data-toggle="modal" data-target="#confirm" class="btn btn-info btn-sm tombolDetail" data-id="<?= $org['id']; ?>">Detail</a></td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>

            <?= $pager->links('orang', 'orang_pagination'); ?>

        </div>
    </div>
</div>
<div class="modal" tabindex="-1" id="confirm">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title judulModal"></h5>
            </div>
            <div class="modal-body">
                <p id="detailNama"></p>
                <p id="detailEmail"></p>
                <p id="detailAlamat"></p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
            </div>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>