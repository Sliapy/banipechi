<?php if ($royal_show_fluid_map_footer == '0') { ?>
	<div class="line1"></div>
	<div class="container">
	<div id="map-canvas2" style="position:relative; margin: 0 auto;">
	<?php if ($royal_show_contactblock == '0') { ?>
      <div class="<?php if ($royal_map_noapi == '1') { ?> block-contacts <?php } else { ?> block-contactsapi <?php } ?> visible-md visible-lg">
		<div class="info-block">
		<div class="footer_contacts">
		<?php echo $text_footer_contacts; ?>
		</div>
            <ul class="fa-ul" style="margin-left:23px;">
		<?php if (!empty($royal_telephone_footer[$language_id])) { ?>
			<li><i class="fa-li fa fa-phone"></i><a href="tel:<?php echo $royal_telephone_footer[$language_id]; ?>"><?php echo $royal_telephone_footer[$language_id]; ?></a></li>
			<?php } ?>
		<?php if (!empty($royal_telephone1_footer[$language_id])) { ?>
			<li><i class="fa-li fa fa-phone"></i><a href="tel:<?php echo $royal_telephone1_footer[$language_id]; ?>"><?php echo $royal_telephone1_footer[$language_id]; ?></a></li>
			<?php } ?>
		<?php if (!empty($royal_telephone2_footer[$language_id])) { ?>
			<li><i class="fa-li fa fa-phone"></i><a href="tel:<?php echo $royal_telephone2_footer[$language_id]; ?>"><?php echo $royal_telephone2_footer[$language_id]; ?></a></li>
			<?php } ?>
		<?php if (!empty($royal_skype_footer[$language_id])) { ?>
			<li><i class="fa-li fa fa-skype"></i><a href="callto:<?php echo $royal_skype_footer[$language_id]; ?>"><?php echo $royal_skype_footer[$language_id]; ?></a></li>
			<?php } ?>
		<?php if (!empty($royal_mail_footer[$language_id])) { ?>
			<li><i class="fa-li fa fa-envelope-o "></i><a onClick="javascript:window.open('mailto:<?php echo $royal_mail_footer[$language_id];?>', 'Mail');event.preventDefault()" ><?php echo $royal_mail_footer[$language_id];?></a></li>
			<?php } ?>
		<?php if (!empty($royal_addres_footer[$language_id])) { ?>
			<li><i class="fa-li fa fa-home launch-show"></i><?php echo $royal_addres_footer[$language_id];?></li>
			<?php } ?>
		<?php if (!empty($royal_addres_footer[$language_id])) { ?>
			<li><i class="fa-li fa fa-home launch-show"></i>аг. Ждановичи, ул. Цветочная 23</li>
			<?php } ?>
		<?php if (!empty($royal_time_footer[$language_id])) { ?>
			<li><i class="fa-li fa fa-check-circle-o "></i><?php echo $royal_time_footer[$language_id]; ?></li>
			<?php } ?>
		</ul>
		</div>
		</div>
		<?php } ?>
	</div></div>
<?php if ($royal_map_noapi == '1') { ?>
<div id="map_canvas" style="width:auto; height:270px;position:relative;"></div>
<?php } else { ?>
<?php echo html_entity_decode($royal_mapcode); ?>	
<?php } ?>
	<div class="line12"></div>
	<?php } ?>
<footer>
<div class="container nobackground wow fadeInDown" data-wow-duration="3000ms" data-wow-delay="10ms">
<div class="row">
<div class="col-sm-3 visible-md visible-lg">
<h5><?php echo $text_footer_aboutus; ?></h5>
<div class="aboutus_footer">
<?php echo html_entity_decode($royal_description[$language_id]); ?>
</div>
</div>
<div class="col-sm-3 visible-xs visible-sm">
<h5><?php echo $text_footer_contacts; ?></h5>
<ul class="list-unstyled liposition fa-ul">
<?php if (!empty($royal_telephone_footer[$language_id])) { ?>
	<li><i class="fa-li fa fa-phone"></i><a href="tel:<?php echo $royal_telephone_footer[$language_id]; ?>"><?php echo $royal_telephone_footer[$language_id]; ?></a></li>
	<?php } ?>
