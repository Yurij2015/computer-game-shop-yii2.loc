<h3 class="my-3">Категории</h3>
<div class="list-group">
    <a href="/category/" class="list-group-item" style="text-decoration: none;">Пункт 1 </a>
    <a href="/category/" class="list-group-item" style="text-decoration: none;">Пункт 2 </a>
    <a href="/category/" class="list-group-item" style="text-decoration: none;">Пункт 3 </a>
    <?= \app\components\MenuWidget::widget([
        'tpl' => 'menu',
        'div_class' => 'list-group',
    ]) ?>
</div>