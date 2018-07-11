<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "authors".
 *
 * @property int $id
 * @property string $first_name
 * @property string $last_name
 */
class Authors extends \yii\db\ActiveRecord
{
    public static function tableName()
    {
        return 'authors';
    }
	
}
