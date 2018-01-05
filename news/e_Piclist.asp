<!--#include file="../product/e_Piclist.vb.asp" -->
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
    <!--#include file="../inc/head.asp"-->
    <TABLE cellSpacing=0 cellPadding=0 width=776 align=center bgColor=#ffffff border=0 >
      <TBODY>
        <TR >
          <TD style="HEIGHT: 658px" vAlign=top width=189 rowSpan=5 ><!--#include file="../index/in_left.asp"-->
          </TD>
          <TD 
style="BORDER-LEFT: #dddddd 1px solid; HEIGHT: 658px" vAlign=top align=center 
width=587 rowSpan=1 ><TABLE cellSpacing=0 cellPadding=0 width="94%" align=center border=0 >
              <TR >
                <TD >EQUIPMENT </TD>
              </TR>
              <TR >
                <Td style="LINE-HEIGHT: 150%"></Td>
              </TR>
              <TR >
                <TD style="LINE-HEIGHT: 150%" class="doc_Body" ><DIV class="Text_white">
                  <%call show_list()%>
                </DIV></TD>
              </TR>
            </TABLE>
              <!--主内容开始--></TD>
        </TR>
      </TBODY>
    </TABLE>
    <!--#include file="../inc/copyright.asp"-->
</body>
</html>
<% dbclose() %>