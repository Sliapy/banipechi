<div class="effectb">
<div class="effect-banner">
<div id="banner<?php echo $module; ?>" class="banner-margin">
<?php foreach ($banners as $banner) { ?>
	<div class="item">
	<?php if ($banner['link']) { ?>
		<a href="<?php echo $banner['link']; ?>"><img srcset="data:image/svg+xml;charset=utf-8,%3Csvg%20xmlns%3D%27http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%27%20viewBox%3D%270%200%20194%2069%27%2F%3E" src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="demilazyload img-responsive scaleslide" /></a>
		<div class="hover-textbanner">
		<a href="<?php echo $banner['link']; ?>"></a>
		<?php if ($banner['description']) { ?>
		<div class="efhover visible-md visible-lg"><?php echo htmlspecialchars_decode($banner['description']);?></div>
		<?php } ?>
		</div>	
		<?php } else { ?>
		<img srcset="data:image/svg+xml;charset=utf-8,%3Csvg%20xmlns%3D%27http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%27%20viewBox%3D%270%200%20194%2069%27%2F%3E" src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="demilazyload img-responsive scaleslide" />
	<?php if ($banner['description']) { ?>	
		<div class="hover-textbanner">
		<div class="efhover visible-md visible-lg"><?php echo htmlspecialchars_decode($banner['description']);?></div>
		</div>	
	<?php } ?>	
		<?php } ?>
	</div>
	<?php } ?>
</div>		
</div>
</div>

