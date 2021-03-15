<h3><?php echo $heading_title; ?></h3>
<div class="row">
<?php foreach ($products as $product) { ?>
	<div class="product-layout changebr col-lg-3 col-md-3 col-sm-6 col-xs-12">
	<div class="product-thumb transition">
	<div class="image"><a href="<?php echo $product['href']; ?>"><img srcset="data:image/svg+xml;charset=utf-8,%3Csvg%20xmlns%3D%27http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%27%20viewBox%3D%270%200%20194%2069%27%2F%3E" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="demilazyload img-responsive" /></a></div>
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
	<?php if ($royal_sticker_top_product_auto !=1 && $royal_sticker_product_top_ratinr == 1 && $product['rating'] == $royal_sticker_product_top_rating || $royal_sticker_top_product_auto !=1 && $royal_sticker_product_top_ratinr == 2 && $product['viewed'] >  $royal_sticker_product_top_viewed || $royal_sticker_top_product_auto !=0 && $product['stickers'] == 2 ) { ?> 
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