<?php
/* @var $this yii\web\View */

use yii\helpers\Html;

?>
<h1>List Of News:</h1>
<br>
<?php echo  Html::a('Create', ['/news/create'], ['class'=>'btn btn-primary']) ?>
<br>

<?php foreach($data as $item):?>

<h3><?php echo $item->titles;?></h3>
<p><?php echo $item->text;?></p>
<h5>Author: <?php echo $item->authors->first_name.''.$item->authors->last_name;?></h5>
<hr>
<?php endforeach;?>