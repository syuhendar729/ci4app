<?= $this->extend('templates/template'); ?>

<?= $this->section('content'); ?>
<div class="container">
	<div class="row">
		<div class="col">
			<div class="card mb-3" style="max-width: 1200px;">
				<div class="row g-0">
					<div class="col-md-4">
						<img src="/img/<?= $anime['image']; ?>" class="card-img">
					</div>
					<div class="col-md-8">
						<div class="card-body">
							<h5 class="card-title"><?= $anime['judul']; ?></h5>
							<p class="card-text text-muted">Skor : <?= $anime['rating']; ?></p>
							<p class="card-text">Genre : <?= $anime['genre']; ?></p>
							<p class="card-text">Sinopsis : <?= $anime['sinopsis']; ?></p>
							<p class="card-text"><small class="text-muted">Last update : <?= $anime['updated_at'] ?></small></p>
							<p class="card-text"><small class="text-muted">Create : <?= $anime['created_at']; ?></small></p>
							
							<a href="/anime/edit/<?= $anime['slug']; ?>" class="btn btn-warning">Edit</a>
							
							<button class="btn btn-danger" data-toggle="modal" data-target="#confirm">Delete</button>
							
							<br><br>
							<a href="/anime">Kembali</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="modal" tabindex="-1" id="confirm">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">Confirm</h5>
				<button type="button" class="btn-close btn-close-white" data-dismiss="modal" aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<p>Apakah anda yakin ingin menghapusnya?</p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Tidak</button>
				<form action="/anime/<?= $anime['id']; ?>" method="post" class="d-inline">
					<?= csrf_field(); ?>
					<input type="hidden" name="_method" value="DELETE">
					<button class="btn btn-danger">Yakin 100%</button>
				</form>
			</div>
		</div>
	</div>
</div>

<?= $this->endSection(); ?>