<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<!--�д�ֱ�༶����ѡ��Ĳ�ѯ�� -->
<!--# inc lude file file="OptionList3.asp" -->
  <div align=center> 
    <table width=100% height="90" border=0 cellpadding=0 cellspacing=1 >
      <tr> 
        <td height="30" align=right>��Ʒ���ࣺ</td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" 0style="border: 1 dotted #3366FF;">
 <tr> 
 	<td align="right" width="90">ѡ����ࣺ</td>
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
	<tr> <td>
	   <select name="code_no" OnChange="submit(this)" >
            <option value="<%=mid(code_no,1,i-1)%>">All</option>
            <% if trim(request("code_no"))<>"" then
					selectwhere=" Where c_code like '"&mid(code_no,1,i-1+len(topno))&"___' "
			else
					selectwhere=" Where c_code like '"&topno&"___' "
			end if
			call OutOptionList(conn,"Product_Class","c_Code","c_Name",mid(code_no,1,i-1+6),selectwhere)
			%>
          </select>
	  </td></tr></form>
	<%next%>
    </tr>
  </table></td>
      </tr>
<form method="GET" action="product_list.asp" name="search">
<input type=hidden name="p_class" value="<%=code_no%>">
      <tr> 
        <td height="30" align=right>����:</td>
        <td><input type=text name="p_Code"  size=10 value=""> </td>
      </tr>
      <tr align=center> 
	  <td colspan="2">
    <input type=submit value="����"  name=B1 >
    &nbsp; 
    <input type=reset value="����" name=B2 >
	</td>
      </tr>
</form>
</table>
  </div>
