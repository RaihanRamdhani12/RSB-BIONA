<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="<?= base_url(); ?>/css/model.css">
    </head>

    <body>
        <div class="login-page">
            <div class="form">
                <form action="<?= base_url() ?>/contact_proses" method="post">
                    <input type="text" id="username" name="username" placeholder="name" />
                    <input type="password" id="pass" name="password" placeholder="password" />
                    <button>create</button>
                    <p class="message">Already registered? <a href="#">Sign In</a></p>
                </form>
                <div class="login-form">
                    <form action="<?= base_url(); ?>/proses_login" method="post" enctype="multipart/form-data">
                        <input type="text" placeholder="username" id="username" name="username" />
                        <input type="password" placeholder="password" id="password" />
                        <button>login</button>
                        <p class="message">Not registered? <a href="#">Create an account</a></p>
                    </form>
                </div>
            </div>
            <script>
            $('.message a').click(function() {
                $('form').animate({
                    height: "toggle",
                    opacity: "toggle"
                }, "slow");
            });
            </script>
    </body>

</html>