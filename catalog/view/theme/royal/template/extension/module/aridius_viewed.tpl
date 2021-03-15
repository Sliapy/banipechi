<h3><?php echo $heading_title; ?></h3>
<?php if ($colleft != 1 ) { ?>
	<div class="padding-carusel row">
	<div id="aridius_viewed_carusel<?php echo $module; ?>" class="owl-carousel">
	<?php
	$classes=array('product-layout2','product-layout3','product-layout4','product-layout5');
	$k = -1;
	?>
	<?php foreach ($products as $product) { ?>
		<?php $k++; ?>
		<div class="<?php echo $classes[$k%4] ?>">
		<div class="product-thumb transition">
		<div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
		<div class="positionsticker">
		<!-- special -->
		<?php if ($royal_sticker_sale_product_auto !=1 && $product['special'] && $product['price_sticker'] != 0 ) { ?>
			<?php  $percent = round(100 - ($product['special_sticker'] / $product['price_sticker']) * 100); ?>
			<div class="stickers-special">-<?php echo $percent; ?>%</div>
			<?php } ?>
		<!-- special END -->
		<!-- new -->
		<?php
		$startDate1 = strtotime(mb_substr($product['dateadded'], 0, 10));
		$endDate2 = strtotime(date("Y-m-d"));
		$days = ceil(($endDate2 / 86400)) - ceil(($startDate1 / 86400));
		?>
		<?php if($royal_sticker_new_product_auto !=1 && $days < $royal_sticker_product_new_day || $royal_sticker_new_product_auto !=0 && $product['stickers'] == 1) { ?>
			<div class="stickers-new"><?php echo $royal_name_sticker_product_new[$language_id]; ?></div>
			<?php } ?>
		<!-- new END -->
		<!-- top -->
		<?php if ($royal_sticker_top_product_auto !=1 && $royal_sticker_product_top_ratinr == 1 && $product['rating'] == $royal_sticker_product_top_rating || $royal_sticker_top_product_auto !=1 && $royal_sticker_product_top_ratinr == 2 && $product['viewed'] >  $royal_sticker_product_top_aridius_viewed || $royal_sticker_top_product_auto !=0 && $product['stickers'] == 2 ) { ?>
			<div class="stickers-top"><?php echo $royal_name_sticker_product_top[$language_id]; ?></div>
			<?php } ?>
		<!-- top END -->
		</div>
		<div class="caption">
		<h4><a href="<?php echo $product['href']; ?>">
		<?php
		if( strlen($product['name'] ) < $royal_limit_symbolst) {
			echo $product['name'];
		}
		else {
			echo mb_substr( $product['name'],0,$royal_limit_symbolst,'utf-8' )."..."; }
		?>
		</a></h4>
		<?php if ($desc) { ?>
			<p><?php echo $product['description']; ?></p>
			<?php } ?>
		<?php if ($rat) { ?>
			<div class="rating">
			<?php for ($i = 1; $i <= 5; $i++) { ?>
				<?php if ($product['rating'] < $i) { ?>
					<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
					<?php } else { ?>
					<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
					<?php } ?>
				<?php } ?>
			</div>
			<?php } ?>
		<?php if ($product['price']) { ?>
			<p class="price">
			<?php if (!$product['special']) { ?>
				<?php echo $product['price']; ?>
				<?php } else { ?>
				<span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
				<?php } ?>
			<?php if ($product['tax']) { ?>
				<span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
				<?php } ?>
			</p>
			<?php } ?>
		<div class="cart">
		<?php if ($product['quantity'] <= 0 && $aridiusinstock_status ) { ?>
			<button type="button" class="btn-instock" onclick="instock.add('<?php echo $product['product_id']; ?>');" data-product-id="<? echo $product['product_id']; ?>"><?php echo $button_instock; ?></button>
			<?php } else { ?>
			<button type="button" class="btn-cart" onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-shopping-cart"></i> <?php echo $button_cart; ?></button>
			<?php } ?>
		</div>
		<div class="effect-phoebe">
		<div class="effect-hover">
		<p>
		<?php if ($wish) { ?>
			<a class="wishlist" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-fw fa-heart"></i></a>
			<?php } ?>
		<?php if ($comp) { ?>
			<a class="compare" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-fw fa-exchange"></i></a>
			<?php } ?>
		<?php if ($quickview) { ?>
			<a class="quickview" data-toggle="tooltip" title="<?php echo $button_quickview; ?>" onclick="quickview_open('<?php echo $product['product_id']; ?>');"><i class="fa fa-fw fa-search"></i></a>
			<?php } ?>
		</p>
		</div>
		</div>
		</div>
		</div>
		</div>
		<?php } ?>
	</div>  </div>
<script>
$(document).ready(function() {
$('#aridius_viewed_carusel<?php echo $module; ?>').owlCarousel({
items : <?php echo $items; ?>,
<?php if ($items == '1') { ?>
itemsTablet: [1199,1],
<?php } ?>
autoPlay: <?php echo $autoplay; ?>,
<?php if ($navigation) { ?>
navigation: true,
<?php } ?>
<?php if (!$pagination) { ?>
pagination: false,
<?php } ?>
navigationText: ['<i class="fa fa-chevron-left fa-5x"></i>', '<i class="fa fa-chevron-right fa-5x"></i>'],
<?php if ($stophover) { ?>
stopOnHover: true,
<?php } ?>
paginationSpeed: <?php echo $pag_speed; ?>,
rewindSpeed: <?php echo $rew_speed; ?>
});
});
</script>
<?php } else { ?>
	<div class="row">
	<?php foreach ($products as $product) { ?>
		<div class="product-layout changebr col-lg-3 col-md-3 col-sm-6 col-xs-12">
		<div class="product-thumb transition">
		<div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
		<div class="positionsticker">
		<!-- special -->
		<?php if ($royal_sticker_sale_product_auto !=1 && $product['special'] && $product['price_sticker'] != 0 ) { ?>
			<?php  $percent = round(100 - ($product['special_sticker'] / $product['price_sticker']) * 100); ?>
			<div class="stickers-special">-<?php echo $percent; ?>%</div>
			<?php } ?>
		<!-- special END -->
		<!-- new -->
		<?php
		$startDate1 = strtotime(mb_substr($product['dateadded'], 0, 10));
		$endDate2 = strtotime(date("Y-m-d"));
		$days = ceil(($endDate2 / 86400)) - ceil(($startDate1 / 86400));
		?>
		<?php if($royal_sticker_new_product_auto !=1 && $days < $royal_sticker_product_new_day || $royal_sticker_new_product_auto !=0 && $product['stickers'] == 1) { ?>
			<div class="stickers-new"><?php echo $royal_name_sticker_product_new[$language_id]; ?></div>
			<?php } ?>
		<!-- new END -->
		<!-- top -->
		<?php if ($royal_sticker_top_product_auto !=1 && $royal_sticker_product_top_ratinr == 1 && $product['rating'] == $royal_sticker_product_top_rating || $royal_sticker_top_product_auto !=1 && $royal_sticker_product_top_ratinr == 2 && $product['viewed'] >  $royal_sticker_product_top_aridius_viewed || $royal_sticker_top_product_auto !=0 && $product['stickers'] == 2 ) { ?>
			<div class="stickers-top"><?php echo $royal_name_sticker_product_top[$language_id]; ?></div>
			<?php } ?>
		<!-- top END -->
		</div>
		<div class="caption sixe_price">
		<h4><a href="<?php echo $product['href']; ?>">
		<?php
		if( strlen($product['name'] ) < $royal_limit_symbolst) {
			echo $product['name'];
		}
		else {
			echo mb_substr( $product['name'],0,$royal_limit_symbolst,'utf-8' )."..."; }
		?>
		</a></h4>
		<?php if ($product['price']) { ?>
			<?php if (!$product['special']) { ?>
				<p class="price" >
				<?php echo $product['price']; ?>
				<?php } else { ?>
				<p class="price" style="margin-bottom:0px;">
				<span class="price-new"><?php echo $product['special']; ?></span><br /> <span class="price-old"><?php echo $product['price']; ?></span>
				<?php } ?>
			<?php if ($product['tax']) { ?>
				<span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
				<?php } ?>
			</p>
			<?php } ?>
		</div>
		<div class="cart">
		<button type="button" class="btn-cart" onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-shopping-cart"></i> <?php echo $button_cart; ?></button>
		</div>
		</div>
		</div>
		<?php } ?>
	</div>
<?php } ?>
