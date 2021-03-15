<?php echo $header; ?>
<style>
	.product-thumb .owl-carousel .owl-buttons div {
    opacity: 0.7;
}
</style>
<div class="container" >
<div class="row">
<div id="cont" class="col-sm-12">
<?php echo $column_left; ?>
<?php if ($column_left && $column_right) { ?>
	<?php $class = 'col-sm-6'; ?>
	<?php } elseif ($column_left || $column_right) { ?>
	<?php $class = 'col-sm-9'; ?>
	<?php } else { ?>
	<?php $class = 'col-sm-12'; ?>
	<?php } ?>
<div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
<ul class="breadcrumb">
<?php foreach ($breadcrumbs as $i=> $breadcrumb) { ?>
	<li><?php if($i+1<count($breadcrumbs)) { ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a><?php } else { ?><?php echo $breadcrumb['text']; ?><?php } ?></li>
	<?php } ?>
</ul>
<h1><?php echo $heading_title; ?></h1>
<br />
<?php if ($royal_description_top_or_bot !=0) { ?>		  
<?php if ($thumb || $description) { ?>
<div class="row desc-cat_top">
<?php if ($thumb) { ?>
<div class="col-sm-2"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" class="img-thumbnail" /></div>
<?php } ?>
<?php if ($description) { ?>
<?php if ($royal_description_length !=1 && strlen($description) > 2200 ) {  
if ($thumb) { ?><div class="col-sm-10"><?php } else { ?><div class="col-sm-12"><?php } ?>
<div class="block_desc">
<?php echo $description; ?>
</div>
<a class="button_sh"><?php echo $text_show_desc; ?></a>
</div>
<?php } else { 
if ($thumb) { ?><div class="col-sm-10"><?php } else { ?><div class="col-sm-12"><?php } ?><?php echo $description; ?></div>
<?php } ?>
<?php } ?>
</div>
<?php } ?>
	<?php } ?>	  
<?php if ($categories) { ?>
	<div class="col-sm-12">
	<div class="category2lv-center">
	<div class="row">
	<?php foreach ($categories as $category) { ?>
		<div class="cat_clear col-xs-6 col-sm-4 col-md-4 col-lg-3 catpr-all">
		<?php if ($royal_categories_2lv !=1 && (!empty($category['thumb']))) { ?>		  
			<a class="catpr" href="<?php echo $category['href']; ?>"><img srcset="data:image/svg+xml;charset=utf-8,%3Csvg%20xmlns%3D%27http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%27%20viewBox%3D%270%200%20194%2069%27%2F%3E" src="<?php echo $category['thumb']; ?>" alt="<?php echo $category['name']; ?>" class="img-responsive demilazyload opacityhv" /></a>
			<?php } ?>			
		<a class="catpr2" href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
		</div>
		<?php } ?>
	</div>
	</div>
	</div>
	<?php } ?>
