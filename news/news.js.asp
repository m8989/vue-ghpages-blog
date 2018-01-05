<%@LANGUAGE="VBSCRIPT.encode" CODEPAGE="936"%>
<!--#include file="../inc/ado.asp" -->
<!--#include file="../inc/tools.asp" -->
<!--#include file="../inc/setDefType.asp" -->
<%
if request("TextCount")<>"" then
	TextCount=int(request("TextCount"))
else
	TextCount=int(5)
end if

search = " WHERE Is_Display =1 AND Is_Check =1 AND Is_Del =0 "

if request("counter")<>"" then
	counter=int(request("counter"))
else
	counter=int(8 )
end if

if request("TypeID")<>"" then
    TypeID=request("TypeID")
	if search="" then
		search = search & " WHERE "
	else
		search = search & " AND "
	end if
	search = search & " TypeID = " &TypeID& " "
'else  '设置默认值
'       	TypeID=setDefaultType("News_Type","News_TypeGroup")   '从setDefType文件的setDefaultType中设置默认分类

'	if search="" then
'		search = search & " WHERE "
'	else
'		search = search & " AND "
'	end if
'	search = search & " TypeID = " &TypeID& " "
end if
table="news_info"

sql="select Top "&counter&" newsID,n_Title,Input_Time,click_count from " & table & search & " order by Input_Time DESC"
set rs=Server.CreateObject("ADODB.recordset")
rs.CursorType = 3
'response.write sql
'response.end
rs.Open sql,conn

result_num=rs.RecordCount '记录总数

JsStr=""
if result_num<=0 then
	JsStr=JsStr&"目前还没有记录!"
else
	JsStr=JsStr&"<table width=""90%"" border=""0"" cellspacing=""2"" cellpadding=""0"" align=""center"">  \n"
	    for i=1 to result_num 
                  JsStr=JsStr&"		<tr>\n" 
                  JsStr=JsStr&" 		<td align=""left""><img src="""&This_Site_Path&"/images/points.gif"">\n"
                  JsStr=JsStr&" 		<a href="""&This_Site_Path&"/news/dong_show.asp?newsID="& rs("newsID") & """ Title='"&trim(rs("n_Title"))&"'>  \n"
				  	tempstr=HtmlOut(trim(rs("n_Title")))&"　"
				   if len(tempstr) > TextCount then  '
						'JsStr=JsStr&"超出长度"&TextCount
						JsStr=JsStr& left(tempstr,TextCount-2)&".."
				   else
						'JsStr=JsStr&"长度"&TextCount
						JsStr=JsStr& tempstr&"&nbsp;"
				   end if
				  JsStr=JsStr&""& month(rs("input_time"))&"月"&day(rs("input_time"))&"日</a></td>\n" 
                  JsStr=JsStr&"		</tr>\n" 
			rs.movenext()
		next 
	JsStr=JsStr&"</table>\n"
end if
Rs.Close()   
Set Rs = Nothing   
Set conn= Nothing   
%>   
document.write("<%= Replace(JsStr,"""","\""")%>");  