<?php if (!empty($royal_telephone1_footer[$language_id])) { ?>
	<li><i class="fa-li fa fa-phone"></i><a href="tel:<?php echo $royal_telephone1_footer[$language_id]; ?>"><?php echo $royal_telephone1_footer[$language_id]; ?></a></li>
	<?php } ?>
<?php if (!empty($royal_telephone2_footer[$language_id])) { ?>
	<li><i class="fa-li fa fa-phone"></i><a href="tel:<?php echo $royal_telephone2_footer[$language_id]; ?>"><?php echo $royal_telephone2_footer[$language_id]; ?></a></li>
	<?php } ?>
<?php if (!empty($royal_skype_footer[$language_id])) { ?>
	<li><i class="fa-li fa fa-skype"></i><a href="callto:<?php echo $royal_skype_footer[$language_id]; ?>"><?php echo $royal_skype_footer[$language_id]; ?></a></li>
	<?php } ?>
<?php if (!empty($royal_mail_footer[$language_id])) { ?>
	<li><i class="fa-li fa fa-envelope-o "></i><a onClick="javascript:window.open('mailto:<?php echo $royal_mail_footer[$language_id];?>', 'Mail');event.preventDefault()" ><?php echo $royal_mail_footer[$language_id];?></a></li>
	<?php } ?>
<?php if (!empty($royal_addres_footer[$language_id])) { ?>
	<li><i class="fa-li fa fa-home launch-show"></i><?php echo $royal_addres_footer[$language_id];?></li>
	<?php } ?>
<?php if (!empty($royal_time_footer[$language_id])) { ?>
	<li><i class="fa-li fa fa-check-circle-o "></i><?php echo $royal_time_footer[$language_id]; ?></li>
	<?php } ?>
