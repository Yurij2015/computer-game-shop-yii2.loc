<?php

use yii\helpers\Html;
use yii\helpers\Url;
use yii\widgets\LinkPager;

?>
<h3 class="my-3">Игры категории: <?= $category['title'] ?></h3>
<div class="row">
    <?php if (!empty($products)) : ?>
        <?php foreach ($products as $product): ?>
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="card h-100">
                    <a href="<?= Url::to(['product/view', 'id' => $product->id]) ?>">
                        <?= Html::img("@web/{$product->img}", ['alt' => $product->title, 'class' => 'card-img-top']) ?>
                    </a>
                    <div class="card-body">
                        <h5 class="card-title">
                            <a href="<?= Url::to(['product/view', 'id' => $product->id]) ?>"><?= $product->title ?></a>
                        </h5>
                        <p class="card-text"><?= $product->price ?></p>
                    </div>
                    <div class="card-footer">
                        <a href="<?= Url::to(['cart/add', 'id' => $product->id]) ?>"
                           class="btn btn-outline-primary btn-sm float-right add-to-cart" data-id="<?= $product->id ?>">В
                            корзину</a>
                    </div>
                </div>
            </div>
        <?php endforeach; ?>
        <!--        <div class="clearfix"></div>-->
        <div class="col-md-12">
            <?= LinkPager::widget([
                'pagination' => $pages,
                'nextPageLabel' => 'Вперед',
                'prevPageLabel' => 'Назад',
                'pageCssClass' => 'page-item',
                'linkOptions' => ['class' => 'page-link'],
            ]) ?>
        </div>

    <?php else: ?>
        <div class="col-lg-12 col-md-12 mb-12">
            <h5>В этой категории еще нет игр!</h5>
        </div>
    <?php endif; ?>
</div>
<!-- /.row -->