<?php 
function last_movies( $atts ) {
	global $post;
	$args = array( 'posts_per_page' => 5, 'order'=> 'DESC', 'orderby' => 'date','post_type'=>'film' );
	$postslist = get_posts( $args );
	foreach ( $postslist as $post ) :
	  setup_postdata( $post ); ?> 
		<div>
			<?php the_date(); ?>
			<br />
			<li><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></li>   
			<?php the_excerpt(); ?>
		</div>
	<?php
	endforeach; 
	wp_reset_postdata();
}

add_shortcode( 'lastmovies', 'last_movies' );
?>