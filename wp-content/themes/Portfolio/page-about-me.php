<?php

/**
 * Template Name: About Page
 */

 $me = get_template_directory_uri() . '/assets/me.png';
 get_header();
?>

<div class="d-flex justify-content-center align-items-center">
    <div >
        <img src="<?php echo $me; ?>" alt="" class="rounded-circle">
    </div>
    <div class="about d-flex flex-column justify-content-center align-items-center p-3">
        <h1 class="text-center mb-3">About Me</h1>
        <p>I am a full stack software developer. I believe I can solve the world's problems using her coding
            skills. I am always to motivated to achieve the set goal and deliver quality work. When I was at my 
            fourth year, I had to do both class work and the final year project. There were times where I had a lot of 
            pressure on the work to do but I did not quit. I was motivating myself that I have to excel in everything 
            no matter the amount of pressure and I did excel.
            I am a good time manager. During my fourth year, I was supposed to do my classwork and the project concurrently.
            I had to manage my time and decide when to focus on classwork and when to focus on my project. I had to balance
            my time between the two in order to excel in both.
            I am passionate in whatever I do. I always aim at making the clients happy. I believe that if you have not satisfied
            the clients' needs then there is no productivity.
        </p>
    </div>
</div>

<?php get_footer(); ?>