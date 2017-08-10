<%@ page contentType="text/html; charset=euc-kr" %>

<%@ page import="com.model2.mvc.service.domain.User" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>

<html>
<head>
<title>Model2 MVC Shop</title>

<link href="/css/left.css" rel="stylesheet" type="text/css">

<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
<script type="text/javascript">

	$(function(){
		
		//로그인 하기
		$( "td[width='115']:contains('login')" ).on("click" , function() {
			$(window.parent.frames["rightFrame"].document.location).attr("href","/user/login");
		});
	
		//로그아웃 하기
		$("td[width='56']:contains('logout')").on("click", function(){
			$(window.parent.document.location).attr("href","/user/logout");
		})
	});
	
	</script>
</head>

<body topmargin="0" leftmargin="0">
 
<table width="100%" height="50" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="800" height="30"><h2>Model2 MVC Shop</h2></td>
    <td height="30" >&nbsp;</td>
  </tr>
  <tr>
    <td height="20" align="right" background="/images/img_bg.gif">
	    <table width="200" border="0" cellspacing="0" cellpadding="0">
	        <tr> 
	          <td width="115">
	          <c:if test="${user eq null }">
	              login   
	          </c:if>
	          </td>
	          <td width="14">&nbsp;</td>
	          <td width="56">
	          <c:if test="${user ne null }">
	              logout  
	          </c:if>
	          </td>
	        </tr>
	    </table>
    </td>
    <td height="20" background="/images/img_bg.gif">&nbsp;</td>
  </tr>
</table>

</body>
</html>
