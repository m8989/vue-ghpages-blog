<!--# inc lude file file="../inc/ado.asp"-->
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
  <%
		'CountNum=5 	'在主页中设定该值
		'textCount=18
		'TypeID=1	'在主页中设定该值
		if CountNum = "" OR CountNum <1 then 
			CountNum=5
		end if
		if TextCount = "" OR TextCount <1 then 
			TextCount=18
		end if
		if TypeID = "" Or TypeID<1 then 
			TypeID=1
		end if
					'dim rs1
					set rs1 =  Server.createobject("adodb.recordset")
					'dim strsql1
					strsql1="SELECT top "&CountNum&" newsID,n_Title,Input_Time from news_info WHERE Is_Del=0 AND Is_Display=1 AND Is_Check=1 AND TypeID="& TypeID &" order by Input_Time DESC"
					rs1.open strsql1,conn,1,3
					%>
  <%
						For i = 1 To CountNum step 1
						if rs1.eof then
							%>
  <tr> 
    <td  ><img src="images/index/m07.gif" width="30" height="17"> 
      <!--a href="javascript:MM_openBrWindow('join.asp?Type_Name=工作动态','弹出窗口')"-->
      <a href="UBBnews/join.asp?Type_Name=<%=TypeID%>"> 
      数据不够，点击新增记录！！</a> </td>
  </tr>
  <%
						else
						%>
  <tr> 
    <td  ><img src="images/index/m07.gif" width="30" height="17"> <a href="UBBnews/show.asp?newsID=<%=rs1("newsID")%>"> 
      <%
						if len(trim(rs1("n_Title")))>TextCount then  '控制文本长度
                           		Response.Write left(trim(rs1("n_Title")),TextCount-1)&"..."&"&nbsp;&nbsp;"&rs1("Input_Time")
                           else
                                Response.Write rs1("n_Title")&"&nbsp;&nbsp;"&rs1("Input_Time")
                           end if
                        %>
      </a> </td>
  </tr>
  <%
					rs1.movenext
					
						end if
    				next
	rs1.close()
	set rs1=Nothing
					  %>
</table>
