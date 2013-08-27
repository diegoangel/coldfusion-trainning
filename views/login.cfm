<p>Ingrese su usuario y contraseña</p>

<div id="formMessages"></div>

<form action="/" name="loginForm" id="loginForm" method="POST">
    <fieldset>
        <legend>Form Login</legend>
        <input type="hidden" name="cmp" value="UserController">
        <input type="hidden" name="fn" value="login">        
        <input type="text" id="username" name="username" value=""/>
        <input type="password" id="passwd" name="passwd" value="">

        <button type="submit" class="btn btn-primary">Submit</button>
    </fieldset>
</form>    
