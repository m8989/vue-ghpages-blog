<!--#include file="../inc/ado.asp"-->
<table border="0" align="center" cellpadding="0" cellspacing="10">
	<tr> 
  <%
		'CountNum=5 	'在主页中设定该值
		'textCount=18
		'TypeID=1	'在主页中设定该值
		if CountNum = "" OR CountNum <1 then 
			CountNum=20
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
					strsql1="SELECT top "&CountNum&" * from Product_list WHERE Is_Del=0 AND Is_Display=1 AND Is_Check=1 order by Click_Count DESC"
					rs1.open strsql1,conn,1,3
					%>
  <%
						For i = 1 To CountNum step 1
						if rs1.eof then
							%>
							<!--td  ><img src="images/index/m07.gif" width="30" height="17"> 
							  更多商品</td-->
						  <%
						   exit for
						else
						%>
							<td align="center"  > <a href="../product/product_show.asp?pID=<%=rs1("pID")%>" target000="_blank"> 
							<img src="<%=rs1("P_picpath")%>" height="120" width="160" border="0"><br><br>
							  <%
												if len(trim(rs1("p_Code")))>(TextCount+1) then  '控制文本长度
														Response.Write left(trim(rs1("p_Code")),TextCount)&"..."
												   else
														Response.Write rs1("p_Code")
												   end if
												%>
							  </a> </td>
						  <%
					rs1.movenext
					
						end if
    				next
					
	rs1.close()
	set rs1=Nothing
					  %>
	</tr>
</table>
