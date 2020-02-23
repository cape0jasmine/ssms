<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script language="javascript" type="text/javascript">

    window.onload = function () {
      showTime();     //网页一加载就调用showTime()函数；
    }

    function checkTime(i) {  //补位处理
      if (i < 10) {
        i = "0" + i;     //当秒分小于10时，在左边补0；
      }
      return i;
    }

    function showTime() {
      var now = new Date();
      var year = now.getFullYear();
      var month = now.getMonth() + 1; //js获取的月份是从0开始；
      var day = now.getDate();
      var h = now.getHours();
      var m = now.getMinutes();
      var s = now.getSeconds();
      m = checkTime(m)
      s = checkTime(s)

      var weekday = new Array(7)
      weekday[0] = "星期日"
      weekday[1] = "星期一"
      weekday[2] = "星期二"
      weekday[3] = "星期三"
      weekday[4] = "星期四"
      weekday[5] = "星期五"
      weekday[6] = "星期六"
      var w = weekday[now.getDay()]; //js获取的星期是0~6,0是星期天；
      document.getElementById("show").innerHTML = "" + year + "年" + month + "月" + day + "日 " + w + "  " + h + ":" + m + ":" + s;
      t = setTimeout('showTime()', 500)
    }

  </script>
</head>
<body>

<div title="欢迎使用" style="padding:20px;overflow:hidden; color:red; " >
	<p style="font-size: 50px; line-height: 60px; height: 60px;">${systemInfo.schoolName}</p>
	<p style="font-size: 25px; line-height: 30px; height: 30px;">欢迎使用${systemInfo.schoolName}学生成绩管理系统</p>
  	<p>系统时间：	<span id="show"></span></p>
  	<p>学校简介：重庆南开中学（Chongqing Nankai Middle School）是南开系列学校之一、南开校友总会成员 [1]  、重庆市首批市级重点示范中学，是重庆市窗口学校。自建校以来，重庆南开中学就因爱国和教学质量高而闻名。抗战期间，毛泽东、周恩来、华莱士等政要多次光临南开中学，重庆南开是抗战时期中国基础教育的典范。 [2] 
重庆南开中学由爱国教育家张伯苓创办于1936年，初名“重庆私立南渝中学”；1937年10月，学校接管“自贡私立蜀光中学”；1938年12月，学校更名为“重庆私立南开中学”；1952年12月，学校由私立改为公立；1953年，更名为“重庆第三中学”；1984年5月，学校复名“重庆南开中学”。
截至2012年11月，重庆南开中学共有两个校区（校本部、融侨校区），占地面积291197平方米，共有151个教学班，在校学生8787人，共有教职工586人。
2017年11月，获评第一届全国文明校园。 [3] 
自2015年秋季学期起，重庆市南开中学校停止初中招生。
2015年，重庆市南开中学校移交沙坪坝区教育委员会管理。</p>
  	
  	<hr />
  	<h2>系统环境</h2>
  	<p>系统环境：Windows</p>
	<p>开发工具：Eclipse</p>
	<p>Java版本：JDK 1.8</p>
	<p>服务器：tomcat 8.0</p>
	<p>数据库：MySQL 5.7</p>
	<p>系统采用技术： Servlet+Jsp+Jdbc+EasyUI+jQuery+Ajax</p>
</div>
</body>
</html>