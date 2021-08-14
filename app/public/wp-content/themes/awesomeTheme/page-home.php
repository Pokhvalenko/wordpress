<?php get_header(); ?>

<div class="row">

    <div class="col-xs-12">

    <div id="awesome-carousel" class="carousel slide" data-ride="carousel">
        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <?php

                $args_cat = array(
                    'include' => '6, 7, 8'
                );

                $categories = get_categories($args_cat);
                $count = 0;
                $bullets = '';
                foreach ($categories as $category):

                    $args = array(
                        'type' => 'post',
                        'posts_per_page' => 1,
                        'category__in' => $category->term_id,
                        'category__not_in' => array(9),
                    );

                    $lastBlog = new WP_Query($args);

                    if ($lastBlog->have_posts()):

                        while ($lastBlog->have_posts()): $lastBlog->the_post(); ?>

                            <div class="carousel-item <?php if ($count == 0): echo 'active'; endif; ?>">
                                <?php the_post_thumbnail('full'); ?>
                                <div class="carousel-caption d-none d-md-block">
                                    <?php the_title(sprintf('<h1 class="entry-title"><a href="%s">', esc_url(get_permalink())),'</a></h1>'); ?>
                                    <small><?php the_category(' '); ?></small>
                                </div>
                            </div>

                            <?php $bullets .= '<li data-target="#awesome-carousel" data-slide-to="'.$count.'" 
                            class="';?>
                            <?php if ($count == 0): $bullets .= 'active'; endif; ?>
                            <?php $bullets .= '"></li>'; ?>

                        <?php: endwhile;

                    endif;

                    wp_reset_postdata();

                $count++;
                endforeach;
            ?>

            <!--Indiсators-->
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#awesome-carousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#awesome-carousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#awesome-carousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
        <!-- Controls-->
        <a class="carousel-control-prev" href="#awesome-carousel" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only"></span>
        </a>
        <a class="carousel-control-next" href="#awesome-carousel" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only"></span>
        </a>
    </div>
    </div>
</div>

<div class="row">

    <div class="col-xs-12 col-sm-8">

        <?php

        if(have_posts()):

            while (have_posts()): the_post();?>

                <?php get_template_part('content', get_post_format()); ?>

            <?php endwhile;

        endif;

        //PRINT OTHER 2 POSTS NOT THE FIRST ONE
/*
        $args = array(
            'type' => 'posts',
            'posts_per_page' => 2,
            'offset' => 1,
        );

        $lastBlog = new WP_Query($args);

        if( $lastBlog->have_posts() ):

            while ($lastBlog->have_posts()): $lastBlog->the_post();?>

                <?php get_template_part('content', get_post_format()); ?>

            <?php endwhile;

        endif;

        wp_reset_postdata();
*/
        ?>

        <!--<hr>-->

        <?php

        //PRINT ONLY TUTORIALS
 /*       $lastBlog = new WP_Query('type=post&posts_per_page=-1&category_name=reviews');

        if( $lastBlog->have_posts() ):

            while ($lastBlog->have_posts()): $lastBlog->the_post();?>

                <?php get_template_part('content', get_post_format()); ?>

            <?php endwhile;

        endif;

        wp_reset_postdata();
*/
        ?>

    </div>

    <div class="col-xs-12 col-sm-4">

        <?php get_sidebar(); ?>

    </div>

</div>

<?php get_footer(); ?>