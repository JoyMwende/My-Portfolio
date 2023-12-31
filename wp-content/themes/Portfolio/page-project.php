<?php

/**
 * Template Name: Project Page
 */

global $wpdb;

$table_name = $wpdb->prefix . 'projects';

$id = $_GET['id'];

$project = $wpdb->get_row("SELECT * FROM $table_name WHERE ID = $id");

get_header();

?>

<div class="d-flex justify-content-center align-items-center m-4">
    <div class="w-50">
        <img src="<?php echo $project->project_image; ?>" alt="" style="height: 100%; width: 90%;">
    </div>
    <div class="w-50">
        <h3>
            <?php echo $project->project_title; ?>
        </h3>
        <p>
            <?php echo $project->project_desc; ?>
        </p>
        <section>
            <p><b>Technologies Used: </b></p>
            <div class="tech">
                <p>
                    <?php echo $project->technology_used; ?>
                </p>
            </div>
        </section>
        <a href="<?php echo $project->github_link; ?>" target="_blank">Github Link</a>
    </div>
</div>