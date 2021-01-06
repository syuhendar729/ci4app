<div class="container">
	<div class="row">
		<div class="col">
			<h1>Halaman contact</h1>
			<?php foreach ($contact as $key) : ?>
				<ul>
					<li>Email : <?= $key['email']; ?></li>
					<li>No.telp : <?= $key['no.telp']; ?></li>
					<li>Telegram : <?= $key['telegram']; ?></li>
				</ul>
			<?php endforeach; ?>
			<?php $faker = Faker\Factory::create(); ?>
			<ul>
				<li><?= $faker->name; ?></li>
				<li><?= $faker->email; ?></li>
				<li><?= $faker->address; ?></li>
			</ul>
		</div>
	</div>
</div>