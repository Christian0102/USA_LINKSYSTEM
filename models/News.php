<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "News".
 *
 * @property int $id
 * @property string $titles
 * @property string $text
 * @property string $time
 * @property string $modified_time
 * @property int $id_author
 */
class News extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'list';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['titles', 'text'], 'required'],
            [['text'], 'string','min'=>50],
            [['titles'], 'string','min'=>4],
            [['time', 'modified_time'], 'safe'],
            [['id_author'], 'integer'],
            [['titles'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'titles' => 'Titles',
            'text' => 'Text',
            'time' => 'Time',
            'modified_time' => 'Modified Time',
            'id_author' => 'Id Author',
        ];
    }
	
		public function getAuthors()
		{
			
		return $this->hasOne(Authors::className(),['author_id'=>'id']);	
		}
}
