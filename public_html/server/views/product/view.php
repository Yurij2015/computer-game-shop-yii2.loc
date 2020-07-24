<?php
use yii\helpers\Html;
?>
<div class="card mt-4 mb-4">
    <?= Html::img("@web/game_images/{$product->img}", ['alt' => $product->title, 'class' => 'card-img-top']) ?>
    <div class="card-body">
        <h3 class="card-title"><?= $product['title'] ?> </h3>
        <h4><?= $product['price'] ?> р. </h4>
        <p class="card-text"><?= $product['description'] ?></p>
        <a href="#" class="btn btn-outline-primary btn-sm float-right">В корзину</a>
    </div>
</div>