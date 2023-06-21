<?php
$joy_pic = get_template_directory_uri() . "/assets/me.png"
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
            <div class="frontend">
                <h3>Front-End Development</h3>
                <p>I have skills in HTML, CSS and WordPress</p>
            </div>
            <div class="backend">
                <h3>Back-End Development</h3>
                <p>I have skills in PHP, Node Js, Redux, Python, Java and JavaScript</p>
            </div>
            <div class="framework">
                <h3>Frameworks</h3>
                <p>I have built projects with React Js, Bootstrap and Tailwind</p>
            </div>
            <div class="design">
                <h3>Design</h3>
                <p>I am a web designer. I believe the appearance of a website contributes to the happiness of a client.</p>
            </div>
            <div class="database">
                <h3>Database</h3>
                <p>I have used MySQL for databases. I have also used XAMPP, MySQL Server Management Studio, and Wampp databases</p>
            </div>
        </div>
    </div>

    <div class="tech-journey">
        <section class="tech-title">
            <h1>My Tech Journey</h1>
        </section>
        <div class="alljourney">
            <div class="d-flex flex-column w-100">
                <div class="journey d-flex flex-row justify-content-between align-items-center p-2 ps-3 pe-3">
                    <h5>2018</h5>
                    <ion-icon id="arrow" name="chevron-down-outline"></ion-icon>
                </div>
                <div class="journey-details">
                    <p>Started my tech journey by learning computer packages at a cyber</p>
                </div>
            </div>

            <div class="d-flex flex-column w-100">
                <div class="journey d-flex flex-row justify-content-between align-items-center p-2 ps-3 pe-3">
                    <h5>2019</h5>
                    <ion-icon id="arrow" name="chevron-down-outline"></ion-icon>
                </div>
                <div class="journey-details">
                    <p>Started my career by pursuing Bachelor of Business Information Technology in Dedan Kimathi University
                    of Technology in Nyeri main campus</p>
                </div>
            </div>

            <div class="d-flex flex-column w-100">
                <div class="journey d-flex flex-row justify-content-between align-items-center p-2 ps-3 pe-3">
                    <h5>2020</h5>
                    <ion-icon id="arrow" name="chevron-down-outline"></ion-icon>
                </div>
                <div class="journey-details">
                    <p>Developed the first software using HTML, CSS, PHP, JavaScript and MySQL. It was a group project. The
                    software was a website to report missing people.</p>
                </div>
            </div>
            <div class="d-flex flex-column w-100">
                <div class="journey d-flex flex-row justify-content-between align-items-center p-2 ps-3 pe-3">
                    <h5>2022</h5>
                    <ion-icon id="arrow" name="chevron-down-outline"></ion-icon>
                </div>
                <div class="journey-details">
                    <h6>January - March</h6>
                    <p>Joined The Jitu Company in Nyeri as an attachee. I gained skills in React Js, Node Js and Redux.</p>
                    <h6>June -December</h6>
                    <p>Did my fourth year project where I developed a website to report faulty machines in Nyeri County Referral
                    Hospital. I developed the software using React JS, Node Js, Redux, JavaScript and MySQL.</p>
                </div>
            </div>
            <div class="d-flex flex-column w-100">
                <div class="journey d-flex flex-row justify-content-between align-items-center p-2 ps-3 pe-3">
                    <h5>2023</h5>
                    <ion-icon id="arrow" name="chevron-down-outline"></ion-icon>
                </div>
                <div class="journey-details">
                    <h6>January - March</h6>
                    <p>Started teaching myself Java, Python and C programming languages.</p>
                    <h6>March</h6>
                    <p>Participated in a python hackathon. The problem was to identify the presence of carbon in the
                    atmosphere.</p>
                    <h6>April - June</h6>
                    <p>Joined the Jitu Company as a software developer trainee. I gained skills in WordPress.</p>
                </div>
            </div>
        </div>
    </div>
</div>

<?php get_footer(); ?>