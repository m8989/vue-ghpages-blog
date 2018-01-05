<!--#include file="e_show.vb.asp" -->
<!--#include file="../news/in_About.asp" -->
<html>
<head>
<title><%=This_Site_Name%></title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head>
<body bgcolor="#ffffff" leftmargin="0" topmargin="0" rightmargin="0" bottommargin="0">
<table border="0" cellpadding="0" cellspacing="0" width="1004">
  <tr>
   <td><!--#include file="../en/top.asp" --></td>
  </tr>
  <tr>
   <td><table align="left" border="0" cellpadding="0" cellspacing="0" width="1004">
	  <tr>
	   <td width="20" height="474" bgcolor="#FFFFFF">&nbsp;</td>
	   <td valign="top"><!--#include file="../en/left.asp" --></td>
	   <td width="10" height="474" bgcolor="#FFFFFF">&nbsp;</td>
	   <td valign="top">
	   <table align="left" border="0" cellpadding="0" cellspacing="0" width="511" height="100%">
		  <tr>
		   <td width="511" height="22" bgcolor="#FFFFFF"></td>
		  </tr>
		  <!--tr>
		    <td><img name="pr.jpg" src="../images/pr.jpg" width="511" height="33" border="0" alt=""></td>
		  </tr-->
		  <tr>
		   <td width="511" height="90%" bgcolor="#FFFFFF" valign="top"><%show_news()%></td>
		  </tr>
		</table></td>
	   <td valign="top"><!--#include file="../en/left.asp" --></td>
	  </tr>
	</table></td>
  </tr>
  <tr>
   <td><!--#include file="../en/wb.asp" --></td>
  </tr>
</table>
</body>
</html>
