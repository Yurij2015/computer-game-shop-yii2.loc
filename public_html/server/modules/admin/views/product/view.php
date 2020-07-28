<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\modules\admin\models\Product */

$this->title = $model->title;
$this->params['breadcrumbs'][] = ['label' => 'Игры', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="row">
    <div class="col-md-12">
        <div class="box">
            <div class="box-header with-border">
                <?= Html::a('Обновить', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
                <?= Html::a('Удалить', ['delete', 'id' => $model->id], [
                    'class' => 'btn btn-danger',
                    'data' => [
                        'confirm' => 'Are you sure you want to delete this item?',
                        'method' => 'post',
                    ],
                ]) ?>
            </div>
            <div class="box-body">
                <div class="product-view">
                    <?= DetailView::widget([
                        'model' => $model,
                        'attributes' => [
                            'id',
//                            'category_id',
                            [
                                'attribute' => 'category_id',
                                'value' => $model->category->title
                            ],
                            'title',
                            'content:raw',
                            'price',
//                            'old_price',
                            'description',
                            'keywords',
//                            'img',
                            [
                                'attribute' => 'img',
                                'value' => $model->img ? "/game_images/$model->img" : "/game_images/no-image.jpg",
                                'format' => "image",
                            ],
//                            'is_offer',
                        ],
                    ]) ?>

                </div>
            </div>
        </div>
    </div>
</div>