<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>

<!--Yandex-->
<meta name="yandex-verification" content="6f6dda33a88bcbca" />
<!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-NVT397H');</script>
<!-- End Google Tag Manager -->
<meta charset="UTF-8" />
<meta name="cmsmagazine" content="d32fb588bc607b02df9c735ffcd5f37c" />
<meta name="format-detection" content="telephone=no" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title;  ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
	<meta name="description" content="<?php echo $description; ?>" />
	<?php } ?>
<?php if ($keywords) { ?>
	<meta name="keywords" content= "<?php echo $keywords; ?>" />
	<?php } ?>
<meta property="og:title" content="<?php echo $title; ?>" />
<meta property="og:type" content="website" />
<meta property="og:url" content="<?php echo $og_url; ?>" />
<meta name="cmsmagazine" content="d32fb588bc607b02df9c735ffcd5f37c" />
<?php if ($og_image) { ?>
	<meta property="og:image" content="<?php echo $og_image; ?>" />
	<?php } else { ?>
	<meta property="og:image" content="<?php echo $logo; ?>" />
	<?php } ?>
<meta property="og:site_name" content="<?php echo $name; ?>" />
<script src="catalog/view/theme/royal/js/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<link href="catalog/view/theme/royal/stylesheet/skins/stylesheet2.min.css" rel="stylesheet">
<?php foreach ($styles as $style) { ?>
	<?php if (strpos($style['href'], 'pm.css') == false && strpos($style['href'], 'hm.css') == false) { ?>

	<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
	<?php } else { ?>

	<?php } ?>
<?php } ?>

