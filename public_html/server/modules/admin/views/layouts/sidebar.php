<?php

use yii\helpers\Url;

?>
<aside class="main-sidebar">

    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">

        <!-- Sidebar user panel (optional) -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
                <p> <?= Yii::$app->user->identity->username ?> </p>
            </div>
        </div>

        <!-- Sidebar Menu -->
        <ul class="sidebar-menu" data-widget="tree">
            <li class="header">МЕНЮ</li>
            <!-- Optionally, you can add icons to the links -->
            <li class="active"><a href="<?= Url::to(['main/index']) ?>"><i class="fa fa-bar-chart"></i> <span>Статистика магазина</span></a>
            </li>
            <li><a href="<?= Url::to(['order/index']) ?>"><i class="fa fa-shopping-cart"></i> <span>Заказы</span></a>
            </li>
        </ul>
        <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
</aside>
