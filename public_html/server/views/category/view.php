<?php

use yii\helpers\Html;
use yii\helpers\Url;

?>
<h3 class="my-3">Товары категории: <?= $category['title'] ?></h3>
<div class="row">
    <?php if (!empty($products)) : ?>
        <?php foreach ($products as $product): ?>
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="card h-100">
                    <a href="<?= Url::to(['product/view', 'id' => $product->id]) ?>">
                        <?= Html::img("@web/game_images/{$product->img}", ['alt' => $product->title, 'class' => 'card-img-top']) ?>
                    </a>
                    <div class="card-body">
                        <h5 class="card-title">
                            <a href="<?= Url::to(['product/view', 'id' => $product->id]) ?>"><?= $product->title ?></a>
                        </h5>
                        <p class="card-text"><?= $product->price ?></p>
                    </div>
                    <div class="card-footer">
                        <a href="/cart/add/ttttt"
                           class="btn btn-outline-primary btn-sm float-right">В корзину</a>
                    </div>
                </div>
            </div>
        <?php endforeach; ?>

    <?php else: ?>
        <div class="col-lg-12 col-md-12 mb-12">
            <h5>В этой категории еще нет игр!</h5>
        </div>
    <?php endif; ?>
</div>
<!-- /.row -->