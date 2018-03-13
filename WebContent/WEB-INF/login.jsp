<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>注册界面</title>
<!-- <script type="text/javascript">
        function xmlhttp(obj) {
            var xmlhttp;
            if(window.XMLHttpRequest){
                xmlhttp = new XMLHttpRequest();
            }else{
                xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
            }
            xmlhttp.onreadystatechange = function () {
                if(xmlhttp.readyState==4&&xmlhttp.status==200){
                    var data = xmlhttp.responseText
                    data = eval("("+data+")");
                    if(data.state==1){
                        document.getElementById("mg").style.color ="red";
                    }else{
                        document.getElementById("mg").style.color = "green";
                    }
                }
                document.getElementById("mg").innerHTML = data.mess;
            }
            xmlhttp.open("get","/ajaxtt/reg?m="+obj.value,true);
            xmlhttp.send();
        }
    </script> -->
<script type="text/javascript" src="js/jquery-1.11.2.js"></script>
<script type="text/javascript">
	function xmlhttp(obj) {
		var param = "ajaxTest?name=" + obj.value;
		$.ajax({
			url : param,

			type : "get",
			dataType : "json",
			contentType : 'application/x-www-form-urlencoded; charset=UTF-8',//防止乱码
			success : function(data) {
				alert(data.name);
				
				alert(data.time);
				if (data.state == 1) {
					document.getElementById("mg").style.color = "red";
				} else {
					document.getElementById("mg").style.color = "green";
				}
				/*  document.getElementById("mg").innerHTML = data.mess; */
				$("#mg").append("<span>" + data.name + "</span>");
				
			}
		});
	}
</script>
</head>
<body>
<input type="text" onchange="xmlhttp(this)" id="mess"><span id="mg"></span>
</body>
</html>

