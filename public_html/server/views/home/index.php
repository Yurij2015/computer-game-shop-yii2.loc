<div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
        <div class="carousel-item active">
            <img class="d-block img-fluid" src="images/slider/Slide1.jpg" alt="First slide">
        </div>
        <div class="carousel-item">
            <img class="d-block img-fluid" src="images/slider/Slide2.jpg" alt="Second slide">
        </div>
        <div class="carousel-item">
            <img class="d-block img-fluid" src="images/slider/Slide3.jpg" alt="Third slide">
        </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>do
    </a>
</div>
<div class="row">
    <?php foreach ($products as $product): ?>
        <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
                <a href="<?= \yii\helpers\Url::to(['product/view', 'id' => $product->id]) ?>">
                    <?= \yii\helpers\Html::img("@web/game_images/$product[img]", ['alt' => $product['title'], 'class' => 'card-img-top']) ?>
                </a>
                <div class="card-body">
                    <h5 class="card-title">
                        <a href="<?= \yii\helpers\Url::to(['product/view', 'id' => $product->id]) ?>"><?= $product->title ?></a>
                    </h5>
                    <h5></h5>
                    <p class="card-text">555</p>
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