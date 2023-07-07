<?php
$joy_pic = get_template_directory_uri() . "/assets/me.png";
$frontend = get_template_directory_uri() . "/assets/front-end.png";
$backend = get_template_directory_uri() . "/assets/backend-big.png";
$framework = get_template_directory_uri() . "/assets/framework.png";
$design = get_template_directory_uri() . "/assets/design.png";
$database = get_template_directory_uri() . "/assets/database.png;"
    ?>

<?php get_header(); ?>

<script>
    window.addEventListener('load', () => {
        const arrows = document.querySelectorAll('#arrow');
        arrows.forEach((arrow) => {
            arrow.addEventListener('click', () => {
                arrow.classList.toggle('up');
                const journeyDetails = arrow.parentElement.nextElementSibling;
                journeyDetails.classList.toggle('show');
            });
        });
    });
</script>

<style>
    #arrow.up {
        transform: rotate(180deg);
        color: #fe4a1d;
    }

    .journey-details {
        display: none;
    }

    .journey-details.show {
        display: block;
        box-shadow: 2px 2px 2px lightgray;
        width: 100%;
        padding: 20px;
    }
    .skills img{
        width: 30px;
        height: 30px;
    }
    .main{
        background-color: white;
    }
</style>

<div class="main">
    <div class="homepage">
        <div class="home-content">
            <div class="me">
                <h1>Hi! I'm Joy Mwende Kairi</h1>
                <p>I am a full stack sofware developer, mobile developer and a graphic designer. I am
                    also a freelancer</p>
                <a href="/portfolio/contact-me"><button type="submit">Hire Me</button></a>
            </div>
            <div class="my-contact">
                <h2>Contact</h2>
                <p>+254 110 875 963, +254 706 330 213</p>
                <p>joymwendekairi@gmail.com</p>
            </div>
        </div>
        <div class="home">
        <!-- the orange div -->
        </div>
    </div>
    <div class="home-img">
        <img src="<?php echo $joy_pic; ?>" alt="joy">
    </div>

    <div class="skill-section">
        <div class="skills-header">
            <h1>Skills</h1>
        </div>
        <div class="skills">
            <div class="skill">
                <img src="<?php echo $frontend; ?>" alt="">
                <h4>Front-End Development</h4>
                <p>I have skills in <b>HTML, CSS</b> and <b>WordPress</b></p>
            </div>
            <div class="skill">
                <img src="<?php echo $backend; ?>" alt="">
                <h4>Back-End Development</h4>
                <p>I have skills in <b>PHP, Node Js, Redux, Python, Java</b> and <b>JavaScript</b> </p>
            </div>
            <div class="skill">
                <img src="<?php echo $framework; ?>" alt="">
                <h4>Frameworks</h4>
                <p>I have built projects with <b>React Js, Bootstrap</b> and <b>Tailwind</b></p>
            </div>
            <div class="skill">
                <img src="<?php echo $design; ?>" alt="">
                <h4>Design</h4>
                <p>I am a web designer. I believe the appearance of a website contributes to the happiness of a client.
                    I have skills in <b>Figma</b>
                </p>
            </div>
            <div class="skill">
                <img src="<?php echo $database; ?>" alt="">
                <h4>Database</h4>
                <p>I have used <b>MySQL</b> for databases. I have also used <b>XAMPP, MySQL Server Management Studio</b>, and <b>Wampp</b>
                    databases</p>
            </div>
        </div>
    </div>

    <div class="tech-journey mt-4">
        <section class="tech-title">
            <h1>My Tech Journey</h1>
        </section>
        <div class="alljourney">
            <div class="d-flex flex-column w-100">
                
                <div class="journey d-flex flex-row justify-content-between align-items-center p-2 ps-3 pe-3">
                    <div>
                        <p style="font-size: 1.25rem; font-weight: 500;">Started my career journey</p>
                    </div>
                   <div class="d-flex gap-2">
                     <h5>2018</h5>
                    <ion-icon id="arrow" name="chevron-down-outline"></ion-icon>
                   </div>
                </div>
                <div class="journey-details">
                    <p>Started my tech journey by learning computer packages at a cyber</p>
                </div>
            </div>

            <div class="d-flex flex-column w-100">
                <div class="journey d-flex flex-row justify-content-between align-items-center p-2 ps-3 pe-3">
                    <div>
                        <p style="font-size: 1.25rem; font-weight: 500;">Joined Campus</p>
                    </div>
                    <div  class="d-flex gap-2">
                        <h5>2019</h5>
                    <ion-icon id="arrow" name="chevron-down-outline"></ion-icon>
                    </div>
                </div>
                <div class="journey-details">
                    <p>I pursued Bachelor of Business Information Technology in Dedan Kimathi
                        University
                        of Technology in Nyeri main campus</p>
                </div>
            </div>

            <div class="d-flex flex-column w-100">
                <div class="journey d-flex flex-row justify-content-between align-items-center p-2 ps-3 pe-3">
                     <div>
                        <p style="font-size: 1.25rem; font-weight: 500;">First Project</p>
                    </div>
                    <div  class="d-flex gap-2">
                    <h5>2020</h5>
                    <ion-icon id="arrow" name="chevron-down-outline"></ion-icon>
                    </div>
                </div>
                <div class="journey-details">
                    <p>Developed the first software using HTML, CSS, PHP, JavaScript and MySQL. It was a group project.
                        The
                        software was a website to report missing people.</p>
                </div>
            </div>
            <div class="d-flex flex-column w-100">
                <div class="journey d-flex flex-row justify-content-between align-items-center p-2 ps-3 pe-3">
                     <div>
                        <p style="font-size: 1.25rem; font-weight: 500;">Went to attachment and did fourth year project</p>
                    </div>
                    <div  class="d-flex gap-2">
                    <h5>2022</h5>
                    <ion-icon id="arrow" name="chevron-down-outline"></ion-icon>
                    </div>
                </div>
                <div class="journey-details">
                    <h6>January - March</h6>
                    <p>Joined The Jitu Company in Nyeri as an attachee. I gained skills in React Js, Node Js and Redux.
                    </p>
                    <h6>June -December</h6>
                    <p>Did my fourth year project where I developed a website to report faulty machines in Nyeri County
                        Referral
                        Hospital. I developed the software using React JS, Node Js, Redux, JavaScript and MySQL.</p>
                </div>
            </div>
            <div class="d-flex flex-column w-100">
                <div class="journey d-flex flex-row justify-content-between align-items-center p-2 ps-3 pe-3">
                     <div>
                        <p style="font-size: 1.25rem; font-weight: 500;">Graduated and joined an internship program</p>
                    </div>
                    <div  class="d-flex gap-2">
                    <h5>2023</h5>
                    <ion-icon id="arrow" name="chevron-down-outline"></ion-icon>
                    </div>
                </div>
                <div class="journey-details">
                    <h6>January - March</h6>
                    <p>Started teaching myself Java, Python and C programming languages.</p>
                    <h6>March</h6>
                    <p>Participated in a python hackathon. The problem was to identify the presence of carbon in the
                        atmosphere.</p>
                    <h6>April 28</h6>
                    <p>Graduated with second class upper division</p>
                    <h6>April - June</h6>
                    <p>Joined the Jitu Company as a software developer trainee. I gained skills in WordPress.</p>
                </div>
            </div>
        </div>
    </div>
</div>

<?php get_footer(); ?>