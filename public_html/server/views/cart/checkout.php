<?php

use app\widgets\Alert;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\widgets\ActiveForm;

if (!empty($session['cart'])):
?>
<h3 class="my-3">Оформление заказа</h3>
<div class="row">
    <div class="table-responsive cart-table">
        <div class="overlay">
            <i class="fa fa-refresh fa-spin"></i>
        </div>
        <table class="table table-hover table-striped">
            <thead>
            <tr>
                <th>Номер</th>
                <th>Наименование</th>
                <th>Изображение</th>
                <th>Кол-во</th>
                <th>Цена</th>
                <th><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></th>
            </tr>
            </thead>
            <tbody>
            <?php $i = 1;
            foreach ($session['cart'] as $id => $item):
                ?>
                <tr>
                    <td><?= $i ?></td>
                    <td><?= $item['title'] ?></td>
                    <td>
                        <?= Html::img("@web/{$item['img']}", ['alt' => $item['title'], 'height' => 50]) ?>
                    </td>
                    <td><?= $item['qty'] ?></td>
                    <td><?= $item['price'] ?></td>
                    <td><a href="<?= Url::to(['cart/del-item', 'id' => $id]) ?>"
                           class="text-danger del-item" style="text-decoration: none"
                           aria-hidden="true">Удалить</a></td>
                </tr>
                <?php $i++; endforeach ?>
            <tr>
                <td colspan="5">Итого:</td>
                <td id="cart-qty"><?= $session['cart.qty'] ?> </td>
            </tr>
            <tr>
                <td colspan="5">На сумму:</td>
                <td id="cart-sum"><?= $session['cart.sum'] ?> ₽</td>
            </tr>
            </tbody>
        </table>
        <hr>
    </div>
    <div class="col-md-12">
        <h4>Форма заказа</h4>
        <?php $form = ActiveForm::begin() ?>
        <?= $form->field($order, 'name') ?>
        <?= $form->field($order, 'email') ?>
        <?= $form->field($order, 'phone') ?>
        <?= $form->field($order, 'address') ?>
        <?= $form->field($order, 'note')->textarea(['rows' => 5]) ?>
        <?= Html::submitButton('Заказать', ['class' => 'btn btn-primary float-right']) ?>
        <?php ActiveForm::end() ?>
    </div>
    <?php else: ?>
        <h3 class="my-3">Корзина пуста</h3>
    <?php endif; ?>
</div>
<hr>

