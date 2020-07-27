<?php


namespace app\controllers;


use app\models\Cart;
use app\models\Order;
use app\models\Product;
use Yii;

class CartController extends AppController
{
    public function actionAdd($id)
    {
        $product = Product::findOne($id);
        if (empty($product)) {
            return false;
        }

        $session = \Yii::$app->session;
        $session->open();
        $cart = new Cart();
        $cart->addToCart($product);
        if (\Yii::$app->request->isAjax) {
            return $this->renderPartial('cart-modal', compact('session'));
        }

        return $this->redirect(\Yii::$app->request->referrer);
    }

    public function actionShow()
    {
        $session = \Yii::$app->session;
        $session->open();
        return $this->renderPartial('cart-modal', compact('session'));
    }

    public function actionDelItem()
    {
        $id = \Yii::$app->request->get('id');
        $session = \Yii::$app->session;
        $session->open();
        $cart = new Cart();
        $cart->renewcart($id);
        if (\Yii::$app->request->isAjax) {
            return $this->renderPartial('cart-modal', compact('session'));

        }
        return $this->redirect(\Yii::$app->request->referrer);
    }

    public function actionClear()
    {
        $session = \Yii::$app->session;
        $session->open();
        $session->remove('cart');
        $session->remove('cart.qty');
        $session->remove('cart.sum');
        return $this->renderPartial('cart-modal', compact('session'));

    }

    public function actionCheckout()
    {
        $this->setMeta("Оформление заказа :: " . Yii::$app->name);
        $session = \Yii::$app->session;
        $order = new Order();
        return $this->render('checkout', compact('session', 'order'));
    }

}