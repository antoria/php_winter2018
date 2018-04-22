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
          <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
            <h1>Hello !</h1>
            <p>Welcome to our session project ! The team members are:</p>
            <ul>
              <li>Dorian ANTOINET</li>
              <li>Aymeric DAVIAS</li>
              <li>Victor DELENCLOS</li>
            </ul>
            <p>We hope our work will meet your expectations !</p>
              {if isset($loggedin) && $loggedin == TRUE}
              <p>PS: You are logged in !</p>
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