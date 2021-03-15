<style>

</style>
<div class="<?php echo $amazon ? 'yum-amazon ' : ''; ?><?php echo $box_class_hm; ?> menu-collapsed" id="yumenu-<?php echo $module; ?>">
  <div class="iheader" style="display: flex;align-items: center;">
  <span class="hidden-xs catblock"><?php echo $title; ?></span>
  <span class="hidden-md hidden-lg hidden-sm catblock" style="display: flex;width: 125px;min-width: 125px ">
  <i style="margin-right: 8px;align-items: center;justify-content: center;display: flex;" class="fa fa-bars" aria-hidden="true"></i>
  <img srcset="data:image/svg+xml;charset=utf-8,%3Csvg%20xmlns%3D%27http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%27%20viewBox%3D%270%200%20194%2069%27%2F%3E" class="demilazyload" src="/image/fire.png" style="margin-right: 8px;max-height: 25px;">БАНИ ПЕЧИ</span>
  <div class="tel-top hidden-md hidden-lg hidden-sm" style="display: flex;flex-wrap: wrap;padding: 0 10px;">
  <a href="tel:+375297075407" style="display: block;width: 100%; color: #fff">8(029)7075407</a>
  <a href="tel:+375291075407" style="display: block;color: #fff">8(029)1075407</a>
  </div> 
  <div class="search-top hidden-md hidden-lg hidden-sm" style="display: flex;flex-wrap: wrap;padding-right: 10px;">
  <a href="#" class="search-new" id="jsSearchW2Trg" style="fill: #fff"><svg version="1.1" class="svg-ico" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve"><path d="M0.625,12.355l2.261-2.26c0.006-0.008,0.017-0.012,0.023-0.02C2.424,9.131,2.146,8.062,2.146,6.924
  C2.146,3.1,5.247,0,9.073,0C12.898,0,16,3.1,16,6.924c0,3.824-3.102,6.925-6.927,6.925c-1.138,0-2.208-0.279-3.154-0.764
  c-0.006,0.008-0.01,0.016-0.019,0.023l-2.261,2.262c-0.833,0.83-2.183,0.83-3.015,0C-0.208,14.539-0.208,13.188,0.625,12.355z
   M9.073,11.719c2.647,0,4.797-2.146,4.797-4.794c0-2.647-2.149-4.794-4.797-4.794c-2.649,0-4.795,2.147-4.795,4.794
  C4.278,9.572,6.424,11.719,9.073,11.719z"></path></svg></a>
  </div>
  </div>

  <div class="icontent">
    <ul class="inav">
      <?php if ($custom_items) {
        echo $items;
      } else {
        $menu = function ($items,$column,$full_width,$i=1) use (&$menu) {
          if($items) {
            foreach ($items as $item) {
              echo '<li class="mi '.$item['class'];
              if (isset($item['children'])) {
                echo ' iparent';
                if (!$full_width) {
                  echo ' irel';
                }
              }
              if ($item['active']) {
                echo ' active';
              }
              echo '">';

              echo '<a class="ilink';
              if ($item['current']) {
                echo ' icurrent';
              }
              if (isset($item['children']) && !$item['href'] || isset($item['children']) && $item['empty']) {
                echo ' itoggle';
              }
              echo '"';
              if ($item['href']) {
                echo ' href="'.$item['href'].'"';
              }
              echo '>';
              if ($i != '1') {
                if ($item['img']) {
                  echo '<div class="iimage"><img srcset="data:image/svg+xml;charset=utf-8,%3Csvg%20xmlns%3D%27http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%27%20viewBox%3D%270%200%20194%2069%27%2F%3E" class="demilazyload" src="'.$item['img'].'" alt="'.$item['title'].'" title="'.$item['title'].'" /></div>';
                }
              }
              echo '<div class="ititle';
              if ($item['count']) {
                echo ' icount';
              }
              echo '">'.$item['title'];
              if ($item['count']) {
                echo '<span class="ibadge">'.$item['count'].'</span>';
              }
              echo '</div>';

              echo '</a>';

              if (isset($item['children'])) {
                if ($column < 2) {
                  if ($i == '1') {
                    if (count($item['children']) < 11) {
                      echo '<div class="isub ilist"><ul>';
                      echo $menu($item['children'],$column,$full_width,$i+1);
                      echo '</ul></div>';
                    } else {
                      echo '<div class="isub ilists"><div>';
                      foreach (array_chunk($item['children'], 3) as $children) {
                        echo '<ul>';
                        echo $menu($children,3,$full_width,$i+1);
                        echo '</ul>';
                      }
                      echo '</div></div>';
                    }
                  } else {
                    echo '<div class="isub ilist"><ul>';
                    echo $menu($item['children'],$column,$full_width,$i+1);
                    echo '</ul></div>';
                  }
                } else {
                  if ($i == '1') {
                    echo '<div class="isub ilists"><div>';
                    foreach (array_chunk($item['children'], $column) as $children) {
                      echo '<ul>';
                      echo $menu($children,$column,$full_width,$i+1);
                      echo '</ul>';
                    }
                    echo '</div></div>';
                  } else {
                    echo '<div class="ilist"><ul>';
                    echo $menu($item['children'],$column,$full_width,$i+1);
                    echo '</ul></div>';
                  }
                }
              }

              echo '</li>';
            }
          }
        };
        $menu($items,$column_hm,$full_width);
      } ?>
    </ul>
  </div>
