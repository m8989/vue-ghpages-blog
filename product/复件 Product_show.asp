<%@LANGUAGE="VBScript.encode" CODEPAGE="936"%>
<!--#include file="../inc/ado.asp" -->
<!--#include file="../inc/tools.asp" -->
<%

table="Product_list"

PID=request("PID")
set rs=Server.CreateObject("ADODB.RECORDSET")
rs.Open "select * from " & table & " where PID =" & PID ,conn

PID=rs("PID")
p_Code=rs("p_Code")
p_name=rs("p_name")
p_ename=rs("p_ename")
p_oldno=rs("p_oldno")
p_picType=rs("p_picType")
p_class=rs("p_class")
p_CostPrice=rs("p_CostPrice")
p_RetailPrice=rs("p_RetailPrice")
p_RetailExplain=rs("p_RetailExplain")
p_Spec=rs("p_Spec")
p_Area=rs("p_Area")
P_picpath=rs("P_picpath")
P_picpath2=rs("P_picpath2")
P_picpath3=rs("P_picpath3")
g_id=rs("g_id")
p_Remark=rs("p_Remark")
p_Storage=rs("p_Storage")
mydept=rs("mydept")
p_ProducingArea=rs("p_ProducingArea")
p_RetailMoney=rs("p_RetailMoney")
p_Unit=rs("p_Unit")
mypublic=rs("mypublic")
Is_Del=rs("Is_Del")
Is_Check=rs("Is_Check")
Is_Display=rs("Is_Display")
%>
<Html>
<Head>
<Title><%=This_Site_Name%></Title>
<Meta Http-Equiv="Content-Type" Content="text/html; charset=gb2312">
<link href="../baise9.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.style2 {
	font-size: 11pt;
	font-weight: bold;
	color: #57331D;
}
-->
</style>
</Head>
<Body Style="background-color:#FFFFFF; margin-top: 0px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px;">
<table border="0" cellpadding="0" cellspacing="0" width="1004">
  <tr>
   <td width="52" height="230" bgcolor="#FFFFFF">&nbsp;</td>
   <td><table align="left" border="0" cellpadding="0" cellspacing="0" width="900">
	  <tr>
	   <td><table align="left" border="0" cellpadding="0" cellspacing="0" width="900">
		  <tr>
		   <td><img name="index_1_r1_c2" src="../images/index_1_r1_c2.jpg" width="568" height="50" border="0" alt="宁波晨航服饰有限公司"></td>
		   <td><table align="left" border="0" cellpadding="0" cellspacing="0" width="332">
			  <tr>
			   <td><img name="index_1_r1_c10" src="../images/index_1_r1_c10.jpg" width="332" height="7" border="0" alt=""></td>
			  </tr>
			  <tr>
			   <td><table align="left" border="0" cellpadding="0" cellspacing="0" width="332">
				  <tr>
				   <td width="70" height="20" class="sheweishouye" span onclick="var strHref=window.location.href;this.style.behavior='url(#default#homepage)';this.setHomePage('http://www.cxchenhang.com');" style="CURSOR: hand" title="设为首页">设为首页 |</span></td>
				   <td width="67" height="20" class="sheweishouye" span style="CURSOR: hand" onClick="window.external.addFavorite('http://www.cxchenhang.com','宁波晨航服饰有限公司')" title="加入收藏">加入收藏 |</span></td>
				   <td><a href="product_list.asp"><img name="index_1_r2_c13" src="../images/index_1_r2_c13.jpg" width="66" height="20" border="0" alt="服装展示"></a></td>
				   <td><a href="../cn/gywm.asp"><img name="index_1_r2_c14" src="../images/index_1_r2_c14.jpg" width="66" height="20" border="0" alt="关于我们"></a></td>
				   <td><a href="../cn/lxwm.asp"><img name="index_1_r2_c15" src="../images/index_1_r2_c15.jpg" width="63" height="20" border="0" alt="联系我们"></a></td>
				  </tr>
				</table></td>
			  </tr>
			  <tr>
			   <td width="332" height="23" bgcolor="#FFFFFF">&nbsp;</td>
			  </tr>
			</table></td>
		  </tr>
		</table></td>
	  </tr>
	  <tr>
	   <td><table align="left" border="0" cellpadding="0" cellspacing="0" width="900">
		  <tr>
		   <td><table align="left" border="0" cellpadding="0" cellspacing="0" width="705">
			  <tr>
			   <td><table align="left" border="0" cellpadding="0" cellspacing="0" width="705">
				  <tr>
				   <td><a href="../en/index.asp"><img name="index_1_r4_c2" src="../images/index_1_r4_c2.jpg" width="64" height="32" border="0" alt="点击进入英文版"></a></td>
				   <td><a href="../cn/index.asp"><img name="index_1_r4_c3" src="../images/index_1_r4_c3.jpg" width="68" height="32" border="0" alt="点击进入中文版"></a></td>
				   <td><a href="../index.htm"><img name="index_1_r4_c4" src="../images/index_1_r4_c4.jpg" width="75" height="32" border="0" alt="点击返回首页"></a></td>
				   <td><img name="index_1_r4_c5" src="../images/index_1_r4_c5.jpg" width="23" height="32" border="0" alt=""></td>
				   <td><a href="product_list.asp"><img name="index_1_r4_c6" src="../images/index_1_r4_c6.jpg" width="79" height="32" border="0" alt="产品展示"></a></td>
				   <td><a href="../cn/gywm.asp"><img name="index_1_r4_c7" src="../images/index_1_r4_c7.jpg" width="91" height="32" border="0" alt="关于我们"></a></td>
				   <td><a href="../cn/zxdg.asp"><img name="index_1_r4_c8" src="../images/index_1_r4_c8.jpg" width="89" height="32" border="0" alt="在线订单"></a></td>
				   <td><a href="../cn/lxwm.asp"><img name="index_1_r4_c9" src="../images/index_1_r4_c9.jpg" width="105" height="32" border="0" alt="联系我们"></a></td>
				   <td><img name="index_1_r4_c11" src="../images/index_1_r4_c11.jpg" width="111" height="32" border="0" alt=""></td>
				  </tr>
				</table></td>
			  </tr>
			  <tr>
			   <td width="705" height="148" bgcolor="#FFFFFF"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="705" height="148">
                 <param name="movie" value="../flash/top.swf">
                 <param name=quality value=high>
                 <embed src="../flash/top.swf" quality=high pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="705" height="148"></embed>
               </object></td>
			  </tr>
			</table></td>
		   <td><img name="index_1_r4_c13" src="../images/index_1_r4_c13.jpg" width="195" height="180" border="0" alt="追求客户满意度100%"></td>
		  </tr>
		</table></td>
	  </tr>
	</table></td>
   <td width="52" height="230" bgcolor="#FFFFFF">&nbsp;</td>
  </tr>
