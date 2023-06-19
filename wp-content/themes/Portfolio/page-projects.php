<?php

/**
 * Template Name: Projects Page
 */


global $wpdb;

$table_name = $wpdb->prefix . 'projects';

$projects = $wpdb->get_results("SELECT * FROM $table_name");
get_header();
?>



<div>
    <h3 class="text-center mt-2">Projects</h3>
    <div class="projects">
        <?php
            foreach ($projects as $project){
        ?>
        <a href="/portfolio/project?id=<?php echo $project->ID; ?>">
            <article class="project">
                <div class="project-img">
                    <img src="<?php echo $project->project_image; ?>"alt="">
                </div>
                <div class="project-header">
                    <p><?php echo $project->project_title; ?></p>
                </div>
            </article>
        </a>

        <?php } ?>
    </div>
</div>

<?php get_footer(); ?>