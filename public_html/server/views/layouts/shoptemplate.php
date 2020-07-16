<?php

use app\assets\AppAsset;
use yii\helpers\Html;

AppAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language; ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <?php $this->registerCsrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
</head>
<?php $this->beginBody() ?>
<body>
<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
        <a class="navbar-brand" href="#">GameStore</a>
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
                    <a class="nav-link" href="/cart/">Корзина ()</a>


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
