<div class="col">
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
<script>
    $(function() {
        // Jika tombol detail yg dipencet lakukan....
        $(".tombolDetail").on("click", function() {
            $(".judulModal").html("Detail Orang");

            const id = $(this).data("id");
            console.log(id);

            $.ajax({
                url: "http://localhost:8080/orang/detail",
                data: {
                    id: id
                },
                method: "post",
                dataType: "json",
                success: function(data) {
                    // console.log(data)
                    $("#detailNama").html("<b>Nama : </b>" + data.nama);
                    $("#detailEmail").html("<b>Email : </b>" + data.email);
                    $("#detailAlamat").html("<b>Alamat : </b>" + data.alamat);
                },
            });
        });
    });
</script>