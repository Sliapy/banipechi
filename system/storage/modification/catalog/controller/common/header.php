<?php
class ControllerCommonHeader extends Controller {
	public function index() {

            //$this->document->addStyle('catalog/view/theme/default/devmanextensions/options_combinations/stylesheet/image-picker.css');
            //$this->document->addScript('catalog/view/theme/default/devmanextensions/options_combinations/javascript/image-picker.min.js');
        
		// Analytics
		$this->load->model('extension/extension');

            $data['aridiusfastorder'] = $this->load->controller('module/aridiuscallback');
			

		$data['analytics'] = array();

		$analytics = $this->model_extension_extension->getExtensions('analytics');

		foreach ($analytics as $analytic) {
			if ($this->config->get($analytic['code'] . '_status')) {
				$data['analytics'][] = $this->load->controller('extension/analytics/' . $analytic['code'], $this->config->get($analytic['code'] . '_status'));
			}
		}

		if (isset($this->request->server['HTTPS']) && (($this->request->server['HTTPS'] == 'on') || ($this->request->server['HTTPS'] == '1'))) {
			$server = $this->config->get('config_ssl');
		} else {
			$server = $this->config->get('config_url');
		}

		if (is_file(DIR_IMAGE . $this->config->get('config_icon'))) {
			$this->document->addLink($server . 'image/' . $this->config->get('config_icon'), 'icon');
		}


            // YUMenu
            $yumenus = $this->config->get('yumenu_main');
            $data['yumenus'] = array();

            if ($yumenus) {
                $this->load->model('extension/module');

                $main_menus = array();

                foreach ($yumenus as $menu_id) {
                    $setting_info = $this->model_extension_module->getModule($menu_id);

                    if ($setting_info && $setting_info['status']) {
                        $main_menus[] = $setting_info;

                        $sort_order = array();
                        foreach ($main_menus as $key => $value) {
                            $sort_order[$key] = isset($value['main_sort']) ? $value['main_sort'] : 0;
                        }
                        array_multisort($sort_order, SORT_ASC, $main_menus);
                    }
                }

                foreach ($main_menus as $main_menu) {
                    $output = $this->load->controller('extension/module/yumenu', $main_menu);

                    if ($output) {
                        $data['yumenus'][] = $output;
                    }
                }
            }
            

		$current_theme = $this->config->get('config_theme');
		$current_directory = $this->config->get('theme_default_directory');
		if (preg_match("/^theme_/", $current_theme)) {
			$current_theme = substr($current_theme, 6);
		}
		if ($current_theme == 'default' && $current_directory != 'default') {
			$current_theme = $current_directory;
		}
		if (file_exists(DIR_TEMPLATE . $current_theme . '/stylesheet/articles.css')) {
			$data['articles_css'] = 'catalog/view/theme/'. $current_theme .'/stylesheet/articles.css?v=75';
		} else {
			$data['articles_css'] = 'catalog/view/theme/default/stylesheet/articles.css?v=75';
		}
		
		$data['title'] = $this->document->getTitle();

		$data['base'] = $server;
		$data['description'] = $this->document->getDescription();
		$data['keywords'] = $this->document->getKeywords();
		$data['links'] = $this->document->getLinks();
		$data['styles'] = $this->document->getStyles();
		$data['scripts'] = $this->document->getScripts();
		$data['lang'] = $this->language->get('code');
		$data['direction'] = $this->language->get('direction');

		$data['name'] = $this->config->get('config_name');

		if (is_file(DIR_IMAGE . $this->config->get('config_logo'))) {
			$data['logo'] = $server . 'image/' . $this->config->get('config_logo');
		} else {
			$data['logo'] = '';
		}

		$this->load->language('common/header');

                    $this->load->language('extension/module/royal');
					
      
		$data['og_url'] = (isset($this->request->server['HTTPS']) && (($this->request->server['HTTPS'] == 'on') || ($this->request->server['HTTPS'] == '1')) ? HTTPS_SERVER : HTTP_SERVER) . substr($this->request->server['REQUEST_URI'], 1, (strlen($this->request->server['REQUEST_URI'])-1));
		$data['og_image'] = $this->document->getOgImage();

		$data['text_home'] = $this->language->get('text_home');

		// Wishlist
		if ($this->customer->isLogged()) {
			$this->load->model('account/wishlist');

			$data['text_wishlist'] = sprintf($this->language->get('text_wishlist'), $this->model_account_wishlist->getTotalWishlist());
		} else {
			$data['text_wishlist'] = sprintf($this->language->get('text_wishlist'), (isset($this->session->data['wishlist']) ? count($this->session->data['wishlist']) : 0));
		}

		$data['text_shopping_cart'] = $this->language->get('text_shopping_cart');
		$data['text_logged'] = sprintf($this->language->get('text_logged'), $this->url->link('account/account', '', true), $this->customer->getFirstName(), $this->url->link('account/logout', '', true));

		$data['text_account'] = $this->language->get('text_account');
		$data['text_register'] = $this->language->get('text_register');
		$data['text_login'] = $this->language->get('text_login');
		$data['text_order'] = $this->language->get('text_order');
		$data['text_transaction'] = $this->language->get('text_transaction');
		$data['text_download'] = $this->language->get('text_download');
		$data['text_logout'] = $this->language->get('text_logout');
		$data['text_checkout'] = $this->language->get('text_checkout');
		$data['text_page'] = $this->language->get('text_page');
		$data['text_category'] = $this->language->get('text_category');
		$data['text_all'] = $this->language->get('text_all');

		$data['home'] = $this->url->link('common/home');
		$data['wishlist'] = $this->url->link('account/wishlist', '', true);
		$data['logged'] = $this->customer->isLogged();
		$data['account'] = $this->url->link('account/account', '', true);
		$data['register'] = $this->url->link('account/register', '', true);
		$data['login'] = $this->url->link('account/login', '', true);
		$data['order'] = $this->url->link('account/order', '', true);
		$data['transaction'] = $this->url->link('account/transaction', '', true);
		$data['download'] = $this->url->link('account/download', '', true);
		$data['logout'] = $this->url->link('account/logout', '', true);
		$data['shopping_cart'] = $this->url->link('checkout/cart');
		$data['checkout'] = $this->url->link('checkout/checkout', '', true);
		$data['contact'] = $this->url->link('information/contact');

           $data['button_title'] = $this->language->get('button_title');
		   $data['aridiuscallback_status'] = $this->config->get('aridiuscallback_status');
			
		$data['telephone'] = $this->config->get('config_telephone');

	  		   $data['compare'] = $this->url->link('product/compare');
			   $data['searchlink'] = $this->url->link('product/search');
	             	$data['text_information'] = $this->language->get('text_information');
	            	$data['text_contact'] = $this->language->get('text_contact');
					$data['text_manufacturer'] = $this->language->get('text_manufacturer');
					$data['text_continue'] = $this->language->get('text_continue');					
					$data['text_continue2'] = $this->language->get('text_continue2');					
					$data['text_wishlist2'] = $this->language->get('text_wishlist2');
					$data['text_compare2'] = $this->language->get('text_compare2');
			        $data['href_manufacturer'] = $this->url->link('product/manufacturer');
					$data['text_compare'] = sprintf($this->language->get('text_compare'), (isset($this->session->data['compare']) ? count($this->session->data['compare']) : 0));	
                    $data['button_compare'] = $this->language->get('button_compare');
      

		// Menu
		$this->load->model('catalog/category');

		$this->load->model('catalog/product');

					$this->load->model('tool/image');
      

		$data['categories'] = array();

		
            if ($data['yumenus']) {
                $categories = array();
            } else {
                $categories = $this->model_catalog_category->getCategories(0);
            }
            

		foreach ($categories as $category) {

			if ($category['image']) {
			$image_main = $this->model_tool_image->resize($category['image'],$this->config->get('royal_photos_width_image_main'), $this->config->get('royal_photos_height_image_main'));
			} else {		
			$image_main = '';
			};
      
			if ($category['top']) {
				// Level 2
				$children_data = array();

				$children = $this->model_catalog_category->getCategories($category['category_id']);

				foreach ($children as $child) {

		$children_lv3_data = array();
		$children_lv3 = $this->model_catalog_category->getCategories($child['category_id']);
		foreach ($children_lv3 as $child_lv3) {
		$filter_data_lv3 = array(
		'filter_category_id'  => $child_lv3['category_id'],
		'filter_sub_category' => true
		);		
		$children_lv3_data[] = array(
		'name'  => $child_lv3['name'] . ($this->config->get('config_product_count') ? ' (' . $this->model_catalog_product->getTotalProducts($filter_data_lv3) . ')' : ''),
		'href'  => $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id'] . '_' . $child_lv3['category_id'])
		);
			}	
	    if ($child['image']) {
		$img_lv2 = $this->model_tool_image->resize($child['image'],$this->config->get('royal_photos_menu_width'), $this->config->get('royal_photos_menu_height'));
		} else {		
		$img_lv2 = '';
		};
      
					$filter_data = array(
						'filter_category_id'  => $child['category_id'],
						'filter_sub_category' => true
					);

					$children_data[] = array(
						'name'  => $child['name'] . ($this->config->get('config_product_count') ? ' (' . $this->model_catalog_product->getTotalProducts($filter_data) . ')' : ''),

	                'stickers'     => $child['stickers'],
					'children_lv3' => $children_lv3_data,
		            'column'   => $child['column'] ? $child['column'] : 1,
		            'image2' => $img_lv2,
      
						'href'  => $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id'])
					);
				}

				// Level 1
				$data['categories'][] = array(

					'top'     => $category['top'],
					'category_id' => $category['category_id'],

			'image_main' => $image_main,
      
      
					'name'     => $category['name'],

					'stickers'     => $category['stickers'],	
      
					'children' => $children_data,
					'column'   => $category['column'] ? $category['column'] : 1,
					'href'     => $this->url->link('product/category', 'path=' . $category['category_id'])
				);
			}
		}

		$data['language'] = $this->load->controller('common/language');
		$data['currency'] = $this->load->controller('common/currency');
		$data['search'] = $this->load->controller('common/search');

					if (isset($this->request->get['path'])) {
						$parts = explode('_', (string)$this->request->get['path']);
					} else {
						$parts = array();
					}
					if (isset($parts[0])) {
						$data['category_id'] = $parts[0];
					} else {
						$data['category_id'] = 0;
			        }
					
					$this->load->model('catalog/information');
					$this->load->language('common/footer');
					$this->load->model('catalog/manufacturer');
					$data['informations'] = array();
					foreach ($this->model_catalog_information->getInformations() as $result) {
						if ($result['bottom']) {
							$data['informations'][] = array(
								'title' => $result['title'],
								'href'  => $this->url->link('information/information', 'information_id=' . $result['information_id'])
							);
						}
					}
			        $data['manufacturers'] = array();
			        $manufacturers = $this->model_catalog_manufacturer->getManufacturers();
			     	foreach($manufacturers as $manufacturer){
					if ($manufacturer['image']) {
		             $img_manufacturer = $this->model_tool_image->resize($manufacturer['image'],$this->config->get('royal_photos_menuman_width'), $this->config->get('royal_photos_menuman_height'));
		            	} else {		
		            $img_manufacturer = $this->model_tool_image->resize('placeholder.png', 90, 90);
		                };	
					if($manufacturer){
				      $data['manufacturers'][] = array(
						'name' => $manufacturer['name'],
						'manufacturer_image' => $img_manufacturer,
						'href' => $this->url->link('product/manufacturer/info', 'manufacturer_id='.$manufacturer['manufacturer_id'])
					);
				       }
				          }
      
		$data['cart'] = $this->load->controller('common/cart');

		       $data['language_id'] = $this->config->get('config_language_id');
		            $data['royal_account_top'] = $this->config->get('royal_account_top');
					$data['royal_top_links3'] = $this->config->get('royal_top_links3');
					$data['royal_top_links4'] = $this->config->get('royal_top_links4');
					$data['royal_top_links5'] = $this->config->get('royal_top_links5');
					$data['royal_top_links6'] = $this->config->get('royal_top_links6');
					$data['royal_top_links8'] = $this->config->get('royal_top_links8');
					$data['royal_telephone_top'] = $this->config->get('royal_telephone_top');
					$data['royal_wishlist_top'] = $this->config->get('royal_wishlist_top');
					$data['royal_compare_top'] = $this->config->get('royal_compare_top');
					$data['royal_cart_top'] = $this->config->get('royal_cart_top');
					$data['royal_checkout_top'] = $this->config->get('royal_checkout_top');
					$data['royal_calltop'] = $this->config->get('royal_calltop');
					$data['royal_order_top'] = $this->config->get('royal_order_top');
					$data['royal_transaction_top'] = $this->config->get('royal_transaction_top');
					$data['royal_download_top'] = $this->config->get('royal_download_top');
					$data['royal_telephone_mainheader'] = $this->config->get('royal_telephone_mainheader');
			    	$data['royal_worktime'] = $this->config->get('royal_worktime');
					$data['royal_mail_header'] = $this->config->get('royal_mail_header');
				    $data['royal_sticky_menu'] = $this->config->get('royal_sticky_menu');
					$data['royal_photos_menu'] = $this->config->get('royal_photos_menu');
					$data['royal_photos_menu_manuf'] = $this->config->get('royal_photos_menu_manuf');
					$data['royal_3lv_menu'] = $this->config->get('royal_3lv_menu');
					$data['royal_info_menu'] = $this->config->get('royal_info_menu');
					$data['royal_man_menu'] = $this->config->get('royal_man_menu');
					$data['royal_main_link_menu'] = $this->config->get('royal_main_link_menu');
					$data['royal_main_link_href_menu'] = $this->config->get('royal_main_link_href_menu');
					$data['royal_sticker_menu'] = $this->config->get('royal_sticker_menu');
					$data['royal_name_sticker_menu_new'] = $this->config->get('royal_name_sticker_menu_new');
					$data['royal_name_sticker_menu_top'] = $this->config->get('royal_name_sticker_menu_top');
					$data['royal_name_sticker_menu_sale'] = $this->config->get('royal_name_sticker_menu_sale');
					$data['royal_arrowup'] = $this->config->get('royal_arrowup');
					$data['royal_callleft'] = $this->config->get('royal_callleft');
			        $data['royal_menuman_column'] = $this->config->get('royal_menuman_column');
                    $data['royal_cssstyle'] = $this->config->get('royal_cssstyle');
					$data['royal_main_photos_menu'] = $this->config->get('royal_main_photos_menu');
					$data['royal_ico_home'] = $this->config->get('royal_ico_home');
					$data['royal_vmenu_menu'] = $this->config->get('royal_vmenu_menu');
					$data['royal_seeall_menu'] = $this->config->get('royal_seeall_menu');
					$data['royal_countvmenulv'] = $this->config->get('royal_countvmenulv');
					$data['royal_seevmenuico'] = $this->config->get('royal_seevmenuico');
					$data['royal_seevmenu_menu'] = $this->config->get('royal_seevmenu_menu');
					$data['royal_link_menucatalog'] = $this->config->get('royal_link_menucatalog');
					$data['royal_description_cat'] = $this->config->get('royal_description_cat');
					$data['royal_css'] = html_entity_decode ($this->config->get('royal_css'), ENT_QUOTES, 'UTF-8');	
					$data['royal_height_symbolst'] = $this->config->get('royal_height_symbolst');					
      

		// For page specific css
		if (isset($this->request->get['route'])) {
			if (isset($this->request->get['product_id'])) {
				$class = '-' . $this->request->get['product_id'];
			} elseif (isset($this->request->get['path'])) {
				$class = '-' . $this->request->get['path'];
			} elseif (isset($this->request->get['manufacturer_id'])) {
				$class = '-' . $this->request->get['manufacturer_id'];
			} elseif (isset($this->request->get['information_id'])) {
				$class = '-' . $this->request->get['information_id'];
			} else {
				$class = '';
			}

			$data['class'] = str_replace('/', '-', $this->request->get['route']) . $class;
		} else {
			$data['class'] = 'common-home';
		}

		return $this->load->view('common/header', $data);
	}
}
