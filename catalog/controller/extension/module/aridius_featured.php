<?php
class ControllerExtensionModuleAridiusFeatured extends Controller {
	
	public function index($setting) {
		
		static $module = 0;
		
		$this->load->language('extension/module/aridius_featured');

		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_tax'] = $this->language->get('text_tax');

		$data['button_cart'] = $this->language->get('button_cart');
		$data['button_wishlist'] = $this->language->get('button_wishlist');
		$data['button_compare'] = $this->language->get('button_compare');
		$data['button_quickview'] = $this->language->get('button_quickview');
		$data['button_instock'] = $this->language->get('button_instock');

		$this->load->model('catalog/product');

		$this->load->model('tool/image');
		
		$this->document->addStyle('catalog/view/theme/royal/js/jquery/owl-carousel/owl.carousel.css');
		$this->document->addScript('catalog/view/theme/royal/js/jquery/owl-carousel/owl.carousel.min.js');

		$data['products'] = array();

		if (!$setting['limit']) {
			$setting['limit'] = 4;
		}

		$data['language_id'] = $this->config->get('config_language_id');
		$data['royal_name_sticker_product_new'] = $this->config->get('royal_name_sticker_product_new');
		$data['royal_name_sticker_product_top'] = $this->config->get('royal_name_sticker_product_top');		
		$data['royal_sticker_sale_product_auto'] = $this->config->get('royal_sticker_sale_product_auto');	
		$data['royal_sticker_new_product_auto'] = $this->config->get('royal_sticker_new_product_auto');
		$data['royal_sticker_product_new_day'] = $this->config->get('royal_sticker_product_new_day');
		$data['royal_sticker_product_top_rating'] = $this->config->get('royal_sticker_product_top_rating');
		$data['royal_sticker_product_top_viewed'] = $this->config->get('royal_sticker_product_top_viewed');
		$data['royal_sticker_product_top_ratinr'] = $this->config->get('royal_sticker_product_top_ratinr');
		$data['royal_sticker_top_product_auto'] = $this->config->get('royal_sticker_top_product_auto');
		$data['royal_limit_symbolst'] = $this->config->get('royal_limit_symbolst');
		$data['aridiusinstock_status'] = $this->config->get('aridiusinstock_status');
		$data['aridius_qckview_status'] = $this->config->get('aridius_qckview_status');
		
		$data['items'] = $setting['items'];
		$data['pag_speed'] = $setting['pag_speed'];
		$data['rew_speed'] = $setting['rew_speed'];
		$data['autoplay'] = $setting['autoplay'];
		$data['stophover'] = $setting['stophover'];
		$data['pagination'] = $setting['pagination'];
		$data['navigation'] = $setting['navigation'];
		$data['desc'] = $setting['desc'];
		$data['rat'] = $setting['rat'];
		$data['wish'] = $setting['wish'];
		$data['comp'] = $setting['comp'];
		$data['quickview'] = $setting['quickview'];
		
		if (!empty($setting['product'])) {
			$products = array_slice($setting['product'], 0, (int)$setting['limit']);

			foreach ($products as $product_id) {
				$product_info = $this->model_catalog_product->getProduct($product_id);

				if ($product_info) {
					
					if ($product_info['image']) {
						$image = $this->model_tool_image->resize($product_info['image'], $setting['width'], $setting['height']);
					} else {
						$image = $this->model_tool_image->resize('placeholder.png', $setting['width'], $setting['height']);
					}

					if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
						$price = $this->currency->format($this->tax->calculate($product_info['price'], $product_info['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
					} else {
						$price = false;
					}

					if ((float)$product_info['special']) {
						$special = $this->currency->format($this->tax->calculate($product_info['special'], $product_info['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
					} else {
						$special = false;
					}
			
					if ($this->config->get('config_tax')) {
						$tax = $this->currency->format((float)$product_info['special'] ? $product_info['special'] : $product_info['price'], $this->session->data['currency']);
					} else {
						$tax = false;
					}

					if ($this->config->get('config_review_status')) {
						$rating = $product_info['rating'];
					} else {
						$rating = false;
					}

					$data['products'][] = array(
					'dateadded'  => $product_info['date_added'],
					'viewed'     => $product_info['viewed'],
					'rating'     => $product_info['rating'],
					'stickers'   => $product_info['stickers'],
					'quantity'   => $product_info['quantity'],	
					'price_sticker'        => $product_info['price'],
					'special_sticker'      => (isset($product_info['special']) ? $product_info['special'] : false),	
					'product_id'  => $product_info['product_id'],
					'thumb'       => $image,
					'name'        => $product_info['name'],
					'description' => utf8_substr(strip_tags(html_entity_decode($product_info['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get($this->config->get('config_theme') . '_product_description_length')) . '..',
					'price'       => $price,
					'special'     => $special,
					'tax'         => $tax,
					'rating'      => $rating,
					'href'        => $this->url->link('product/product', 'product_id=' . $product_info['product_id'])
					);
				}
			}
		}
		
    $data['module'] = $module++;
	
    if ($data['products']) {
		
	return $this->load->view('extension/module/aridius_featured', $data);
	
	}
  }
}