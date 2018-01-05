<%
TypeList_table = "Product_Class"
code_1=trim(request("code_1"))
TypeList_search = " WHERE Is_Del=0 AND ( c_code like '______' OR c_code like '___')"   '只读取第 2 级分类
TypeList_sql="select c_code,c_Name from " & TypeList_table & TypeList_search & " order by c_Code,c_Name"
set TypeList_rs=Server.CreateObject("ADODB.recordset")
TypeList_rs.CursorType = 3
'response.write sql
'response.end
TypeList_rs.Open TypeList_sql,conn
TypeList_result_num=TypeList_rs.RecordCount '记录总数

 if TypeList_result_num<=0 then 
%>
<center>
  <br>
  <br>
   对不起，还没有输入数据！！
</center>
<%'Response.Write "<script language=JavaScript1.1>alert(' "& word  &" ');history.back(-1);</script>" %>
<% else %>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
 	   <tr> 
		<% for i=1 to TypeList_result_num step 1%>
		<td width="<%=cint(100/cint(TypeList_result_num))%>%" align="center" nowrap>
			<% if len(TypeList_rs("c_code"))=3 then %>
				<a href="eProduct.asp?p_class=<%=TypeList_rs("c_code")%>" title="单击查看<%=TypeList_rs("c_Name")%>&nbsp;(<%=TypeList_rs("c_Code")%>)下级分类商品" class="big"> 
			  <!--img src="../images/sanjiao.gif" width="7" height="10" border="0"-->
			  <%=TypeList_rs("c_Name")%></a>
			<% else%>
			  <a href="eProduct.asp?p_class=<%=TypeList_rs("c_code")%>" title="单击查看<%=TypeList_rs("c_Name")%>&nbsp;(<%=TypeList_rs("c_Code")%>)下级分类商品"> 
			  <!--img src="../images/sanjiao.gif" width="7" height="10" border="0"-->
			  <%=TypeList_rs("c_Name")%></a>    
		<%  end if%>
		 </td>
		<%
		TypeList_rs.MoveNext
		if TypeList_rs.EOF then Exit For
		next
		%>
          </tr> 
</table>
<% end if %>
<%
TypeList_Rs.Close()
Set TypeList_Rs = Nothing
'Set conn= Nothing
%>