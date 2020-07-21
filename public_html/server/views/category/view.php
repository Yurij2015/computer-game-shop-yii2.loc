<h3 class="my-3">Товары категории: <?=$category['title']?></h3>
<div class="row">
    <?php foreach ($products as $product): ?>
        <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
                <a href="<?= \yii\helpers\Url::to(['product/view', 'id' => $product->id]) ?>">
                    <?= \yii\helpers\Html::img("@web/game_images/{$product->img}", ['alt' => $product->title, 'class' => 'card-img-top']) ?>
                </a>
                <div class="card-body">
                    <h5 class="card-title">
                        <a href="<?= \yii\helpers\Url::to(['product/view', 'id' => $product->id]) ?>"><?= $product->title ?></a>
                    </h5>
                    <h5></h5>
                    <p class="card-text"><?= $product->price ?></p>
                </div>
                <div class="card-footer">
                    <a href="/cart/add/ttttt"
                       class="btn btn-outline-primary btn-sm float-right">В корзину</a>
                </div>
            </div>
        </div>
    <?php endforeach; ?>
</div>
<!-- /.row -->