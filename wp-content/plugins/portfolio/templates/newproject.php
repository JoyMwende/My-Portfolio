<div class="bg-light pt-5 pb-5">
    <?php
        global $successmsg;
        $successmsg;

        global $errormsg;
        $errormsg;
        ?>
    <!-- Display success message -->
    <?php if ($successmsg) : ?>
        <div class="alert alert-success" role="alert" id="successalert">
            Project Added successfully!
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
            Project not added! Please try again.
        </div>
        <script>
            document.getElementById("erroralert").style.display = "flex";
            setTimeout(function() {
                document.getElementById("erroralert").style.display = "none";
            }, 3000);
        </script>
    <?php endif; ?>
    <div class=" bg-white d-flex flex-column justify-content-start align-items-start m-auto p-2 shadow-sm w-50">
        <?php //add_project_to_db(); ?>
        <form action="" method="post" class="p-4">
            <h2>Add New Project</h2>
            <div class="d-flex flex-column justify-content-start align-items-start">
                <label class="mb-2">Project Title</label>
                <input type="text" class="mb-3" name="project_title" id="" placeholder="Enter Project Title" style="width: 37vw; border: 1px solid lightgray; height: 40px;">
            </div>
            <div class="d-flex flex-column justify-content-start align-items-start">
                <label class="mb-2">Project Description</label>
                <textarea class="mb-3" name="project_desc" rows="4" placeholder="Enter Project Description" style="width: 37vw; border: 1px solid lightgray;"></textarea>
            </div>
            <div class="d-flex flex-column justify-content-start align-items-start">
                <label class="mb-2">Technologies Used</label>
                <input type="text" class="mb-3" name="technology_used" id="" placeholder="Enter Technologies Used" style="width: 37vw; border: 1px solid lightgray; height: 40px;">
            </div>
            <div class="d-flex flex-column justify-content-start align-items-start">
                <label class="mb-2">Project Image</label>
                <input type="taxt" class="mb-3" name="project_image" id="" placeholder="Enter Image url" style="width: 37vw; border: 1px solid lightgray; height: 40px;">
            </div>
            <div>
                <button class="btn btn-primary" name="addprojectbtn" type="submit" style="width: 200px; height: 40px; margin-left: 10vw;">Add Project</button>
            </div>
        </form>
    </div>
</div>