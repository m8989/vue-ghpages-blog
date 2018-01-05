<!--#include file="../news/e_show1.vb.asp" -->
<html>
<head>
    <title><%=This_Site_Name%></title>
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <script language="JavaScript" src="../inc/js/JavaScript.js"></script>

    <style type="text/css"> 
  <!--
.style1 {color: #FFFFFF}
--></style>
    <style type="text/css">
<!--
.menuA {
	font-size: 18px;
	font-weight: bold;
}
.layer {						/*将此样式用于表格，在表格中放置绝对定们的DIV代码，可实际相对单元格的绝对定位*/
        position: relative; clip: rect( )
}

.doc_Body {
	line-height: 150%;
	font-size: 14px;
}
-->
</style>

    <script language="JavaScript" type="text/JavaScript">
<!--
function MM_reloadPage(init) {  //reloads the window if Nav4 resized
  if (init==true) with (navigator) {if ((appName=="Netscape")&&(parseInt(appVersion)==4)) {
    document.MM_pgW=innerWidth; document.MM_pgH=innerHeight; onresize=MM_reloadPage; }}
  else if (innerWidth!=document.MM_pgW || innerHeight!=document.MM_pgH) location.reload();
}
MM_reloadPage(true);
//-->
    </script>

</head>
<body id="thebody" bgcolor="#FFFFFF" background="../images/bg.jpg">
                  <%show_news()%>
</body>
</html>
