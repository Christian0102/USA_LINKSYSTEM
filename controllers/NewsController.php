<?php

namespace app\controllers;

//Include necesaries classes 
use Yii;
use app\models\News;
use app\models\Authors;
use yii\data\Pagination;

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
		//Create Object Find
		$query=News::find();
		//Clone object find for calculated total count
		$countQuery = clone $query;
		//Create paginating class
		$pages = new Pagination(['totalCount' => $countQuery->count(),'pageSize' => 5]);
		$data = $query->offset($pages->offset)
        ->limit($pages->limit)
        ->all();
		//Rendering data
        return $this->render('index',['data'=>$data,'pages'=>$pages,]);
		
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
