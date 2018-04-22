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
            <h1>Products page</h1>
            <div class="table-responsive">
              <table class="table">
                <thead>
                  <tr>
                      <th>ID</th>
                      <th>Name</th>
                      <th>Price</th>
                      <th>Description</th>
                      <th>Image</th>
                      {if isset($loggedin) && $loggedin == TRUE}
                      <th>Options</th>
                      {/if}
                  </tr>
                </thead>
                  {foreach from=$view.results item=product}
                    <tr>
                        <td>{$product.id}</td>
                        <td>{$product.name}</td>
                        <td>{$product.price}</td>
                        <td>{$product.description}</td>
                        <td> <img src="/lightmvctest/public/img/{$product.image}" alt="{$product.image}" height="100" width="100"></td>
                        {if isset($loggedin) && $loggedin == TRUE}
                        <td>
                            <a href="/lightmvctest/public/index.php/product/edit/?id={$product.id}">Modify</a>
                        </td>
                        <td>
                            <a href="/lightmvctest/public/index.php/product/delete/?id={$product.id}">Delete</a>
                        </td>
                        {/if}
                    </tr>
                  {/foreach}
              </table>
            </div>
              {if isset($loggedin) && $loggedin == TRUE}
            <p><a href="/lightmvctest/public/index.php/product/add/">Add new product</a></p>
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