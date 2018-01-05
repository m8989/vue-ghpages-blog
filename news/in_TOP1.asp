<!--#include file="../inc/ado.asp"-->

<link href="../inc/style.css" rel="stylesheet" type="text/css">
<body>
  <table width="100%" border="0" cellspacing="0">
  <tr>
    <td width="5%">&nbsp;</td>
    <td><marquee scrollamount="2" scrolldelay="120" width="100%" hight="100%"
			  direction="up" OnMouseOver="this.stop()" OnMouseOut="this.start()">
  <%
		TypeID=1
		'dim rs1
		set rs1 =  Server.createobject("adodb.recordset")
		'dim strsql1
		strsql1="SELECT top 1 newsID,n_Title,n_body,Input_Time from news_info WHERE Is_Del=0 AND Is_Display=1 AND Is_Check=1 AND TypeID="& TypeID &" order by Input_Time DESC"
		rs1.open strsql1,conn,1,3
		%>
 <center><% Response.Write rs1("n_Title")&"&nbsp;"%></center><BR>
 <%n_body=rs1("n_body")%>
    &nbsp;&nbsp;&nbsp;&nbsp;<%= XP_UBBcode(n_body)%>
  <%
	rs1.close()
	set rs1=Nothing
	  %>
</marquee></td>
    <td width="5%">&nbsp;</td>
  </tr>
</table>

<%set conn=Nothing%>
</body>
<SCRIPT Language="JScript" SRC="../inc/xp_ubbcode.js" Runat=Server></SCRIPT>