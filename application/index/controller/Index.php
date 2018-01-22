<?php
namespace app\index\controller;

use think\Controller;   // 用于与V层进行数据传递
use app\common\model\Album;
//use app\common\model\User;
use app\common\model\Photo;

use think\Db;   // 引用数据库操作类

class Index extends Controller
{
    public function index()
    {
    	// echo "hello";
    	// var_dump(Db::name('album')->select()); //获取数据表中第一条数据

    	// $Teacher = new Photo;
     	// dump($Teacher);

    	$Album=new Album;
    	$albums=$Album->select();
    	$this->assign('albums',$albums);



        // // //处理天气
        // // header('Content-type:text/html;charset=utf-8');
        // // include 'class.juhe.weather.php'; //引入天气请求类
        // //接口基本信息配置
        // $appkey = '8835b136eb646c1a660dfc5abb52da8f'; //您申请的天气查询appkey
        // $weather = new \weather\weather($appkey);
        

        // $cityWeatherResult = $weather->getWeather('杭州');
        // if($cityWeatherResult['error_code'] == 0){    //以下可根据实际业务需求，自行改写
        //     //////////////////////////////////////////////////////////////////////
        //     $data = $cityWeatherResult['result'];
        //     echo "=======当前天气实况=======<br>";
        //     echo "温度：".$data['sk']['temp']."    ";
        //     echo "风向：".$data['sk']['wind_direction']."    （".$data['sk']['wind_strength']."）";
        //     echo "湿度：".$data['sk']['humidity']."    ";
        //     echo "<br><br>";
         
        //     echo "=======未来几天天气预报=======<br>";
        //     foreach($data['future'] as $wkey =>$f){
        //         echo "日期:".$f['date']." ".$f['week']." ".$f['weather']." ".$f['temperature']."<br>";
        //     }
        //     echo "<br><br>";
         
        //     echo "=======相关天气指数=======<br>";
        //     echo "穿衣指数：".$data['today']['dressing_index']." , ".$data['today']['dressing_advice']."<br>";
        //     echo "紫外线强度：".$data['today']['uv_index']."<br>";
        //     echo "舒适指数：".$data['today']['comfort_index']."<br>";
        //     echo "洗车指数：".$data['today']['wash_index'];
        //     echo "<br><br>";
         
        // }else{
        //     echo $cityWeatherResult['error_code'].":".$cityWeatherResult['reason'];
        // }





    	$htmls=$this->fetch();
    	return $htmls;
        // return 'hello world';
    }

}