</table>
<table width="1004" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="48" height="100%" rowspan="2" bgcolor="#FFFFFF">&nbsp;</td>
    <td width="184" rowspan="2" valign="top">
		<table align="left" border="0" cellpadding="0" cellspacing="0" width="184">
	  		<tr>
	   			<td><img name="index_2_r1_c2" src="../images/index_2_r1_c2.jpg" width="184" height="74" border="0" alt="本站栏目导航"></td>
	  		</tr>
	  		<tr>
	  			 <td><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="184" height="94">
                   <param name="movie" value="../flash/menu2.swf">
                   <param name="quality" value="high">
                   <embed src="../flash/menu2.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="184" height="94"></embed>
  			     </object></td>
	  		</tr>
			<tr>
			   <td>
			   <table border="0" cellpadding="0" cellspacing="0" width="184">
			  <tr>
			   <td><img name="index_2_r6_c2_r1_c1" src="../images/index_2_r6_c2_r1_c1.jpg" width="184" height="39" border="0" alt=""></td>
			  </tr>
			  <tr>
			   <td>
				   <table align="left" border="0" cellpadding="0" cellspacing="0" width="184">
					  <tr>
					   <td width="10" height="49" background="../images/index_2_r6_c2_r2_c1.jpg">&nbsp;</td>
					   <td width="158"><!--#include file="../product/in_search.asp" --></td>
					   <td width="16" height="49" background="../images/index_2_r6_c2_r2_c5.jpg">&nbsp;</td>
					  </tr>
					</table>
				</td>
			  </tr>
			  <tr>
		   <td><img name="index_2_r6_c2_r5_c1" src="../images/index_2_r6_c2_r5_c1.jpg" width="184" height="20" border="0" alt=""></td>
		  </tr>
		</table>
		</td>
			  </tr>
	  		<tr>
	   			<td width="184" height="107"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="184" height="107">
         <param name="movie" value="../flash/left.swf">
         <param name="quality" value="high">
         <embed src="../flash/left.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="184" height="107"></embed>
	     </object></td>
	  		</tr>
		</table>
	</td>
    <td height="205" valign="top" bgcolor="#FFFFFF">
	<!--中间的内容区嵌套表格-->
	<table align="left" border="0" cellpadding="0" cellspacing="0" width="720">
		<tr>
		<td><table align="left" border="0" cellpadding="0" cellspacing="0" width="720">
		  <tr>
		   <td width="176" height="32" align="center">
			<SCRIPT language=JavaScript>
					<!--
					today=new Date();
					var week; var date;
					if(today.getDay()==0) week="星期日"
					if(today.getDay()==1) week="星期一"
					if(today.getDay()==2) week="星期二"
					if(today.getDay()==3) week="星期三"
					if(today.getDay()==4) week="星期四"
					if(today.getDay()==5) week="星期五"
					if(today.getDay()==6) week="星期六"
					date=(today.getYear())+"年"+(today.getMonth()+1)+"月"+today.getDate()+"日"+" "
					document.write("<span style='font-size: 9pt;'>"+date+week+"</span>");
					// -->
					</SCRIPT>
            </td>
		   <td width="544" height="32" bgcolor="#FFFFFF">&nbsp;</td>
		  </tr>
		</table></td>
		</tr>
		<tr>
		<td><img name="index_3_r2_c1" src="../images/index_3_r2_c1.jpg" width="720" height="9" border="0" alt=""></td>
		</tr>
		<tr>
		<td><table align="left" border="0" cellpadding="0" cellspacing="0" width="720">
		  <tr>
		   <td><img name="index_3_r3_c1" src="../images/index_3_r3_c1_cpzs.jpg" width="131" height="46" border="0" alt="产品展示"></td>
		   <td width="267" height="46" bgcolor="#FFFFFF"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="267" height="46">
             <param name="movie" value="../flash/sang.swf">
             <param name="quality" value="high">
             <embed src="../flash/sang.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="267" height="46"></embed>
		     </object></td>
		   <td><a href="../en/index.asp"><img name="index_3_r3_c8" src="../images/index_3_r3_c8.jpg" width="109" height="46" border="0" alt="点击进入英文版"></a></td>
		   <td><a href="../cn/index.asp"><img name="index_3_r3_c11" src="../images/index_3_r3_c11.jpg" width="134" height="46" border="0" alt="点击进入中文版"></a></td>
		   <td><a href="../cn/index.asp"><img name="index_3_r3_c12" src="../images/index_3_r3_c12.jpg" width="79" height="46" border="0" alt="点击返回首页"></a></td>
		  </tr>
		</table></td>
		</tr>
		<tr>
		<td valign="top"><TABLE WIDTH=685 BORDER=0 CELLPADDING=0 CELLSPACING=0 bgcolor="#FFFFFF">
   <tr>
     <td align="center" valign="top" class="heise10"><br><%if(P_picpath<>"") then Response.Write "<img border=1 src='"&P_picpath&"'>"%><br><br><!--此行显示产品图片-->
	 产品名称:<%=p_Code%><br><!--此行显示产品名称-->
	 产品规格:<%=P_name%><br><!--此行显示产品规格--></td>
   </tr>
      <tr>
     <td valign="top"><br>
      <span class="style2"> 产品详细说明:</span><br></td>
   </tr>
      <tr>
     <td valign="top" class="heise10"><%=P_Remark%><br><!--此行显示备注内容--></td>
   </tr>
