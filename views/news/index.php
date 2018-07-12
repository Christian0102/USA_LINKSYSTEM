<?php
/* @var $this yii\web\View */

use yii\helpers\Html;
use yii\helpers\Url;
use yii\widgets\LinkPager;

?>
<h1>News:</h1>
<br>
<?php echo  Html::a('Create', ['/news/create'], ['class'=>'btn btn-primary']) ?>
<br>

<?php foreach($data as $item):?>
<div class="col-md-10">
<a href="<?php echo Url::to(['news/view','id'=>$item->id])?>"><h3><?php echo $item->titles;?></h3></a>
<p><?php echo $item->text;?></p>
Data of added:<p><?php echo $item->time;?></p>
Modified date:<p><?php echo $item->modified_time;?></p>
<h4>Author: <?php echo $item->authors->name;?></h4>
</div>
<?php endforeach;?>

<div class=col-xs-5>
<?php echo LinkPager::widget([
    'pagination' => $pages,
]);?>
</div>