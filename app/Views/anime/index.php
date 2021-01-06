<?= $this->extend('templates/template'); ?>

<?= $this->section('content'); ?>
<div class="container">
	<div class="row">
		<div class="col">
			<a href="/anime/create" class="btn btn-primary mt-3">Tambah Data</a>
			<h1 class="mt-3 mx-auto" style="width: 400px"><b>Daftar Anime</b></h1>
			<?php if (session()->getFlashData('pesan')) : ?>
				<div class="alert alert-<?= session()->getFlashData('alert'); ?>" role="alert">
					<?= session()->getFlashData('pesan'); ?>
				</div>
			<?php endif; ?>
			<table class="table table-dark table-striped">
				<thead>
					<tr>
						<th scope="col">#</th>
						<th scope="col">Image</th>
						<th scope="col">Judul</th>
						<th scope="col">Aksi</th>
					</tr>
				</thead>
				<tbody>
					<?php $i = 1; ?>
					<?php foreach ($anime as $anm) : ?>
						<tr>
							<th scope="row"><?= $i++; ?></th>
							<td><img src="/img/<?= $anm['image']; ?>" class="sampul"></td>
							<td><?= $anm['judul']; ?></td>
							<td><a href="/anime/<?= $anm['slug']; ?>" class="btn btn-info btn-sm">Detail</a></td>
						</tr>
					<?php endforeach; ?>
				</tbody>
			</table>
		</div>
	</div>
</div>
<?= $this->endSection(); ?>