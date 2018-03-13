<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="name_form.js"></script>
</head>


<body>
  <form action="process.php" id="ajax_form">
    Username:<input type="text" name="username" id="username"/><br>
    <input type="button" onclick="submitForm('name_form')" value="Submit">
  </form>
  <div id="tip"></div>

</body>
</html>