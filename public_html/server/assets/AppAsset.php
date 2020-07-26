<?php
/**
 * @link http://www.yiiframework.com/
 * @copyright Copyright (c) 2008 Yii Software LLC
 * @license http://www.yiiframework.com/license/
 */

namespace app\assets;

use yii\web\AssetBundle;

/**
 * Main application asset bundle.
 *
 * @author Qiang Xue <qiang.xue@gmail.com>
 * @since 2.0
 */
class AppAsset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    public $css = [
        'css/site.css',
        'bootstrap/css/bootstrap.min.css',
        'css/shop-homepage.css',
        'css/font-awesome-4.7.0/css/font-awesome.css',

    ];
    public $js = [
        'jquery/jquery.min.js',
        'bootstrap/js/bootstrap.bundle.min.js',
        'js/main.js',
    ];
    public $depends = [
        'yii\web\YiiAsset',
    ];
}
