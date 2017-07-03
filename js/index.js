/**
 * Created by bjwsl-001 on 2017/6/9.
 */
//轮播背景

//1.随机函数
//function rn(min,max){
//    return Math.floor(Math.random()*(max-min)+min);
//}
//function rc(min,max){
//    var r=rn(min,max);
//    var g=rn(min,max);
//    var b=rn(min,max);
//    return `rgb(${r},${g},${b})`;
//}

//function lunbo(){
//    var bgColors=['284996','60c6dc','000','c4bd63','9e0203','ba57ff','d6e9ed','000'];
//    var ol=$('carousel-indicators');
//    //console.log(ol);
//    if(item.hasClass('active')){
//      var  index=$(this.index);
//    }
//
//    var cssColor="#"+bgColors[index];
//    $('#carouselCtrl').css({
//        "background-color":cssColor
//    });
//}
// lunbo();
//
//
var ctx = canvasMusic.getContext('2d');
var txt = '新碟上架';
ctx.font = '20px SimHei';
ctx.textBaseline = 'top';
ctx.fillStyle = '#333';
var w = ctx.measureText(txt).width;
var x = -w;
var y =0;
setInterval(function(){
    //清除已有内容
    ctx.clearRect(0,0, 700, 50);
    //重新绘制文本
    ctx.fillText(txt, x, y);
    x += 10;
    if(x>=700){   //文本已到最右侧
        x = -w;
    }
}, 150);
var app=angular.module('myApp',['ng']);
app.run(function ($http) {
        $http.defaults.headers.post = {
            'Content-Type':
                'application/x-www-form-urlencoded'
        }}
);
app.controller('pagerCtrl',['$scope','$http',function($scope,$http){
	//下载客户端
	$scope.download=function(){
		window.location.href="demo07.apk";
		console.log('fkjgkd');
	}
    //获取热门推荐
    $scope.product=function(pageNo){
        $http.post('data/hot_list2.php?pageNo='+pageNo,pageNo)
            .success(function (data) {
                $scope.list=data;
            })
            .error(function () {
                console.log(arguments);
            });
        $http.post('data/hot_list1.php')
            .success(function (data) {
                $scope.page=data.page;
                $scope.arr=[];
                for(var i=1;i<=$scope.page;i++){
                    $scope.arr.push(i);
                }
            })
            .error(function () {
                console.log(arguments);
            });
    };
    $scope.product(1);
    $scope.pager=function(tmp){
        $scope.product(tmp);
    };
    //点击播放音乐
    $scope.ifShow=false;
    $scope.handleClick=function(tmp){
       $scope.mp3=$scope.list[tmp].hmusic;
        $scope.name=$scope.list[tmp].sing;
        console.log($scope.name,$scope.mp3);
        $scope.ifShow=true;
    };
    //登录和注册
    $scope.loginShow=false;
    $scope.registerShow=false;
    //登录表单提交
    $scope.submitLogin=function(){
        var result='uname='+$scope.uname+'&upwd='+$scope.upwd;
        console.log(result);
        $http.get('data/login.php?'+result)
            .success(function (data) {
               alert(data);
                sessionStorage['loginUname'] = $scope.uname;
                location.href = 'index.html';
            })
            .error(function () {
                console.log(arguments);
            });
    };
    //注册表单提交
    $scope.submitRegister=function(){
        var info='uname='+$scope.regName+'&email='+$scope.regEmail+'&upwd='+$scope.regPwd;
        console.log(info);
        $http.post('data/register.php?'+info)
            .success(function (data) {
                alert(data);
                location.href = 'index.html';
            })
            .error(function () {
                console.log(arguments);
            });
    };
    $scope.user_name=sessionStorage['loginUname'];
    //点击登录和注册出现模态框
    $scope.login=function(){
        $scope.loginShow=true;
    };
    $scope.register=function(){
        $scope.registerShow=true;
    };
    //点击关闭图标关闭登录和注册
    $scope.closel=function(){
        $scope.loginShow=false;
    }
    $scope.closeR=function(){
        $scope.registerShow=false;
    }
}]);