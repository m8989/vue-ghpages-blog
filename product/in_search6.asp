<meta http-equiv="Content-Type" content="text/html; charset=gb2312">

<!--�д�ֱ�༶����ѡ��Ĳ�ѯ�� -->
<!--# inc lude file file="OptionList3.asp" -->
<style type="text/css">
<!--
.style1 {
	color: #5a4c94;
	font-weight: bold;
}
-->
</style>
<div align=center> 
    <table width=100% height="30" border=0 cellpadding=0 cellspacing=1 >
      <tr> 
        <td width="100" height="30" align="right"><span class="style1">Series��</span></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" 0style="border: 1 dotted #3366FF;">
 <tr> 
    <%
	code_no=trim(request("code_no"))
	topno="100" '���ϱ�� Ĭ���ǿ�
	if len(code_no)<=0 then 
		code_len=1 'Ҫ���ڵ���1�Ż��г�ʼѡ��
	else
		code_len=len(code_no)
	end if
   for i=1 to code_len step 3
   %>
      <form name="searchform<%=i%>" method="get" action="#">
	 <td>
	   <select name="code_no" OnChange="submit(this)" >
            <option value="<%=mid(code_no,1,i-1)%>">All</option>
            <% if trim(request("code_no"))<>"" then
					'selectwhere=" Where c_code like '"&mid(code_no,1,i-1+len(topno))&"___' "
					selectwhere=" Where c_code like '"&mid(code_no,1,i-1+len(topno))&"___' "
			else
					selectwhere=" Where c_code like '"&topno&"___' "
			end if
			call OutOptionList(conn,"Product_Class","c_Code","c_Name",mid(code_no,1,i-1+6),selectwhere)
			%>
          </select>
	  </td></form>
	<%next%>
    </tr>
  </table>
    </td>
<form method="GET" action="../product/e_product_list.asp" name="search">
<input type=hidden name="p_class" value="<%=code_no%>">
        <td width="80" height="30" align="right" class="style1">Name:</td>
        <td width="100"><input type=text name="p_Code"  size=20> </td>
	  <td colspan="2">
    &nbsp;
    <input name="imageField" type="image" src="../images/ss.jpg" width="57" height="17" border="0" alt="������в�Ʒ����">
	</td>
</form>
</table>
  </div>

