<?php

/*
    ===============================
     Include scripts
    ===============================
*/

function awesome_script_enqueue() {
    //css
    wp_enqueue_style('bootstrap', get_template_directory_uri().'/css/bootstrap.min.css', array(), '5.1.0', 'all');
    wp_enqueue_style('custom', get_template_directory_uri().'/css/awesome.css', array(), '1.0.0', 'all');
    //js
    wp_enqueue_script('jquery');
    wp_enqueue_script('bootstrapjs', get_template_directory_uri().'/js/bootstrap.min.js', array(), '5.1.0', true);
    wp_enqueue_script('bootstrapjs', get_template_directory_uri().'/js/bootstrap.js', array(), '5.1.0', true);
    wp_enqueue_script('customjs', get_template_directory_uri().'/js/awesome.js', array(), '1.0.0', true);
}

add_action('wp_enqueue_scripts', 'awesome_script_enqueue');

/*
    ===============================
     Activate styles
    ===============================
*/

function theme_styles(){
    //wp_enqueue_style( 'custom', get_template_directory_uri() . '/css/awesome.css' );
}
add_action('wp_enqueue_scripts', 'theme_styles');
    /*
        ===============================
         Activate menus
        ===============================
    */

function awesome_theme_setup(){

    add_theme_support('menus');

    register_nav_menu('primary', 'Primary Header Navigation');
    register_nav_menu('secondary', 'Footer Navigation');

}

add_action('init', 'awesome_theme_setup');

/*
    ===============================
     Theme support function
    ===============================
*/

add_theme_support('custom-background');
add_theme_support('custom-header');
add_theme_support('post-thumbnails');
add_theme_support('post-formats', array('aside','image','video'));
add_theme_support('html5', array('search-form'));

/*
    ===============================
     Sidebar function
    ===============================
*/

function awesome_widget_setup(){

    register_sidebar(
        array(
            'name' => 'Sidebar',
            'id' => 'sidebar-1',
            'class' => 'sidebar-custom',
            'description' => 'Standard Sidebar',
            'before_widget' => '<aside id="%1$s" class="widget %2$s">',
            'after_widget' => '</aside>',
            'before_title' => '<h1 class="widget-title">',
            'after_title' => '</h1>',
        )
    );

}
add_action('widgets_init','awesome_widget_setup');

/**
 * Register Custom Navigation Walker
 */
function register_navwalker(){
    require_once get_template_directory() . '/class-wp-bootstrap-navwalker.php';
}
add_action( 'after_setup_theme', 'register_navwalker' );