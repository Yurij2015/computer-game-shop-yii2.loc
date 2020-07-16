<?php
/**
 * Created by PhpStorm.
 * File: HomeController.php
 * Date: 16/07/2020
 * Time: 23:32
 */

namespace app\controllers;


class HomeController extends AppController
{
    function actionIndex()
    {
        return $this->render('index');
    }
}