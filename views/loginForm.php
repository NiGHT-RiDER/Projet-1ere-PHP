    <form method="post">
       <div class="row"> 
            <div class="four columns">
                <!-- columns used to separate menu from the form-->

            <img src="views/images/logo.jpg" class="u-max-full-width"></img>
                <br> </br>
            </div>
            <div class="eight columns">
                <?php  echo $notification?>
                <br></br>
                <br></br>
                <label for="login_form">Votre login</label>
                <input class="" type="text" placeholder="login" name="username">
                <label for="password">Votre mot de passe</label>
                <input class="" type="password" placeholder="mot de passe" name="password">
                <br></br>
                <input class="button-primary" type="submit" value="Se connecter">    
            </div>
       </div> 
    </form>
