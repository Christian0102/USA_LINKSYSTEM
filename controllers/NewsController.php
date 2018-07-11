<?php

namespace app\controllers;

//Include necesaries classes 
use Yii;
use app\models\News;
use app\models\Authors;

class NewsController extends \yii\web\Controller
{
	//public $enableCsrfValidation = false;
	
	
    public function actionCreate()
	  {

		//$this->enableCsrfValidation = false;
	  
	 //Create object Class news
	 $news = new News();
	 //Create object authors
	 $authors = Authors::find()->all();
		
			if($news->load(Yii::$app->request->post()) && $news->save())
			{	
				Yii::$app->session->setFlash('success','News Added!!');
				return $this->redirect(['news/index']);	
				
			}
			
		       return $this->render('create',['news'=>$news,
			   'authors'=>$authors]);
		
		
    }

    public function actionDelete($id)
    {
		
		$model =News::findOne()->delete();
		
        return $this->render('index');
    }

    public function actionIndex()
    { 
		$news = new News();
		$data=$news->find()->all();
				
        return $this->render('index',['data'=>$data]);
    }

    public function actionUpdate($id)
    {
		$news = News::findOne($id);
		$authors = Authors::find()->all();
		
		if($news->load(Yii::$app->request->post()) && $news->save())
		{	
		Yii::$app->session->setFlash('success','Data Update Success!!');
			return $this->redirect(['news/index']);	
				
			}
			
		       return $this->render('update',['news'=>$news,'authors'=>$authors]);
		
    }

	public function actionView($id)
	{
		$model = News::findOne($id);
		
		return $this->render('view',['model'=>$model]);
	
	}
}
