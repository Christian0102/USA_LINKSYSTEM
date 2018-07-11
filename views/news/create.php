<?php 
/* $model  app\models\News */

use yii\helpers\Html;
use yii\helpers\ArrayHelper;
use yii\widgets\ActiveForm;

?>
<?php $form = ActiveForm::begin();?>
<?php echo  $form->field($news,'titles'); ?>
<?php echo  $form->field($news,'text')->textArea(['rows' => '6']); ?>
<?php echo  $form->field($news,'id_author')->dropDownList(ArrayHelper::map($authors, 'author_id', 'name'),['prompt' => 'Select Authors']); ?>


<?php echo Html::submitButton('Save',['class'=>'btn btn-primary']);?>
<?php ActiveForm::end() ?>