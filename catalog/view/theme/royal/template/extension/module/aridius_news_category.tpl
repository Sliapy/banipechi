<div class="groupcat">	
<h3 style="display: inline;"><span><?php echo $heading_title; ?></span></h3>
<?php if ($showbutton) { ?>      
	  <div class="buttonsall_news">
      <div class="pull-right"><a href="<?php echo $aridius_newslist; ?>"><?php echo $text_all_news; ?></a></div>
      </div>
<?php } ?>	  
</div>
<div class="row">
<?php foreach ($news as $new) { ?>
  <div class="product-layout changebr col-lg-3 col-md-3 col-sm-6 col-xs-12">
  <div class="product-thumb transition ">		
  <div class="image"><a href="<?php echo $new['href']; ?>"><img src="<?php echo $new['thumb']; ?>" alt="<?php echo $new['title']; ?>" title="<?php echo $new['title']; ?>" class="img-responsive" /></a></div>
  <div class="caption">		
  <?php if ($new['aridius_news_id'] == $aridius_news_id) { ?>
  <h4><a href="<?php echo $new['href']; ?>" class="active"><?php echo $new['title']; ?></a></h4>
  <?php } else { ?>
  <h4><a href="<?php echo $new['href']; ?>"><?php echo $new['title']; ?></a></h4>
  <?php } ?>
  </div>
  </div>	
  </div>	
<?php } ?>
</div>   
  