</ul>
</div>
<div class="col-sm-3">
<h5><?php echo $text_extra; ?></h5>
<ul class="list-unstyled" >
<?php if ($royal_manufacturer_footer !=1) { ?><li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li><?php } ?>
<?php if ($royal_voucher_footer !=1) { ?><li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li><?php } ?>
<?php if ($royal_affiliate_footer !=1) { ?><li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li><?php } ?>
<?php if ($royal_sitemap_footer !=1) { ?><li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li><?php } ?>
<?php if ($royal_special_footer !=1) { ?> <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li><?php } ?>
</ul>
</div>
<div class="col-sm-3">
<h5><?php echo $text_account; ?></h5>
<ul class="list-unstyled">
<?php if ($royal_account_footer !=1) { ?><li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li><?php } ?>
<?php if ($royal_order_footer !=1) { ?><li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li><?php } ?>
<?php if ($royal_wishlist_footer !=1) { ?><li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li><?php } ?>
<?php if ($royal_newsletter_footer !=1) { ?><li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li><?php } ?>
<?php if ($royal_return_footer !=1) { ?><li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li><?php } ?>
</ul>
</div>
<div class="col-sm-3">
<?php if (!empty($content_mail)) { ?>
<h5><?php echo $text_footer_send; ?></h5>
<div class="footer_mailtext"><?php echo $text_footer_mailtext; ?></div>
<?php echo $content_mail; ?>
<?php } ?>
<div class="setifooter">
<?php if ($royal_top_links2 ) { ?>
	<?php foreach ($royal_top_links2 as $royal_top_link2) { ?>
		<a <?php if ($royal_top_link2['link_top']) { ?> href="<?php echo $royal_top_link2['link_top']; ?>" target="_blank" <?php } ?>><?php if ($royal_top_link2['faicons_top']) { ?><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x" style=""></i><i style="font-size: 15px; margin-top: 4px; cursor: pointer;" data-toggle="tooltip" title="<?php echo $royal_top_link2['tooltipseti']; ?>" class="<?php echo $royal_top_link2['faicons_top']; ?> fa-stack-1x fa-inverse"></i></span><?php } ?></a>
		<?php } ?>
	<?php } ?>
</div>
</div>
</div>
<div class="aboutus_footer visible-xs visible-sm">
<h5><?php echo $text_footer_aboutus; ?></h5>
<?php echo html_entity_decode($royal_description[$language_id]); ?>
</div>
</div>
<div class="footer-bottom">
<div class="container nobackground">
<div class="row">
<div class="pay"></div>
<div class="col-sm-9">
<div class="footerbottomlink">
<?php if ($informations) { ?>
	<?php foreach ($informations as $information) { ?>
		<a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a>
		<?php } ?>
	<?php if ($royal_contact_footer !=1) { ?><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a><?php } ?>
	<?php } ?>
</div>
<p><?php echo html_entity_decode($royal_license_text[$language_id]); ?></p>
</div>
<div class="col-sm-3">
<?php if (!empty($footer_pay)) { ?>
	<img srcset="data:image/svg+xml;charset=utf-8,%3Csvg%20xmlns%3D%27http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%27%20viewBox%3D%270%200%20194%2069%27%2F%3E" class="demilazyload img-responsive rigimg" alt="payment" title="payment" src="<?php echo $footer_pay; ?>">
	<?php } ?>
</div>
<span class="col-sm-12 counter-footer">
<?php echo html_entity_decode($royal_counter); ?>
</span>
</div>
</div>
</div>
</footer>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/royal/stylesheet/stickers.css" rel="stylesheet">
<link href='https://fonts.googleapis.com/css?family=Roboto:300,400,500' rel='stylesheet' type='text/css'>
<link href="catalog/view/theme/royal/js/jquery/owl-carousel/owl.carousel.css" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/royal/js/jquery/owl-carousel/owl.transitions.css" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/royal/stylesheet/animate.min.css" rel="stylesheet" type="text/css" />

<link href="catalog/view/theme/royal/stylesheet/aridius_news_category.css" type="text/css" rel="stylesheet" media="screen" />
<link href="catalog/view/theme/royal/stylesheet/aridius_faq.css" type="text/css" rel="stylesheet" media="screen" />
<link href="catalog/view/theme/royal/stylesheet/aridiusinstock.css" type="text/css" rel="stylesheet" media="screen" />
<link href="catalog/view/theme/royal/stylesheet/aridius_livesearch.css" type="text/css" rel="stylesheet" media="screen" />
<link href="catalog/view/theme/royal/stylesheet/aridiuscallback.css" type="text/css" rel="stylesheet" media="screen" />
<link href="catalog/view/theme/royal/stylesheet/aridius_news.css" type="text/css" rel="stylesheet" media="screen" />
<link href="catalog/view/javascript/jquery/magnific/magnific-popup.css" type="text/css" rel="stylesheet" media="screen" />
<link href="catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.css" type="text/css" rel="stylesheet" media="screen" />
<link href="catalog/view/theme/royal/stylesheet/aridius_letters.css" type="text/css" rel="stylesheet" media="screen" />
<link href="catalog/view/theme/default/devmanextensions/options_combinations/stylesheet/image-picker.css" type="text/css" rel="stylesheet" media="screen" />


<script src="catalog/view/theme/royal/js/aridius/aridius_instock.js" type="text/javascript"></script>
<script src="catalog/view/theme/royal/js/aridius/aridius_callback.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery/datetimepicker/moment.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery/datetimepicker/locale/ru-ru.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
<script src="catalog/view/theme/royal/js/aridius/aridius_letters.js" type="text/javascript"></script>
<script src="catalog/view/theme/default/devmanextensions/options_combinations/javascript/image-picker.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery/yumenu/menuaim.js" type="text/javascript"></script>


<script src="catalog/view/theme/royal/js/aridius/jquery.maskedinput.js" type="text/javascript"></script>
<script src="catalog/view/theme/royal/js/jquery/owl-carousel/owl.carousel.min.js" type="text/javascript"></script>
<script src="catalog/view/theme/royal/js/aridius/aridiusquickview.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery/magnific/jquery.magnific-popup.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="catalog/view/theme/royal/js/wow.min.js" type="text/javascript"></script>
<!--WOW JS-->
<script><!--
new WOW().init();
//--></script>
<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->
<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->
<!--код tooltip-->
<script><!--
$(document).ready(function(){
	$(".tooltip-examples a").tooltip();
	$(".tooltip-examples button").tooltip();
});
//--></script>
<?php if ($royal_show_fluid_map_footer == '0' && $royal_map_noapi == '1') { ?>
	<script src="https://maps.googleapis.com/maps/api/js?key=<?php echo $royal_fluid_map_key; ?>&language=<?php echo $language_code; ?>"></script>
<script><!--
	function initialize() {
		var latlng = new google.maps.LatLng(<?php echo $royal_latitude_fluid_map[$language_id]; ?>, <?php echo $royal_longitude_fluid_map[$language_id]; ?>);
	   <?php if(isset($royal_map_links) && is_array($royal_map_links)) foreach ($royal_map_links as $key => $royal_map_link) {  ?>
		   var pos<?php echo $key; ?> = new google.maps.LatLng(<?php echo $royal_map_link['latitude'][$language_id]; ?>, <?php echo $royal_map_link['longitude'][$language_id]; ?>);  
   <?php } ?>	
		var settings = {
zoom: <?php echo $royal_fluid_map_zoom; ?>,
center: latlng,
zoomControl: true,
scrollwheel: false,
mapTypeControl: true,
mapTypeControlOptions: {style: google.maps.MapTypeControlStyle.DROPDOWN_MENU},
navigationControl: true,
navigationControlOptions: {style: google.maps.NavigationControlStyle.SMALL},
mapTypeId: google.maps.MapTypeId.ROADMAP};
		var map = new google.maps.Map(document.getElementById("map_canvas"), settings);
		   <?php if ($royal_description_map_logo) { ?>
			   var contentString = '<div id="content">'+
		'<div id="siteNotice">'+
		'</div>'+
		'<div id="bodyContent">'+
		'<?php echo html_entity_decode($royal_description_map_logo[$language_id]); ?>'+
		'</div>'+
		'</div>';
		var infowindow = new google.maps.InfoWindow({
content: contentString
		});
		<?php } ?>
		   <?php if(isset($royal_map_links) && is_array($royal_map_links)) foreach ($royal_map_links as $key => $royal_map_link) {  ?>
   <?php if ($royal_map_link['title'][$language_id]) { ?>
   var contentString<?php echo $key; ?> = '<div id="content<?php echo $key; ?>">'+
   '<div id="siteNotice<?php echo $key; ?>">'+
   '</div>'+
   '<div id="bodyContent<?php echo $key; ?>">'+
   '<?php echo html_entity_decode($royal_map_link['title'][$language_id]); ?>'+
   '</div>'+
   '</div>';
   var infowindow<?php echo $key; ?> = new google.maps.InfoWindow({
   content: contentString<?php echo $key; ?>
   });
   <?php } ?>
   <?php } ?>
		var companyImage = new google.maps.MarkerImage('<?php echo $map_img; ?>',
		new google.maps.Size(80,80),
		new google.maps.Point(0,0),
		new google.maps.Point(50,50)
		);
		var companyMarker = new google.maps.Marker({
position: latlng,
map: map,
icon: companyImage,
zIndex: 3});
   <?php if(isset($royal_map_links) && is_array($royal_map_links)) foreach ($royal_map_links as $key => $royal_map_link) {  ?>
   var marker<?php echo $key; ?> = new google.maps.Marker({
   position: pos<?php echo $key; ?>,
   map: map,
   icon: companyImage,
   zIndex: 3});
   <?php } ?>
		<?php if ($royal_show_info_marker_block !=1) { ?>
			google.maps.event.addListener(companyMarker, 'mouseover', function() {
				infowindow.open(map,companyMarker);
			});
   <?php if(isset($royal_map_links) && is_array($royal_map_links)) foreach ($royal_map_links as $key => $royal_map_link) {  ?>
   <?php if ($royal_map_link['title'][$language_id]) { ?>   
   google.maps.event.addListener(marker<?php echo $key; ?>, 'mouseover', function() {
   infowindow<?php echo $key; ?>.open(map,marker<?php echo $key; ?>);
   });
   <?php } ?>   
   <?php } ?>
   <?php } ?>	
	}
	google.maps.event.addDomListener(window, 'load', initialize);
//--></script>
	<?php } ?>
<script>
	lazyloader = {
		options: {
			//  root: false,
			rootMargin: '100px 0px 100px 0px'

		},
		selector: '.demilazyload',
		lazyImages: false,
		observer: false,
		container: null,
		init: function() {
			console.log('Lazy init start');
			if (this.lazyImages && ('IntersectionObserver' in window)) {
				lazyloader.unobserv();
			}

			//  this.options.root=document.querySelector(lazyloader.container);
			this.lazyImages = [].slice.call(document.querySelectorAll(this.selector));

			if ('IntersectionObserver' in window) {

				this.observer = new IntersectionObserver(function(entries, observer) {
					entries.forEach(function(entry) {

						if (entry.isIntersecting) {

							entry.target.classList.remove('demilazyload');
							if ((entry.target.hasAttribute('data-srcsetoriginal'))) {


								entry.target.setAttribute('srcset', entry.target.getAttribute('data-srcsetoriginal'));
								lazyloader.observer.unobserve(entry.target);

							} else {

								if ((entry.target.hasAttribute('src'))) {

									entry.target.removeAttribute('srcset');
									// entry.target.setAttribute('srcset', entry.target.getAttribute('src'));
									lazyloader.observer.unobserve(entry.target);

								}
							}

							if ((entry.target.hasAttribute('data-youtube'))) {


								entry.target.innerHTML = atob(entry.target.getAttribute("data-youtube"));

								lazyloader.observer.unobserve(entry.target);

							}
							if ((entry.target.hasAttribute('data-bgoriginal'))) {

								entry.target.style.backgroundImage = 'url("'+entry.target.getAttribute('data-bgoriginal')+'")';

								lazyloader.observer.unobserve(entry.target);

							}


						}
					});
				}, this.options);

				this.lazyImages.forEach(function(lazyImage) {
					lazyloader.observer.observe(lazyImage);
				});
			} else {


				this.lazyImages.forEach(function(entry) {

					entry.classList.remove('demilazyload');
					if ((entry.hasAttribute('data-srcsetoriginal'))) {


						entry.setAttribute('srcset', entry.getAttribute('data-srcsetoriginal'));


					} else {


						if ((entry.hasAttribute('src'))) {


							entry.removeAttribute('srcset');
							//  entry.setAttribute('srcset', entry.getAttribute('src'));


						}
					}
					if ((entry.hasAttribute('data-youtube'))) {

						entry.innerHTML =  atob(entry.getAttribute("data-youtube"));



					}
					if ((entry.hasAttribute('data-bgoriginal'))) {



						entry.style.backgroundImage = 'url("'+entry.getAttribute("data-bgoriginal")+'")';


						// lazyloader.observer.unobserve(entry.target);

					}

				});

			}
		},
		unobserv: function() {
			lazyloader.lazyImages.forEach(function(lazyImage) {
				lazyloader.observer.unobserve(lazyImage);
			});
		}
	}

	lazyloader.init();
</script>
</body></html>