<?php

use app\components\MenuWidget;

?>
<h3 class="my-3">Категории</h3>
<div class="list-group">
    <?= MenuWidget::widget([
        'tpl' => 'menu'
    ]) ?>
</div>