<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Portfolio</title>
    <?php wp_head(); ?>
</head>
<?php
if (is_front_page()) :
    $portfolio_class = ['portfolio-home-class', 'my-class-portfolio'];
else :
    $portfolio_class = ['other-portfolio-class', 'portfolio-other-class'];
endif;
?>

<body>
    <script>
        window.addEventListener('load', ()=>{
            let menu_content = document.querySelector('#new-nav-content');
            let togglebutton = document.querySelector('#hamburger');

            togglebutton.addEventListener('click', ()=>{
                if(menu_content.style.display == 'none'){
                    menu_content.style.display = "block";
                }else{
                    menu_content.style.display = 'none';
                }
            })
        })
    </script>

    <?php
        $menu = get_template_directory_uri() . "/assets/menu-small.png";
    ?>
    <nav class="nav">
        <div class="nav-title">
            <h3>JOY MWENDE</h3>
        </div>
        <div class="nav-content" id="menus">
            <a href="/portfolio/">Home</a>
            <a href="/portfolio/about-me">About Me</a>
            <a href="/portfolio/my-projects">Projects</a>
        </div>
        <div class="nav-contact" id="menus">
            <a href="/portfolio/contact-me"><button type="submit">Contact Me</button></a>
        </div>
        <div class="menu">
            <img src="<?php echo $menu; ?>" alt="" id="hamburger">
        </div>
    </nav>
    <div id="new-nav-content">
        <div class="nav-content" id="menus">
            <a href="/portfolio/">Home</a>
            <a href="/portfolio/about-me">About Me</a>
            <a href="/portfolio/my-projects">Projects</a>
        </div>
        <div class="nav-contact" id="menus">
            <a href="/portfolio/contact-me"><button type="submit">Contact Me</button></a>
        </div>
    </div>
    <!-- <hr> -->