</table></td>
		</tr>
    </table>
	<!--中间的内容区嵌套表格结束-->
	</td>
	<td width="52" height="100%" rowspan="2" bgcolor="#FFFFFF">&nbsp;</td>
  </tr>
</table>
<table width="1004" border="0" cellspacing="0" cellpadding="0">
  <tr>
   <td><img name="index_4_r1_c1" src="../images/index_4_r1_c1.jpg" width="1004" height="2" border="0" alt=""></td>
  </tr>
  <tr>
   <td><table align="left" border="0" cellpadding="0" cellspacing="0" width="1004">
	  <tr>
	   <td><img name="index_4_r2_c1" src="../images/index_4_r2_c1.jpg" width="199" height="107" border="0" alt=""></td>
	   <td><table align="left" border="0" cellpadding="0" cellspacing="0" width="594">
		  <tr>
		   <td width="594" height="16" bgcolor="#FFFFFF"></td>
		  </tr>
		  <tr>
		   <td><table align="left" border="0" cellpadding="0" cellspacing="0" width="594">
			  <tr>
			   <td><a href="product_list.asp"><img name="index_4_r3_c2" src="../images/index_4_r3_c2.jpg" width="62" height="19" border="0" alt="产品展示"></a></td>
			   <td><img name="index_4_r3_c3" src="../images/index_4_r3_c3.jpg" width="85" height="19" border="0" alt="在线订单"></td>
			   <td><a href="../cn/gywm.asp"><img name="index_4_r3_c4" src="../images/index_4_r3_c4.jpg" width="84" height="19" border="0" alt="关于我们"></a></td>
			   <td><a href="../cn/lxwm.asp"><img name="index_4_r3_c5" src="../images/index_4_r3_c5.jpg" width="89" height="19" border="0" alt="联系我们"></a></td>
			   <td><img name="index_4_r3_c6" src="../images/index_4_r3_c6.jpg" width="1" height="19" border="0" alt=""></td>
			   <td><a href="../en/index.asp"><img name="index_4_r3_c7" src="../images/index_4_r3_c7.jpg" width="68" height="19" border="0" alt="英文版入口"></a></td>
			   <td><img name="index_4_r3_c8" src="../images/index_4_r3_c8.jpg" width="1" height="19" border="0" alt=""></td>
			   <td><a href="../admin/login.asp"><img name="index_4_r3_c9" src="../images/index_4_r3_c9.jpg" width="70" height="19" border="0" alt="网站后台登陆入口"></a></td>
			   <td><img name="index_4_r3_c10" src="../images/index_4_r3_c10.jpg" width="1" height="19" border="0" alt=""></td>
			   <td><img name="index_4_r3_c11" src="../images/index_4_r3_c11.jpg" width="133" height="19" border="0" alt=""></td>
			  </tr>
			</table></td>
		  </tr>
		  <tr>
		   <td><img name="index_4_r4_c2" src="../images/index_4_r4_c2.jpg" width="594" height="72" border="0" alt=""></td>
		  </tr>
		</table></td>
	   <td><table align="left" border="0" cellpadding="0" cellspacing="0" width="211">
		  <tr>
		   <td width="211" height="48" bgcolor="#FFFFFF">
		   <select style="WIDTH: 150px; HEIGHT: 20px" onChange="if (this.value!='')window.open(this.value);" name="select">
			  <option selected>====*友情链接*====</option>
			  <option value=http://www.dir.ef360.com/Garment/15_1036/>中国服装时尚网</option>
			  <option value=http://www.nzn.cn/web/>服装网址大全</option>
			  </select>
			</td>
		  </tr>
		  <tr>
		   <td width="211" height="59" bgcolor="#FFFFFF">&nbsp;</td>
		  </tr>
		</table></td>
	  </tr>
	</table></td>
  </tr>
</table>
</body>
</html>
<%#@~^JgAAAA==@#@&IdcZ^W/`*@#@&U+OP"/~x,1WD4k	o@#@&5AgAAA==^#~@%>