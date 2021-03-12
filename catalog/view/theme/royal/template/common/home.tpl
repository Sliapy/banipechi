<?php echo $header; ?>
<?php echo $content_fluid; ?>
<?php if ($content_slleft && $content_top1 && $content_top2 && $content_top3 ) { ?>
	<div class="containerfluid2">
	<div class="container">
	<div class="row">
	<div class="col-xs-12 col-md-8 fixsl"> <?php echo $content_slleft; ?></div>
	<div class="col-xs-4 col-sm-4 col-md-4 fixslbann"><?php echo $content_top1; ?></div>
	<div class="col-xs-4  col-sm-4 col-md-4"><?php echo $content_top2; ?></div>
	<div class="col-xs-4  col-sm-4 col-md-4"><?php echo $content_top3; ?></div>
	</div>	
	</div>	
	</div>	
	<?php } ?>
<div class="container">
<div class="row">
<?php echo $column_left; ?>
<?php if ($column_left && $column_right) { ?>
<?php $class = 'col-sm-6'; ?>
<?php } elseif ($column_left || $column_right) { ?>
<?php $class = 'col-sm-9'; ?>
<?php } else { ?>
<?php $class = 'col-sm-12'; ?>
<?php } ?>
<div id="content" class="<?php echo $class; ?>">
<center><h1>Интернет-магазин оборудования для бани</h1></center>
<?php echo $content_top; ?>
</div>
</div>
</div>
<?php if ($content_bot1 && $content_bot2 && $content_bot3) { ?>
	<div class="containerfluid1">
	<div class="container">	
	<div class="row">
	<div class="col-xs-4"><?php echo $content_bot1; ?></div>
	<div class="col-xs-4"><?php echo $content_bot2; ?></div>
	<div class="col-xs-4"><?php echo $content_bot3; ?></div>
	</div>
	</div>	
	</div>
	<?php } ?>
<?php if ($content_slrig2) { ?>
	<div class="container">	
	<?php echo $content_slrig2; ?>
	</div>	
	<?php } ?>
<?php if ($content_slrig1) { ?>
	<div class="containerfluid1">
	<div class="container">
	<?php echo $content_slrig1; ?>
	</div>
	</div>	
	<?php } ?>
<?php if ($content_bottom) { ?>	
	<div class="container">
	<div class="row">
	<div id="content2" class="col-sm-12">
	<?php echo $content_bottom; ?>
	</div>
	</div>
	</div>
	<?php } ?>
<script type="application/ld+json">
{"@context": "http://schema.org",
"@type": "LocalBusiness",
"address": {
"@type": "PostalAddress",
"streetAddress": "ул. Уручская, 19",
"addressLocality": "Минск",
"addressCountry" : "Беларусь",
"postalCode" : "223028",
"addressRegion": "BY"
},
"description": "Оборудование для бани: печи, дымоходы, каминное и печное литье.",
"name": "ЧТУП «БАНИ И ПЕЧИ»",
"telephone": "8 (029) 707-54-07",
"email" : "190964-25@mail.ru",
"openingHoursSpecification" : {
"@type" : "OpeningHoursSpecification",
"dayOfWeek" : {
"@type" : "DayOfWeek",
"name" : "ПН-ВС"
},
"opens": "09:00:00",
"closes": "18:00:00"
},
"image": "https://banipechi.by/image/cache/catalog/bunners/pechi_dlia_bani-750x481.jpg",
"url": "https://banipechi.by/"
}
</script>
<?php echo $footer; ?>