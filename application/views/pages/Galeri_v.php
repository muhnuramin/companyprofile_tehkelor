<!-- ======= Header ======= -->
<header id="header" class="fixed-top">
	<div class="container d-flex">
		<div class="logo mr-auto">
			<h1><a href="index.html"><img src="<?php echo base_url('assets/'); ?>img/logo_h.png" style="margin: -10px -0px 0px 0px;" alt="Logo <?php echo $namaPerusahaan; ?>"></a></h1>
		</div>

		<nav class="nav-menu d-none d-lg-block">
			<ul>
				<li> <a href="<?php echo site_url('Home') ?>"><?php echo get_phrase('Beranda') ?></a></li>
				<li> <a href="<?php echo site_url('About-us') ?>"><?php echo get_phrase('Tentang Kami') ?></a></li>
				<li> <a href="<?php echo site_url('Our-Products') ?>"><?php echo get_phrase('Produk Kami') ?></a></li>
				<li class="active"> <a href="<?php echo site_url('Photo-Gallery') ?>"><?php echo get_phrase('Galeri Foto') ?></a></li>
				<li> <a href="<?php echo site_url('Contacts') ?>"><?php echo get_phrase('Hubungi Kami') ?></a></li>
				<li>
					<a href="#" class="" data-toggle="dropdown">
						<?php echo get_phrase('Pilih Bahasa'); ?>
						<img src="<?php echo base_url('assets/') ?>flag/id.png">&nbsp;<img src="<?php echo base_url('assets/') ?>flag/en.png">
						&nbsp;
						<i class="ace-icon fa fa-angle-down bigger-110"></i>
					</a>

					<ul class="dropdown-menu dropdown-light-blue dropdown-caret">
						<?php

						$fields = $this->db->list_fields('language');

						foreach ($fields as $field) {

							if ($field == 'phrase_id' || $field == 'phrase') continue;

						?>

							<li>

								<a href="<?php echo base_url(); ?>Multilanguage/select_language/<?php echo $field; ?>" style="color:black;">

									<?php echo $field; ?>

									<?php //selecting current language

									if ($this->session->userdata('current_language') == $field) : ?>

										<i class="icon-ok"></i>

									<?php endif; ?>

								</a>

							</li>

						<?php

						}

						?>
					</ul>
				</li>
			</ul>
		</nav><!-- .nav-menu -->
	</div>
</header><!-- End Header -->

<!-- ======= Page Property  ======= -->
<div class="our-skill-area fix hidden-sm">
	<div class="overlay"></div>
	<div class="area-padding-2" style="background-size: cover; background-position: 0 -700px; background-image: url(<?php echo base_url('assets/') ?>img/82fa28179db1f8b30c60786d1418f120.jpeg);">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="slide-head-text text-center">
						<h3 class="wow fadeInDown"><span><?php echo get_phrase('Galeri Foto') ?></span></h3>
						<ul class="short-bread wow fadeInUp">
							<li><a href="<?php echo site_url('Beranda_c') ?>"><?php echo get_phrase('Beranda') ?></a></li>
							<li><?php echo get_phrase('Galeri Foto') ?></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- End Page Properti -->

<main id="main">

	<!-- ======= Page Galeri ======= -->
	<div id="portfolio" class="portfolio-area area-padding-3 fix">
		<div class="container">
			<div class="row wow fadeInDown">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="section-headline text-center">
						<h3><?php echo get_phrase('Galeri Foto') ?></h3>
					</div>
				</div>
			</div>

			<!-- Album -->
			<?php foreach ($album as $a) : ?>
				<div class="galeri-photo mt-3">
					<div class="galeri-judul">
						<?php if ($this->session->userdata('current_language') == 'English') { ?>
							<h3><?php echo $a['nama_album_en']; ?></h3>
						<?php } else { ?>
							<h3><?php echo $a['nama_album']; ?></h3>
						<?php } ?>
					</div>
					<div class="row awesome-project-content">
						<!-- single-awesome-project start -->
						<?php foreach ($galeri->getPhotoByAlbum($a['id_album'])->result() as $result) : ?>
							<div class="col-md-4 col-sm-4 col-xs-12">
								<div class="single-awesome-project">
									<div class="awesome-img-2 wow fadeInUp">
										<a href="#" class="fancybox"><img src="<?php echo base_url('assets/'); ?>img/<?php echo $result->foto_galeri ?>" alt="<?php echo $a['nama_album'] . ' - ' . $namaPerusahaan; ?>" /></a>
										<div class="add-actions-2 text-center">
											<div class="project-dec">
												<a class="venobox" data-gall="myGallery" href="<?php echo base_url('assets/'); ?>img/<?php echo $result->foto_galeri ?>"></a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- single-awesome-project end -->
						<?php endforeach; ?>
						<div class="see-more text-center col-12">
							<?php if ($this->session->userdata('current_language') == 'English') { ?>
								<a href="<?php echo site_url('Photo-Gallery/' . str_replace(' ', '-', $a['nama_album_en'])) ?>" class="btn btn-danger"><?php echo get_phrase('Lihat Selengkapnya') ?></a>
							<?php } else { ?>
								<a href="<?php echo site_url('Photo-Gallery/' . str_replace(' ', '-', $a['nama_album'])) ?>" class="btn btn-danger"><?php echo get_phrase('Lihat Selengkapnya') ?></a>
							<?php } ?>
						</div>
					</div>
				</div>
			<?php endforeach; ?>
		</div>
	</div><!-- End Portfolio Section -->
</main><!-- End #main -->