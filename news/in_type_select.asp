<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" 0style="border: 1 dotted #3366FF;">
 <tr> 
 	<td align="right" width="90">—°‘Ò∑÷¿‡£∫</td>
    <%
	code_no=trim(request("code_no"))
   for i=1 to len(code_no)+3 step 3
   %>
      <form name="form<%=i%>>" method="get" action="#">
	 <td>
	   <select name="code_no" OnChange="submit(this)">
            <option value="<%=mid(code_no,1,i-1)%>">All</option>
			<%=code_no&chr(13)%>
			<%=mid(code_no,1,i+2)&chr(13)&" Where c_code like '"&mid(code_no,1,i)&"___' "%>
            <% call OutOptionList(conn,"News_Types","c_Code","c_Name",mid(code_no,1,i+2)," Where c_code like '"&mid(code_no,1,i-1)&"___' ")%>
          </select>
	  </td></form>
	  <%next%>
    </tr>
  </table>