<?php if ($products) { ?>
	<div class="clearfix">	</div>
	<div class="row catfl">
	<div class="col-sm-3">
	<div class="btn-group hidden-xs">
	<button type="button" id="list-view" class="btn btn-default2" data-toggle="tooltip" title="<?php echo $button_list; ?>"><i class="fa fa-th-list"></i></button>
	<button type="button" id="grid-view" class="btn btn-default2" data-toggle="tooltip" title="<?php echo $button_grid; ?>"><i class="fa fa-th"></i></button>
	</div>
	</div>
	<div class="col-xs-12 col-sm-9">
	<div class="col-xs-12 col-sm-6 col-md-7 col-lg-6 navright">
	<?php if ($royal_sort_cat !=1) { ?>
		<div class="form-group input-group input-group-sm">
		<label class="input-group-addon" for="input-sort"><i class="fa fa-sort"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_sort; ?></span></label>
		<select id="input-sort" class="form-control" onchange="location = this.value;">
		<?php foreach ($sorts as $sorts) { ?>
			<?php if ($sorts['value'] == $sort . '-' . $order) { ?>
				<option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
				<?php } else { ?>
				<option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
				<?php } ?>
			<?php } ?>
		</select>
		</div>
		<?php } ?>
	</div>
	<div class="col-xs-12 col-sm-6 col-md-5 col-lg-5 navright">
	<?php if ($royal_count_cat !=1) { ?>
		<div class="form-group input-group input-group-sm">
		<label class="input-group-addon" for="input-limit"><i class="fa fa-eye"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_limit; ?></span></label>
		<select id="input-limit" class="form-control" onchange="location = this.value;">
		<?php foreach ($limits as $limits) { ?>
			<?php if ($limits['value'] == $limit) { ?>
				<option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
				<?php } else { ?>
				<option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
				<?php } ?>
			<?php } ?>
		</select>
		</div>
		<?php } ?>
	</div>
	</div>
	</div>
	<br />
	<div class="row">
	<?php
	$classes=array('product-layout2','product-layout3','product-layout4','product-layout5'); 
	$k = -1;
	$num = 0;
	?>	  
	<?php foreach ($products as $product) { ?>
		<!-- grid -->		
		<div class="product-layoutcat product-list col-xs-12 ">
		<?php $k++; $num++; ?>

		<div class="<?php echo $classes[$k%4] ?>">
		<div class="product-thumb">
		<div class="image">
			
				<div id="dop-photo<?php echo $num; ?>" class="owl-carousel" style="display: block">
					<div class="photo-pr"><a href="<?php echo $product['href']; ?>"><img srcset="data:image/svg+xml;charset=utf-8,%3Csvg%20xmlns%3D%27http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%27%20viewBox%3D%270%200%20194%2069%27%2F%3E" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="demilazyload img-responsive" /></a></div>
                     <?php foreach ($product['images'] as $image) { ?>
					    <div class="photo-pr"><a href="<?php echo $product['href']; ?>"><img srcset="data:image/svg+xml;charset=utf-8,%3Csvg%20xmlns%3D%27http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%27%20viewBox%3D%270%200%20194%2069%27%2F%3E" src="<?php echo $image['thumb']; ?>" class="demilazyload"></a></div>
					  <?php } ?>
				</div>	
				

	   </div>
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
		<div>
		<div class="caption">
		<h4><a href="<?php echo $product['href']; ?>">
		<?php  
		if( mb_strlen(htmlspecialchars_decode($product['name']) ) < $royal_limit_symbolst) { 
			echo $product['name'];  
		} 
		else {
			echo mb_substr( htmlspecialchars_decode($product['name']),0,$royal_limit_symbolst,'utf-8' )."..."; } 
		?>
		</a></h4>
        <p class="description_cat"><?php echo $product['description']; ?></p>
		<?php if ($royal_rating_cat !=1) { ?>				
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
		<?php if ($royal_wishlist_cat !=1) { ?>
			<a class="wishlist" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-fw fa-heart"></i></a>
			<?php } ?>	
		<?php if ($royal_compare_cat !=1) { ?>	
			<a class="compare" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-fw fa-exchange"></i></a>
			<?php } ?>
		<?php if ($aridius_qckview_status) { ?>	
			<a class="quickview" data-toggle="tooltip" title="<?php echo $button_quickview; ?>" onclick="quickview_open('<?php echo $product['product_id']; ?>');"><i class="fa fa-fw fa-search"></i></a>
			<?php } ?>
		</p>
		</div>	
		</div>
		</div>
		</div>
		</div>
		</div>  </div>
		<!-- grid END-->				
		<?php } ?>
	</div>
	<div class="row">
	<div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
	<div class="col-sm-6 text-right"><?php echo $results; ?></div>
	</div>
	<?php } ?>
<?php if (!$categories && !$products) { ?>
	<p><?php echo $text_empty; ?></p>
	<div class="buttons">
	<div class="pull-right"><a href="<?php echo $continue; ?>" class="btn-cart"><?php echo $button_continue; ?></a></div>
	</div>
	<?php } ?>
<br />	  
<?php if ($royal_description_top_or_bot !=1) { ?>	
	<div class="row">	
	<div class="col-sm-12">	  
<?php if ($thumb || $description) { ?>
<div class="row desc-cat_top">
<?php if ($thumb) { ?>
<div class="col-sm-2"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" class="img-thumbnail" /></div>
<?php } ?>
<?php if ($description) { ?>
<?php if ($royal_description_length !=1 && strlen($description) > 2200 ) {  
if ($thumb) { ?><div class="col-sm-10"><?php } else { ?><div class="col-sm-12"><?php } ?>
<div class="block_desc">
<?php echo $description; ?>
</div>
<a class="button_sh"><?php echo $text_show_desc; ?></a>
</div>
<?php } else { 
if ($thumb) { ?><div class="col-sm-10"><?php } else { ?><div class="col-sm-12"><?php } ?><?php echo $description; ?></div>
<?php } ?>
<?php } ?>
</div>
<?php } ?>
	</div>	
	</div>	
	<?php } ?>	  	
<?php echo $content_bottom; ?></div></div>
<?php echo $column_right; ?></div>
</div>
<script>	
$(document).ready(function(){
    $('.button_sh').click(function(){
        $(this).toggleClass('active');
        $('.block_desc').toggleClass('opener');
        if (!$(this).data('status')) {
            $(this).data('status', true).html('<?php echo $text_hide_desc; ?>');
        } else {
            $(this).data('status', false).html('<?php echo $text_show_desc; ?>');
        }
    });
});	
</script>
<script type="text/javascript"><!--	
<?php 
$num++;
for ($x = 0; $x < $num; $x++) { ?>
$(document).ready(function() {
	$('#dop-photo<?php echo $x; ?>').owlCarousel({
items: 1, 
itemsMobile: 	[479,1],
		itemsTablet :	[768,1],
itemsDesktopSmall:	[979,1],
itemsDesktop:	[1199,1],
pagination: false,
navigation: true,
navigationText: ['<i class="fa fa-chevron-left fa-5x"></i>', '<i class="fa fa-chevron-right fa-5x"></i>']
	});
});
<?php } ?>
//--></script>	

<script type="application/ld+json">
{
 "@context": "http://schema.org",
 "@type": "Product",
 "name": "<?php echo $heading_title; ?>",
 "description": "<?php echo $heading_title; ?>  в интернет-магазине BANIPECHI.BY ⭐⭐⭐ Печи для бани, дымоходы, каминное и печное литье ✅Доставка по Беларуси 📱8 (029) 707-54-07 ➣ Заходите, звоните и заказывайте!",
 "image": "<?php echo $thumb; ?>",
 "offers": {
   "@type": "AggregateOffer",
   "highPrice": "<?php echo $max_price; ?>",
   "lowPrice": "<?php echo $min_price; ?>",
   "offerCount":"<?php echo $product_total; ?> ",
   "priceCurrency": "BYN"
 }
}
</script>

<?php echo $footer; ?>