<?php echo $header; ?>
<div class="container">
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
<label class="control-label" for="input-search"><?php echo $entry_search; ?></label>
<div class="row">
<div class="col-sm-4">
<input type="text" name="search" value="<?php echo $search; ?>" placeholder="<?php echo $text_keyword; ?>" id="input-search" class="form-control" />
</div>
<div class="col-sm-3">
<select name="category_id" class="form-control">
<option value="0"><?php echo $text_category; ?></option>
<?php foreach ($categories as $category_1) { ?>
	<?php if ($category_1['category_id'] == $category_id) { ?>
		<option value="<?php echo $category_1['category_id']; ?>" selected="selected"><?php echo $category_1['name']; ?></option>
		<?php } else { ?>
		<option value="<?php echo $category_1['category_id']; ?>"><?php echo $category_1['name']; ?></option>
		<?php } ?>
	<?php foreach ($category_1['children'] as $category_2) { ?>
		<?php if ($category_2['category_id'] == $category_id) { ?>
			<option value="<?php echo $category_2['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
			<?php } else { ?>
			<option value="<?php echo $category_2['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
			<?php } ?>
		<?php foreach ($category_2['children'] as $category_3) { ?>
			<?php if ($category_3['category_id'] == $category_id) { ?>
				<option value="<?php echo $category_3['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
				<?php } else { ?>
				<option value="<?php echo $category_3['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
				<?php } ?>
			<?php } ?>
		<?php } ?>
	<?php } ?>
</select>
</div>
<div class="col-sm-3">
<label class="checkbox-inline">
<?php if ($sub_category) { ?>
	<input type="checkbox" name="sub_category" value="1" checked="checked" />
	<?php } else { ?>
	<input type="checkbox" name="sub_category" value="1" />
	<?php } ?>
<?php echo $text_sub_category; ?></label>
</div>
</div>
<p>
<label class="checkbox-inline">
<?php if ($description) { ?>
	<input type="checkbox" name="description" value="1" id="description" checked="checked" />
	<?php } else { ?>
	<input type="checkbox" name="description" value="1" id="description" />
	<?php } ?>
<?php echo $entry_description; ?></label>
</p>
<input type="button" value="<?php echo $button_search; ?>" id="button-search" class="btn-cart" />
<h2><?php echo $text_search; ?></h2>
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
	?>	  
	<?php foreach ($products as $product) { ?>
		<!-- grid -->		
		<div class="product-layoutcat product-list col-xs-12 ">
		<?php $k++; ?>
		<div class="<?php echo $classes[$k%4] ?>">
		<div class="product-thumb">
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
		<?php if ($royal_sticker_top_product_auto !=1 && $royal_sticker_product_top_ratinr == 1 && $product['rating'] == $royal_sticker_product_top_rating || $royal_sticker_top_product_auto !=1 && $royal_sticker_product_top_ratinr == 2 && $product['viewed'] >  $royal_sticker_product_top_viewed || $royal_sticker_top_product_auto !=0 && $product['stickers'] == 2 ) { ?> 
			<div class="stickers-top"><?php echo $royal_name_sticker_product_top[$language_id]; ?></div>
			<?php } ?>
		<!-- top END -->
		</div>	
		<div>
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
	<?php } else { ?>
	<p><?php echo $text_empty; ?></p>
	<?php } ?>
<?php echo $content_bottom; ?></div>
<?php echo $column_right; ?></div>
</div></div>
<script type="text/javascript"><!--
$('#button-search').bind('click', function() {
	url = 'index.php?route=product/search';
	var search = $('#content input[name=\'search\']').prop('value');
	if (search) {
		url += '&search=' + encodeURIComponent(search);
	}
	var category_id = $('#content select[name=\'category_id\']').prop('value');
	if (category_id > 0) {
		url += '&category_id=' + encodeURIComponent(category_id);
	}
	var sub_category = $('#content input[name=\'sub_category\']:checked').prop('value');
	if (sub_category) {
		url += '&sub_category=true';
	}
	var filter_description = $('#content input[name=\'description\']:checked').prop('value');
	if (filter_description) {
		url += '&description=true';
	}
	location = url;
});
$('#content input[name=\'search\']').bind('keydown', function(e) {
	if (e.keyCode == 13) {
		$('#button-search').trigger('click');
	}
});
$('select[name=\'category_id\']').on('change', function() {
	if (this.value == '0') {
		$('input[name=\'sub_category\']').prop('disabled', true);
	} else {
		$('input[name=\'sub_category\']').prop('disabled', false);
	}
});
$('select[name=\'category_id\']').trigger('change');
--></script>
<?php echo $footer; ?>