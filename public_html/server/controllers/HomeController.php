<?php
/**
 * Created by PhpStorm.
 * File: HomeController.php
 * Date: 16/07/2020
 * Time: 23:32
 */

namespace app\controllers;


use app\models\Product;

class HomeController extends AppController
{
    function actionIndex()
    {
        $products = Product::find()->asArray()->all();
        return $this->render('index', compact('products'));
    }
}