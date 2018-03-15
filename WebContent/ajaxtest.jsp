<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- <script type="text/javascript" src="name_form.js"></script> -->
<script type="text/javascript" src="./js/jquery-1.11.2.js"></script>
</head>


<body>
  <form action="process.php" id="ajax_form">
    Username:<input type="text" name="username" id="username"/><br>
    <input type="button" onclick="submitForm()" value="提交">
    <input type="button" onclick="submit1()" value="提交1">
    <input type="button" onclick="submit2()" value="提交2">
  </form>
  <div id="tip"></div>
<script type="text/javascript">

	function submitForm(){
		//获取输入的数据
		var name=document.getElementById("username").value;
		$.ajax({//使用jquery中的封装的方法进行异步交互
			   type: "POST",
			   url: "ajaxTest",//服务器相对地址
			   data: "name="+name+"&location="+new Date(),//需要提交到后台的数据
			   success: function(msg){//成功之后调用的函数，data为服务器传回的数据
			     alert( "Data Saved: " + msg );
			   }
			});
	}
	
	/* 使用jquery 中的get方法实现ajax异步交互 */	
	function submit1(){
		var name=document.getElementById("username").value;//获取输入中的值
		$.get("ajaxTest", { name: name, time: new Date() },/* 第一个参数指定服务器地址，第二个指定传输的数据 */
		          function(data){//回调函数，data为从服务器中获取的数据
		          alert("Data Loaded: " + data);
		});
	}
	
	/* 使用jquery中的post 方法进行ajax异步交互 */
	function submit2() {
		var name=document.getElementById("username").value;
		$.post("ajaxTest", { "name": name },  //第一个参数是服务器地址，第二个是传递到后台的数据
		          function(data){ //回调函数，以及回调函数传过来的数据
		          alert(data.name);  
		          console.log(data.time); 
		          }, "json");//json 为返回数据的格式
	}
</script>
</body>
</html>