<?php
/* @var $this yii\web\View */

use yii\helpers\Html;
use yii\helpers\Url;

?>
<h1>News number:<?php echo $model->id;?></h1>
<br>
<?php echo  Html::a('Create', ['/news/create'], ['class'=>'btn btn-primary']) ?>
<br>

<div class="col-md-10">
<a href="<?php echo Url::to(['news/view','id'=>$model->id])?>"><h3><?php echo $model->titles;?></h3></a>
<p><?php echo $model->text;?></p>
<h5>Date of added:<p><?php echo $model->time;?></p></h5>
<br></br>
<h5>Date modifed:<p><?php echo $model->modified_time;?></p></h5>
<h4>Author: <?php echo $model->authors->name;?></h4>
<a href="<?php echo Url::to(['news/update','id'=>$model->id])?>">Update </a>
<a href="<?php echo Url::to(['news/delete','id'=>$model->id])?>">Delete </a>
</div>


