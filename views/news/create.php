<?php 
/* $model  app\models\News */

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use app\models\Authors;
use yii\helpers\ArrayHelper;

?>
<?php $form = ActiveForm::begin();?>
<?php echo  $form->field($news,'titles'); ?>
<?php echo  $form->field($news,'text')->textArea(['rows' => '6']); ?>
<?php echo  $form->field($news,'id')->dropDownList(ArrayHelper::map(Authors::find()->all(), 'author_id', 'first_name','last_name')); ?>


<?php echo Html::submitButton('Save',['class'=>'btn btn-primary']);?>
<?php ActiveForm::end() ?>