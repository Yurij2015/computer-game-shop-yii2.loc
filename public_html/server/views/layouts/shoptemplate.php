<?php

use app\assets\AppAsset;
use yii\helpers\Html;
use yii\helpers\Url;

AppAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language; ?>">
<head>
    <base href="/">
    <meta charset="<?= Yii::$app->charset ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <?php $this->registerCsrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
</head>
<?php $this->beginBody() ?>
<body>
<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
        <a class="navbar-brand" href="<?= Url::home() ?>">GameStore</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"
                aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="/">Главная
                        <span class="sr-only">(current)</span>
                    </a>
                </li>
                <li class="nav-item">
                    <!--                    <a class="nav-link" href="/about/">О магазине</a>-->
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/catalog/">Каталог</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#" onclick="getCart()" data-toggle="modal" data-target="#modal-cart">Корзина
                        (<span class="cart-sum"><?= $_SESSION['cart.sum'] ?? '0' ?> ₽</span>)</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/user/login/">Вход</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/cabinet/">Кабинет</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/user/logout/">Выход</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- The Modal -->
<div class="modal" id="modal-cart">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title">Корзина</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <!-- Modal body -->
            <div class="modal-body">

            </div>
            <!-- Modal footer -->
            <div class="modal-footer">
                <button type="button" class="btn btn-outline-primary" data-dismiss="modal">Продолжить покупки</button>
                <a href="<?= Url::to('cart/checkout') ?>" class="btn btn-success">Оформить заказ</a>
                <button type="button" onclick="clearCart()" class="btn btn-danger">Очистить корзину</button>
            </div>
        </div>
    </div>
</div>

<!-- Page Content -->
<div class="container" style="margin-bottom: 130px;">
    <div class="row">
        <div class="col-lg-3">
            <?= $this->render('/layouts/sidebar'); ?>
        </div>
        <!-- /.col-lg-3 -->
        <div class="col-lg-9">
            <?= $content; ?>
        </div>
        <!-- /.col-lg-9 -->
    </div>
    <!-- /.row -->
</div>
<!-- /.container -->
<!-- Footer -->
<footer class="py-5 bg-dark fixed-bottom">
    <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; GameStore <?= date("Y") ?> Магазин компьютерных игр</p>
    </div>
    <!-- /.container -->
</footer>

<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
