<?php
/**
 * Template Name: Contact Page
 */

$contact = get_template_directory_uri() . "/assets/type.jpeg";

global $wpdb;
global $successmsg;
global $errormsg;
$successmsg = false;
$errormsg = false;

$table_name = $wpdb->prefix . 'contact_form';

$contact_details = "CREATE TABLE IF NOT EXISTS " . $table_name . "(
    id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    full_name text NOT NULL,
    email text NOT NULL,
    subject text NOT NULL,
    message text NOT NULL
);";
require_once(ABSPATH . 'wp-admin/includes/upgrade.php');
dbDelta($contact_details);

$fullNameError = $emailError = $subjectError = $messageError = '';
$fullName = '';
$email = '';
$subject = '';
$message = '';

if (isset($_POST['contactme'])) {
    //validation
    if (empty($_POST['full_name'])) {
        $fullNameError = "Name is required!";
    } else {
        $fullName = test_input($_POST['full_name']);
    }

    if (empty($_POST['email'])) {
        $emailError = "Email is required!";
    } else {
        $email = test_input($_POST['email']);
        if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
            $emailError = "Invalid email format!";
        }
    }

    if (empty($_POST['subject'])) {
        $subjectError = "Subject is required!";
    } else {
        $subject = test_input($_POST['subject']);
    }

    if (empty($_POST['message'])) {
        $messageError = "Please type a message";
    } else {
        $message = test_input($_POST['message']);
    }

    //check for errors
    if (!$fullNameError && !$emailError && !$subjectError && !$messageError) {
        //no errors, insert data into the database
        $contactmsg = array(
            'full_name' => $fullName,
            'email' => $email,
            'subject' => $subject,
            'message' => $message,
        );
        $msg = $wpdb->insert($table_name, $contactmsg);
        if ($msg === false) {
            $errormsg = true;
        } else {
            $successmsg = true;
            $_POST['full_name'] = '';
            $_POST['email'] = '';
            $_POST['subject'] = '';
            $_POST['message'] = '';
        }
    }
}

get_header();
?>

<div class="contact-page">
    <!-- Display success message -->
    <?php if ($successmsg) : ?>
        <div class="alert alert-success" role="alert" id="successalert">
            Message sent successfully!
        </div>
        <script>
            document.getElementById("successalert").style.display = "flex";
            setTimeout(function() {
                document.getElementById("successalert").style.display = "none";
            }, 3000);
        </script>
    <?php endif; ?>

    <!-- Display error message -->
    <?php if ($errormsg) : ?>
        <div class="alert alert-danger" role="alert" id="erroralert">
            Message not sent! Please try again.
        </div>
        <script>
            document.getElementById("erroralert").style.display = "flex";
            setTimeout(function() {
                document.getElementById("erroralert").style.display = "none";
            }, 3000);
        </script>
    <?php endif; ?>

    <div class="contact-img w-100">
        <img class="img-fluid" src="<?php echo $contact; ?>" alt="contact">
    </div>
    <div class="bg-light w-75 m-auto d-flex flex-column mt-5 p-4">
        <form action="<?php esc_url($_SERVER["REQUEST_URI"]); ?>" method="post">
            <h1>Contact Me</h1>
            <p style="color: red;"><span class="error">* required field</span></p>
            <div class="form-group mb-2">
                <label class="mb-1">Name<span style="color: red;">*</span></label>
                <input type="text" class="form-control" name="full_name" placeholder="Input your full name">
                <span class="error" style="color: red;"><?php if($fullNameError){ echo $fullNameError;} ?></span>
            </div>
            <div class="form-group mb-2">
                <label class="mb-1">Email<span style="color: red;">*</span></label>
                <input type="email" class="form-control" name="email" placeholder="name@example.com">
                <span class="error" style="color: red;"><?php  if($emailError){ echo $emailError;} ?></span>
            </div>
            <div class="form-group mb-2">
                <label class="mb-1">Subject<span style="color: red;">*</span></label>
                <input type="text" class="form-control" name="subject" placeholder="Input the subject of your message here">
                <span class="error" style="color: red;"><?php if($subjectError){ echo $subjectError;} ?></span>
            </div>
            <div class="form-group mb-4">
                <label class="mb-1">Message<span style="color: red;">*</span></label>
                <textarea class="form-control" name="message" rows="3" placeholder="Type your message here"></textarea>
                <span class="error" style="color: red;"><?php if($messageError){ echo $messageError;} ?></span>
            </div>
            <div>
                <button class="contactbtn" name="contactme" type="submit">Send</button>
            </div>
        </form>
    </div>
</div>

<?php get_footer(); ?>