<?php

namespace app\controllers;

//Include necesaries classes 
use Yii;
use app\models\News;

class NewsController extends \yii\web\Controller
{
    public function actionCreate()
	 {	
	 //Create object Class news
	 $news =new News();
	
	
			if(Yii::$app->request->post() && $news->save())
			{	
				Yii::$app->session->setFlash('success','News Added!!');
				return $this->refresh();	
				
			}
		       return $this->render('create',['news'=>$news]);
		
		
    }

    public function actionDelete()
    {
        return $this->render('delete');
    }

    public function actionIndex()
    {
        return $this->render('index');
    }

    public function actionUpdate()
    {
        return $this->render('update');
    }

}
