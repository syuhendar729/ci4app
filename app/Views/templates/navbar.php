<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<div class="container">
		<a class="navbar-brand" href="#">Syuhendar</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
			<div class="navbar-nav">
				<a class="nav-link <?= uri_string() == '/' ? 'active' : ''; ?>" href="/">Home <span class="sr-only">(current)</span></a>
				<a class="nav-link <?= uri_string() == 'pages/about' ? 'active' : ''; ?>" href="/pages/about">About</a>
				<a class="nav-link <?= uri_string() == 'pages/contact' ? 'active' : ''; ?>" href="/pages/contact">Contact</a>
				<a class="nav-link <?= uri_string() == 'anime' ? 'active' : ''; ?>" href="/anime">Anime</a>
				<a class="nav-link <?= uri_string() == 'orang' ? 'active' : ''; ?>" href="/orang">Orang</a>
			</div>
		</div>
	</div>
</nav>