</div>
<div id="avk"  style="display: none;">
      <header class="hidden-md hidden-sm hidden-lg"></header>
   </div>
  
<script type="text/javascript"><!--
$('#yumenu-<?php echo $module; ?> .iheader  .catblock').click(function() {
  $(this).parent().toggleClass('menu-expanded menu-collapsed');
  $('.menu3-wrap').css("display","none");
  if ($(window).width() < 768) {
    $('.icontent').slideToggle(200);
  } else {
    $('#yumenu-<?php echo $module; ?> .icontent').show();
    var height = $(this).next().outerHeight();
    $('.icontent').next().find('.ilink').next('.isub').css('min-height',height);
  }
  return false;
});

<?php if ($amazon) { ?>
$('#yumenu-<?php echo $module; ?> .itoggle .catblock').click(function(e) {
  e.preventDefault();
  if ($(window).width() < 768) {
    $(this).next().slideToggle(200);
    $(this).parent().toggleClass('mob-sub-open');
    $(this).parent().siblings('.mob-sub-open').removeClass('mob-sub-open').find('>div').not('.ilink').slideToggle(200);
  } else {
    $(this).parent().toggleClass('sub-open');
    $(this).parent().siblings('.sub-open').removeClass('sub-open');
    $(this).next('.ilist').not('.isub').slideToggle(200);
  }
});

$('#yumenu-<?php echo $module; ?> .inav, #yumenu-<?php echo $module; ?> .inav > .igroup > ul').menuAim({
  submenuDirection: $('#yumenu-<?php echo $module; ?>').parents().is('#column-right') ? 'left' : 'right',
  activate: function(item){
    if ($(window).width() > 767) {
      $(item).addClass('active sub-open');
      $(item).siblings('.active').removeClass('active');
      $(item).closest('.igroup').siblings('.sub-open').removeClass('active sub-open');

      if ($(item).is('.iparent')) {
        var container = $(item).closest('.container');
        var container_pos = container.offset();
        var sub = $(item).find('>.ilink').next();
        var sub_width = sub.outerWidth();
        var sub_pos = sub.offset();
        var fly = (container_pos.left+container.outerWidth()-15)-sub_pos.left;

        if (sub_width > fly || <?php echo $full_width; ?>) {
          $(item).find('>.isub').outerWidth(fly);
          $(item).find('>.isub > div > ul').css({'flex-wrap':'wrap','width':'100%'}).children().css('flex-grow','1');
        }
      }
    }
  },
  deactivate: function(item){
    $(item).removeClass('active sub-open');
  },
  exitMenu: function(list){
    // $(list).children().find('>.isub:visible').fadeOut(200);
    return true;
  }
});

<?php } else { ?>
$(window).resize(function() {
  if ($(window).width() > 767) {
    $('#yumenu-<?php echo $module; ?> .icontent').show();
  } else {
    $('#yumenu-<?php echo $module; ?> .icontent').hide();
  }
});

function submargin(el) {
  if ($(window).width() > 767) {
    if (<?php echo $full_width; ?>) {
        var menu_w = $('#yumenu-<?php echo $module; ?>').outerWidth();
        $('#yumenu-<?php echo $module; ?> .inav > .mi > .ilists').outerWidth(menu_w);
    } else {
      var menu = $('#yumenu-<?php echo $module; ?>');
      var menu_pos = menu.offset();
      var sub = el.find('>.isub');
      var sub_pos = sub.offset();

      var outside = (sub_pos.left + sub.outerWidth()) - (menu_pos.left + menu.outerWidth());

      if (outside > 5) {
        if (el.closest('.isub').length == 0) {
          sub.css('margin-left', '-'+(outside)+'px');
        } else {
          var pad = Math.round((sub.outerWidth()-sub.width())/2);
          sub.css({'margin-left': '-'+(sub.outerWidth()-pad)+'px', 'margin-top':el.height()+'px'});
        }
      }
    }
  }
}

$('#yumenu-<?php echo $module; ?> .iparent').not('.ilists .iparent')
.mouseenter(function() {
  $(this).addClass('sub-open');
  submargin($(this));
})
.mouseleave(function() {
  $(this).removeClass('sub-open');
});

$('#yumenu-<?php echo $module; ?> .itoggle').click(function(e) {
  e.preventDefault();
  if ($(window).width() < 768) {
    $(this).next().slideToggle(200);
    $(this).parent().toggleClass('mob-sub-open');
    $(this).parent().siblings('.mob-sub-open').removeClass('mob-sub-open').find('>div').not('.ilink').slideToggle(200);
  } else {
    $(this).parent().toggleClass('sub-open');
    $(this).next('.ilist').not('.isub').slideToggle(200);

    if ($(this).closest('.isub').is('.ilists').length == 0) {submargin($(this).parent());}
  }
});
<?php } ?>
if ($(window).width() <= 767) {
    $( "#search" ).appendTo( "#menu3-wrap header");
    $( "#search_phrase" ).appendTo( ".menu3-wrap header");
}

$('.search-new').click(function(){
  event.preventDefault();
  $('#avk').toggle();


   });
//--></script>
