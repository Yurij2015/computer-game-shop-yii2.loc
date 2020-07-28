<?php

use yii\helpers\Html;
use yii\helpers\Url;

?>
<div class="card mt-4 mb-4">

    <?php if ($product->img) : ?>
        <?= Html::img("@web/game_images/{$product->img}", ['alt' => $product->title, 'class' => 'card-img-top']) ?>
    <?php else: ?>
        <?= Html::img("@web/game_images/no-image.jpg", ['alt' => $product->title, 'class' => 'card-img-top']) ?>
    <?php endif; ?>

    <div class="card-body">
        <h3 class="card-title"><?= $product['title'] ?> </h3>
        <h4><?= $product['price'] ?> р. </h4>
        <p class="card-text"><?= $product['description'] ?></p>
        <span class="card-text"><?= $product['content'] ?></span>

        <a href="<?= Url::to(['cart/add', 'id' => $product->id]) ?>"
           class="btn btn-outline-primary btn-sm float-right add-to-cart" data-id="<?= $product->id ?>">В корзину</a>
    </div>
</div>