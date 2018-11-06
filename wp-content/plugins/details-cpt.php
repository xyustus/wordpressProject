<?php
/**
 * @package Hello_cpt
 * @version 1
 */
/*
Plugin Name: details cpt
Plugin URI: http://wordpress.org/plugins/
Description: This is not just a plugin, it symbolizes the hope and enthusiasm of an entire generation summed up in two words sung most famously by Louis Armstrong: Hello, Dolly. When activated you will randomly see a lyric from <cite>Hello, Dolly</cite> in the upper right of your admin screen on every page.
Author: jhon Doe
Version: 1
Author URI: http://ma.tt/
*/


function my_the_post_action( $post_object, $query ) {
	// modify post object here


global $wp;
$needle = home_url(add_query_arg($_GET,$wp->request));
$pos = strpos($needle, '?');
$text = substr($needle, $pos+1); ?>
<?php if($text == 'post_type=film' /*&& WP_Query::is_main_query()*/
) : ?>
	<span> Ticket Price: </span> <?php echo get_post_meta($post_object->ID, 'price', true); ?>
	<br>
			<span> Release Date: </span> <?php echo get_post_meta($post->ID, 'release', true); ?>
			<br>
			<?php the_terms( $post->ID, 'Genre', 'Genre: ', ' / ' ); ?>
			<br>
			<?php the_terms( $post->ID, 'Country', 'Country: ', ' / ' ); ?>

<?php endif; ?>
<?php

}
//add_action( 'the_post', 'my_the_post_action' );




function search_filter($query) {


   if( $query->is_main_query() )
    {
        add_action( 'the_post', 'my_the_post_action' );
        add_action( 'loop_end', 'wpse_141253_loop_end' );
    }
	return $query;

}

add_filter('loop_start','search_filter');

function wpse_141253_loop_end()
{
    remove_action( 'the_post', 'my_the_post_action' );   
}

add_filter('pre_get_posts','better_editions_archive');

function better_editions_archive( $query ) {

    
}



?>