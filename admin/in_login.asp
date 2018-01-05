<!--center>
  <font size="6px" color="navy">登陆入口</font> 
</center><br-->
<%
if session("Checked")<>Application("This_Passed_TXT")&"9876"  then 
%> 
<form name="form1" method="post" action="../admin/login1.asp" style="line-height:2.7em">
    <table width="100%" border="0" align="center">
      <tr> 
        <td align="right">用户名：</td>
        <td><input type="text"name="UserName" size="20" style="width:70px; height:18px; z-index:1"></td>
      </tr>
      <tr> 
        <td align="right">密 码：</td>
        <td><input type="Password" name="password" size="20" style="width:70px; height:18px; z-index:1"></td>
      </tr>
      <tr>
        <td align="right"><input id="submit12" style="WIDTH: 64px; HEIGHT: 24px" type="submit" size="21" value="登录" name="submit1">
        </td>
        <td>&nbsp; 
          <input id="reset12" style="WIDTH: 57px; HEIGHT: 24px" type="reset" size="28" value="取消" name="reset1"></td>
      </tr>
    </table>
</form> 
<%
else
%>

<table width="130" border="0" align="center" cellspacing="0">
  <tr> 
    <td colspan="2" align="center">你好!<font color="#FF0000">【</font><%=TRIM(session("temp_UserName"))%> <%= TRIM(session("Guest_UserName")) %><font color="#FF0000">】</font>&nbsp;</td>
  </tr>
  <tr>
    <td colspan="2" align="center"><a href="<%=This_Site_Path%>/admin/chpwd.asp">修改资料</a></td>
  </tr>
  <tr>
    <td colspan="2" align="center"><a href="<%=This_Site_Path%>/admin/logout.asp">退出登陆</a></td>
  </tr>
  <tr>
    <td colspan="2" align="center"><a href="<%=This_Site_Path%>/admin/">管理中心</a></td>
  </tr>
</table>
<%
end if
%>