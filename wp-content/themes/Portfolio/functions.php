<?php

function portfoliotheme_enqueue_scripts(){
    //adding custom styling
    wp_enqueue_style('style', get_template_directory_uri() . '/style.css', [], '1.0', 'all');
    wp_enqueue_script('main-script', get_template_directory_uri() . '/script.js', [], false, true);
    
    //bootstrap
    wp_register_style('bootstrapcss', 'https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css', [], '5.2.3', 'all');
    wp_enqueue_style('bootstrapcss');

    wp_register_script('bootstrapjs', 'https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js', [], '5.2.3', false);
    wp_enqueue_script('bootstrapjs');
}
add_action('wp_enqueue_scripts', 'portfoliotheme_enqueue_scripts');

//add header and footer
function portfoliotheme_setup(){
    add_theme_support('menus');
    register_nav_menu('primary', 'Primary Header');
    register_nav_menu('secondary', 'Footer Navigation');
}

//add navwalker
if (!file_exists(get_template_directory() . '/class-wp-bootstrap-navwalker.php')) {
    return new WP_Error('class-wp-bootstrap-navwalker-missing', __('It appears the class-wp-bootstrap-navwalker.php file may be missing.', 'wp-bootstrap-navwalker'));
} else {
    require_once get_template_directory() . '/class-wp-bootstrap-navwalker.php';
}

add_action('init', 'portfoliotheme_setup');

function test_input($data) {
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data, ENT_QUOTES, 'UTF-8');

    return $data;
}

// //create custom post type for projects
// function projects_post_type(){
//     $fields = [
//         'name' => 'Projects',
//         'singular_name' => 'Project',
//         'add_new' => 'Add New Project',
//         'all_items' => 'All Projects',
//         'add_new_item' => 'Edit Item',
//         'new_item' => 'New Item',
//         'view_item' => 'View Item',
//         'search_item' => 'Search Projects',
//         'not_found' => 'No Projects Found',
//         'not_found_in_trash' => 'No Projects Found in Trash',
//         'parent_item_colon' => 'Parent Item'
//     ];

//     $args = [
//         'labels' => $fields,
//         'public' => true,
//         'has_archive' => true,
//         'publicly_queryable' => true,
//         'query_var' => true,
//         'rewrite' => true,
//         'capability' => 'post',
//         'hierarchical' => false,
//         'menu_icon' => 'dashicons-portfolio',
//         'supports' => ['title', 'editor', 'thumbnail', 'excerpt', 'revisions'],
//         'taxonomies' => [
//             'category',
//             'post_tag',
//             'menu_position' => 5,
//             'exclude_from_search' => false
//             ]
//     ];
    
//     register_post_type('projects', $args);
// }
// add_action('init', 'projects_post_type');
?>