<?php foreach ($links as $link) { ?>
	<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
	<script src="catalog/view/theme/royal/js/common.js" type="text/javascript"></script>

<?php foreach ($scripts as $script) { ?>

	<script src="<?php echo $script; ?>" type="text/javascript"></script>

<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
	<?php echo $analytic; ?>
	<?php } ?>
<style>
<?php echo $royal_css; ?>
<?php if ($royal_description_cat ==1) { ?>	
.product-grid .description_cat{
display: none;	
}
<?php } ?>
<?php if ($royal_seevmenu_menu !=1) { ?>	
@media (min-width: 992px) {
.hidem{
display: none!important;
	}	
}		
<?php } ?>	
</style>
</head>
<body class="<?php echo $class; ?>">
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NVT397H"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->
<?php if ($royal_arrowup !=1) { ?>
	<span class=""><a href="#" class="scup"><i class="fa fa-angle-up active"></i></a></span>
	<?php } ?>
<nav id="top">
<div class="container nobackground">

<div id="wishlist" class="modal fade">
<div class="modal-dialog">
<div class="modal-content">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
</div>
<div class="modal-body">
<p></p>
</div>
<div class="modal-footer">
<button type="button" class="btn-cart" data-dismiss="modal"><?php echo $text_continue2; ?></button>
<a href="<?php echo $wishlist; ?>" class="btn-cart"><?php echo $text_wishlist2; ?></a>
</div>
</div>
</div>
</div>
<div id="compare" class="modal fade">
<div class="modal-dialog">
<div class="modal-content">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
</div>
<div class="modal-body">
<p></p>
</div>
<div class="modal-footer">
<button type="button" class="btn-cart" data-dismiss="modal"><?php echo $text_continue2; ?></button>
<a href="<?php echo $compare; ?>" class="btn-cart"><?php echo $text_compare2; ?></a>
</div>
</div>
</div>
</div>
<?php echo $currency; ?>
<?php echo $language; ?>
<div id="top-links" class="nav pull-right">
<ul class="list-inline top">
<?php if ($royal_account_top !=1) { ?><li class="dropdown dropdown-toggle"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" data-toggle="dropdown"><i class="fa fa-user hidden-lg"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_account; ?></span> <i class="fa fa-caret-down"></i></a>
	<ul class="dropdown-menu dropdown-menu-left">
	<?php if ($logged) { ?>
		<li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
		<?php if ($royal_order_top !=1) { ?><li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li><?php } ?>
		<?php if ($royal_transaction_top !=1) { ?> <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li><?php } ?>
		<?php if ($royal_download_top !=1) { ?><li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li><?php } ?>
		<li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
		<?php } else { ?>
		<li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
		<li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
		<?php } ?>
	</ul>
	</li><?php } ?>
<?php if ($royal_wishlist_top !=1) { ?><li><a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><i class="fa fa-heart hidden-lg"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_wishlist; ?></span></a></li><?php } ?>
<?php if ($royal_compare_top !=1) { ?><li><a href="<?php echo $compare; ?>" id="compare-total" title="<?php echo $text_compare; ?>"><i class="fa fa-exchange hidden-lg"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_compare; ?></span></a></li><?php } ?>
<?php if ($royal_cart_top !=1) { ?><li><a href="<?php echo $shopping_cart; ?>" title="<?php echo $text_shopping_cart; ?>"><i class="fa fa-shopping-cart hidden-lg"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_shopping_cart; ?></span></a></li><?php } ?>
<?php if ($royal_checkout_top !=1) { ?> <li><a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><i class="fa fa-share hidden-lg"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_checkout; ?></span></a></li><?php } ?>
<?php if ($royal_top_links6 ) { ?>
	<?php foreach ($royal_top_links6 as $royal_top_link6) { ?>
		<li>
		<a <?php if ($royal_top_link6['link_top'][$language_id]) { ?> href="<?php echo $royal_top_link6['link_top'][$language_id]; ?>"<?php } ?> title="<?php echo $royal_top_link6['title'][$language_id]; ?>"><?php if ($royal_top_link6['faicons_top']) { ?> <i class="<?php echo $royal_top_link6['faicons_top']; ?> hidden-lg"></i><?php } ?><?php if ($royal_top_link6['title']) { ?><span class="hidden-xs hidden-sm hidden-md"> <?php echo $royal_top_link6['title'][$language_id]; ?></span><?php } ?></a>
		</li>
		<?php } ?>
	<?php } ?>
</ul>
</div>
</div>
</nav>
<header>
<div class="top-header">
<div class="container">
<div class="row">
<div class="col-sm-3 col-xs-6">
<div id="logo">
<?php if ($logo) { ?>
	<?php if ($home == $og_url) { ?>
		<img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" />
		<?php } else { ?>
		<a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
		<?php } ?>
	<?php } else { ?>
	<h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
	<?php } ?>
</div>
</div>
<div class="col-sm-6 navcentr">
<?php if ($royal_top_links3 || $royal_top_links5 || $royal_mail_header[$language_id] ) { ?>
	<div class="dropdown phone">
	<div class="listunstyled btn-lg  dropdown-toggle"><span class="tell_nav">
     
		<div class="b-dropdown-contacts__left">
		<div class="b-dropdown-contacts__phone-item"> <div class="b-dropdown-contacts__operator-item b-dropdown-contacts__operator-item_mts"></div> <div class="b-dropdown-contacts__phone"><a href="tel:+375297075407"><span>8 (029)</span> 707-54-07</a></div></div>
    <div class="b-dropdown-contacts__phone-item"> <div class="b-dropdown-contacts__operator-item b-dropdown-contacts__operator-item_velc"></div> <div class="b-dropdown-contacts__phone"><a href="tel:+375291075407"><span>8 (029)</span> 107-54-07</a></div></div>    
    <div class="b-dropdown-contacts__phone-item"> <div class="b-dropdown-contacts__operator-item b-dropdown-contacts__operator-item_lif"></div> <div class="b-dropdown-contacts__phone"><a href="tel:+375255075407"><span>8 (025)</span> 507-54-07</a></div></div>
    </div>
   <div class="b-dropdown-contacts__right">
   <div class="b-dropdown-contacts__phone-item"> <div class="b-dropdown-contacts__operator-item b-dropdown-contacts__operator-item_phone"></div> <div class="b-dropdown-contacts__phone1"><?php if ($aridiuscallback_status && $royal_calltop !=1) { ?>
		<a class = "call-order"><?php echo $button_title; ?></a>
		<?php } ?></div></div>
        
        <div class="b-dropdown-contacts__phone-item"> <div class="b-dropdown-contacts__operator-item b-dropdown-contacts__operator-item_life"></div> <div class="b-dropdown-contacts__phone1"><?php echo $royal_worktime[$language_id]; ?></div></div>
    
   </div>
    </div>
	
	</div>
	<?php } else { ?>
	<div class="phone">
	<div class="listunstyled btn-lg"><span class="tell_nav"><?php echo $royal_telephone_mainheader[$language_id]; ?></span> <span class="line"><?php echo $royal_worktime[$language_id]; ?></span></div>
	</div>
	<?php } ?>
<?php echo $search; ?>
</div>
<div class="col-sm-3  col-xs-6"><?php echo $cart; ?></div>
</div>
</div>
</div>
</header>
<div id="addtocart" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			</div>
			<div class="modal-body">
				<p></p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn-cart" data-dismiss="modal"><?php echo $text_continue; ?></button>
				<a href="<?php echo $checkout; ?>" class="btn-cart"><?php echo $text_checkout; ?></a>
			</div>
		</div>
	</div>
</div>
<div class="top-menu">
<div id="top-menu" <?php if ($royal_sticky_menu !=1) { ?> data-spy="affix" data-offset-top="208" <?php } ?>>
<div class="container nobackground">

	<nav id="menu" class="navbar">
			<?php foreach ($yumenus as $yumenu) { ?>
			<?php echo $yumenu; ?>
			<?php } ?>
	</nav>

</div>
</div></div>
<script type="text/javascript"><!--
$('#menu .menu_mob_plus li').bind().click(function(e) {
	$(this).toggleClass("open").find('>ul').stop(true, true).slideToggle(3000)
	.end().siblings().find('>ul').slideUp().parent().removeClass("open");
	e.stopPropagation();
	// Замена + на - во время открытия меню
	$(this).prev().find('.fa-plus').toggle();
	$(this).prev().find('.fa-minus').toggle();
});
$('#menu li a').click(function(e) {
	e.stopPropagation();
});
// Раскрытие/скрытие пунктов меню 3го уровня
$('.children-category > ul > li').each(function(i, elem){
	if( $(elem).hasClass('children_lv3') ) {
		var ulElements = $(elem).parent().find('li');
		if( $(ulElements[0]).find('a.plus-link').length == 0 ) {
			$(ulElements[0]).append('<a href="#" class="plus-link"><i class="fa fa-plus" style="display: inline; "></i><i class="fa fa-minus" style="display: none;"></i></a>');
			$(ulElements[0]).find('a.plus-link').click(function(e){
				$(ulElements[0]).find('a.plus-link > .fa-plus').toggle();
				$(ulElements[0]).find('a.plus-link > .fa-minus').toggle();
				$(ulElements[0]).parent().find('.children_lv3').toggle();
				return false;
			});
		}
	}
});
//--></script>
<?php if ($royal_arrowup !=1) { ?>
	<!--scrollUp-->
<script type="text/javascript"><!--
	$(document).ready(function() {
		$(window).scroll(function(){
			if ($(this).scrollTop() > 100) {
				$('.scup').fadeIn();
			} else {
				$('.scup').fadeOut();
			}
		});
		$('.scup').click(function(){
			$("html, body").animate({ scrollTop: 0 }, 900);
			return false;
		});
	});
//--></script>
	<?php } ?>
<!--for sticky-->
<script type="text/javascript"><!--
$(function () {
	if ($(window).width() > 992) {
		onResize();
	}
	function onResize(){
		if ($(window).width() > 992) {
			var heighttopmenu = $("#top-menu").height();
			$('.top-menu').css({position: 'relative',height: heighttopmenu});
		} else {
			$('.top-menu').css({position: 'relative',height: 'auto'});
		}
	}
	window.addEventListener('resize', onResize);
	document.body.addEventListener('resize', onResize);
})
//--></script>



