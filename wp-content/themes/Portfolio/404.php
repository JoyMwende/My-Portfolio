<?php
$sad = get_template_directory_uri() . "/assets/sad.jpeg"
?>
<?php get_header(); ?>

<div class="pagenotfound">
    <img src="<?php echo $sad; ?>" alt="">
    <h2>404 Error</h2>
    <p>Sorry this page does not exist!</p>
</div>

<?php get_footer(); ?>