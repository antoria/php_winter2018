<?php

namespace Application\Controllers;

session_start();

use \Ascmvc\AbstractApp;
use \Ascmvc\Mvc\Controller;

class IndexController extends Controller {
    
    public static function config(AbstractApp &$app)
    {
        $baseConfig = $app->getBaseConfig();
        
        $view = [
            'logo' => $baseConfig['URLBASEADDR'] . 'img/logo.png',
            'favicon' => $baseConfig['URLBASEADDR'] . 'favicon.ico',
            'appname' => $baseConfig['appName'],
            'title' => "Session Project",
            'author' => 'Dorian, Aymeric, Victor',
            'description' => 'Small CRUD application',
            'css' =>
            [
                $baseConfig['URLBASEADDR'] . 'css/bootstrap.min.css',
                $baseConfig['URLBASEADDR'] . 'css/dashboard.css',
                $baseConfig['URLBASEADDR'] . 'css/bootstrap.custom.css',
                $baseConfig['URLBASEADDR'] . 'css/dashboard.css',
                
            ],
            'js' =>
            [
                $baseConfig['URLBASEADDR'] . 'js/jquery.min.js',
                $baseConfig['URLBASEADDR'] . 'js/bootstrap.min.js',
                
            ],
            'jsscripts' =>
            [
                //"<script>\n\t\tfunction getPage(page) {\n\n\t\t\tvar url = page;\n\n\t\t\tjq( \"#pageBody\" ).load( url );\n\n\t\t}\n\t</script>\n",
        
            ],
            'links' =>
            [
                'Home' => $baseConfig['URLBASEADDR'] . 'index.php',
                'Login' => $baseConfig['URLBASEADDR'] . 'index.php/login',
                'Products' => $baseConfig['URLBASEADDR'] . 'index.php/product',
                
            ],
            'navMenu' =>
            [
                'Home' => $baseConfig['URLBASEADDR'] . 'index.php',

            ],

        ];
        
        $app->appendBaseConfig('view', $view);
    }

    public function indexAction()
    {
        $this->view['bodyjs'] = 1;

        $this->viewObject->assign('view', $this->view);
        if($_SESSION['LOGGEDIN'] == TRUE)
        {
            $this->viewObject->assign('loggedin', $_SESSION['LOGGEDIN']);
        }
        $this->viewObject->display('index_index.tpl');
    }
}