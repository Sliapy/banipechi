<?php
if($product_id && $this->config->get('config_opt_comb_status')){
    //$this->document->addStyle('catalog/view/theme/default/devmanextensions/options_combinations/stylesheet/image-picker.css');
    //$this->document->addScript('catalog/view/theme/default/devmanextensions/options_combinations/javascript/image-picker.min.js');
    if ($this->config->get('config_opt_comb_theme_generic')){
        $this->document->addStyle('catalog/view/theme/default/devmanextensions/options_combinations/stylesheet/tingle.min.css');
        $this->document->addScript('catalog/view/theme/default/devmanextensions/options_combinations/javascript/tingle.min.js');

        $this->document->addStyle('catalog/view/theme/default/devmanextensions/options_combinations/owlcarousel/assets/owl.carousel.css');
        $this->document->addStyle('catalog/view/theme/default/devmanextensions/options_combinations/owlcarousel/assets/owl.theme.default.css');
        $this->document->addScript('catalog/view/theme/default/devmanextensions/options_combinations/owlcarousel/owl.carousel.js');

        $this->document->addScript('catalog/view/theme/default/devmanextensions/options_combinations/javascript/jquery.zoom.min.js');
    }

    $this->load->language('extension/module/options_combinations');
    $this->load->model('extension/module/options_combinations');

    $options_combinations = $this->model_extension_module_options_combinations->getCombinedOptions($product_id);
    if ($options_combinations) {
        $product_options = $this->model_extension_module_options_combinations->getProductOptions($product_id);
        $form_data = array();
        $form_data['product_id'] = $product_id;
        $form_data['options_like_images'] = $this->config->get('config_opt_comb_options_like_images');
        $form_data['options_like_images_image'] = $this->config->get('config_opt_comb_options_like_images_image');
        $form_data['options_like_images_option_fields'] = $this->config->get('config_opt_comb_options_like_images_option_fields');
        $form_data['options_like_images_width'] = $this->config->get('config_opt_comb_options_like_images_width');
        $form_data['options_like_images_height'] = $this->config->get('config_opt_comb_options_like_images_height');
        $form_data['options_like_images_radius'] = $this->config->get('config_opt_comb_options_like_images_radius');
        $form_data['options_like_list'] = $this->config->get('config_opt_comb_options_like_list');
        $form_data['options_like_list_option_fields'] = $this->config->get('config_opt_comb_options_like_list_option_fields');
        $form_data['options_like_list_width'] = $this->config->get('config_opt_comb_options_like_list_width');
        $form_data['options_like_list_height'] = $this->config->get('config_opt_comb_options_like_list_height');
        $form_data['options_like_list_radius'] = $this->config->get('config_opt_comb_options_like_list_radius');
        $form_data['config_opt_comb_stock'] = $this->config->get('config_opt_comb_stock');
        $form_data['config_opt_comb_text_dimensions'] = $this->config->get('config_opt_comb_text_dimensions_' . $this->config->get('config_language_id'));
        $form_data['config_opt_comb_text_dimensions_length'] = $this->config->get('config_opt_comb_text_dimensions_length_' . $this->config->get('config_language_id'));
        $form_data['config_opt_comb_text_dimensions_width'] = $this->config->get('config_opt_comb_text_dimensions_width_' . $this->config->get('config_language_id'));
        $form_data['config_opt_comb_text_dimensions_height'] = $this->config->get('config_opt_comb_text_dimensions_height_' . $this->config->get('config_language_id'));
        $form_data['config_opt_comb_options_like_images_hide_not_available'] = $this->config->get('config_opt_comb_options_like_images_hide_not_available');
        $form_data['config_opt_comb_options_like_list_hide_not_available'] = $this->config->get('config_opt_comb_options_like_list_hide_not_available');
        $form_data['config_opt_comb_button_reset_options'] = $this->config->get('config_opt_comb_button_reset_options');

        $data['text_starting_from'] = $this->config->get('config_opt_comb_text_starting_from_' . $this->config->get('config_language_id'));
        $data['combined_options'] = $product_options;
        $data['config_opt_comb_button_reset_options'] = $this->config->get('config_opt_comb_button_reset_options');
        $data['text_reset_options'] = $this->config->get('config_opt_comb_button_reset_options_text_' . $this->config->get('config_language_id'));

        if ($this->config->get('config_opt_comb_theme_generic')){
            $form_data['config_opt_comb_theme_generic'] = $this->config->get('config_opt_comb_theme_generic');
            $form_data['config_opt_comb_theme_generic_button_text'] = $this->config->get('config_opt_comb_theme_generic_button_text_' . $this->config->get('config_language_id'));
            $data['options_combinations_generic_mode_custom_code'] = html_entity_decode($this->config->get('config_opt_comb_generic_mode_custom_code'));
        } else {
            $temp = $form_data;
            $temp['options'] = $product_options;
        }


        if(version_compare(VERSION, '3', '<')) {
            $data['text_sku'] = $this->language->get('text_sku');
            $data['text_upc'] = $this->language->get('text_upc');
            $data['text_select_combination_message_default'] = $this->language->get('text_select_combination_message_default');
            $form_data['text_select'] = $temp['text_select'] = $this->language->get('text_select');
            $form_data['text_manufacturer'] = $this->language->get('text_manufacturer');
            $form_data['text_model'] = $this->language->get('text_model');
            $form_data['text_sku'] = $this->language->get('text_sku');
            $form_data['text_stock'] = $this->language->get('text_stock');
            $form_data['text_upc'] = $this->language->get('text_upc');
            $form_data['text_tax'] = $this->language->get('text_tax');
        }


        if (version_compare(VERSION, '2.0.1.1', '<='))
            $data['combined_options_form'] = !$this->config->get('config_opt_comb_theme_generic') ? $this->load->view('default/template/product/options_combinations_form.tpl', $temp) : '';
        else
            $data['combined_options_form'] = !$this->config->get('config_opt_comb_theme_generic') ? $this->load->view('product/options_combinations_form', $temp) : '';

        $script_query = http_build_query($form_data).'&v='.date('YmdHis');


        if (version_compare(VERSION, '2.0.1.1', '<=')){
            if ($this->config->get('config_opt_comb_theme_generic'))
                $script_url = 'index.php?route=module/options_combinations/generic_option_script&' . $script_query;
            else
                $script_url = 'index.php?route=module/options_combinations/option_script&' . $script_query;
        } else {
            if ($this->config->get('config_opt_comb_theme_generic'))
                $script_url = 'index.php?route=extension/module/options_combinations/generic_option_script&' . $script_query;
            else
                $script_url = 'index.php?route=extension/module/options_combinations/option_script&' . $script_query;
        }


        $this->document->addScript($script_url);
    }
}