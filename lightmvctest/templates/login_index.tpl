<!DOCTYPE html>
<html lang="en">

{if isset($view.headjs)}
{include file='headjs.tpl'}
{else}
{include file='head.tpl'}
{/if}

  <body>
  {include file='navbar.tpl'}

    <div class="container">
      <div class="row">
        <div id="pageBody">
          <div class="main">
            <h1>Login page</h1>

              {if isset($loggedin) && $loggedin == TRUE}
                <form action="{$view.links.Login}/logout" method="post">
                  <div class="form-group col-xs-3">
                    <button type="submit" name="submit" id="submit" class="btn btn-lg btn-primary btn-block btn-signin col-xs-2">Logout</button>
                  </div>
                </form>
              {else}
                  {if isset($view.verify) && $view.verify == 1}
                    <div class="alert-success"><p>Successful authentification !</p></div>
                  {else}
                      {if isset($view.verify) && $view.verify == 0}
                        <div class="alert-danger"><p>Wrong credentials. Please try again.</p></div>
                      {/if}
                    <form action="{$view.links.Login}/login" method="post">
                      <div class="form-group col-xs-3">
                        <input type="text" placeholder="Username" name="username" id="username" class="form-control" required autofocus>
                        <input type="password" placeholder="Password" name="password" id="password" class="form-control" required>
                        </br> </br>

                        <button type="submit" name="submit" id="submit" class="btn btn-lg btn-primary btn-block btn-signin col-xs-2">Login</button>
                      </div>
                    </form>
                  {/if}
              {/if}
          </div>
        </div> <!-- END pageBody -->
      </div>
    </div>

{if $view.bodyjs == 1}
{include file='bodyjs.tpl'}
{/if}

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="js/ie10-viewport-bug-workaround.js"></script>
    
  </body>
</html>