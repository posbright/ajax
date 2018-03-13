/**
 * 
 */
/*function createXmlHttp() {
  var xmlHttp = null;
    
  try {
    //Firefox, Opera 8.0+, Safari
    xmlHttp = new XMLHttpRequest();
  } catch (e) {
    //IE
    try {
      xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
    } catch (e) {
      xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
  }
    
  return xmlHttp;
}*/

function createXMLHttp(){
        var xmlHttp;
        if(window.XMLHttpRequest){
            xmlHttp = new XMLHttpRequest();
        }
        if(window.ActiveXObject){
            try{
                xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
            }catch(e){
                xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
            }
        }
        return xmlHttp;
    }
  
function submitForm(formId) {
  var xmlHttp = createXMLHttp();
  if(!xmlHttp) {
    alert("您的浏览器不支持AJAX！");
    return 0;
  }
   
  
  var postData = "";
  postData = "username=" + document.getElementById('username').value;
  postData += "&time=" + Math.random();
  var url = 'ajaxTest?'+postData; 
  xmlHttp.open("post", url, true);
  xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
  xmlHttp.onreadystatechange = function() {
    if(xmlHttp.readyState == 4 && xmlHttp.status == 200) {
    	document.write(xmlHttp.responseText);
      if(xmlHttp.responseText == '1') {
        alert('post successed');
      }
    }
  }
  xmlHttp.send(postData);
}

function createXmlH(){
	var xmlHttp;
	
	if(window.XMLHttpRequest){
		xmlHttp = new XMLHttpRequest();
	}
	if(window.ActiveXObject){
		xmlHttp = new ActiveXOject("microsoft.XMLHTTP");
	}
}

