<%@LANGUAGE="VBScript.Encode" CODEPAGE="936"%>
<!--#include file="../inc/ado.asp" -->
<!--#include file="../inc/tools.asp" -->
<!--#include file="../inc/check.asp" -->

<%#@~^pAoAAA==@#@&/nmD1tP{PrE@#@&@#@&k6P.n$E+kO`rw{;G[+r#@!@*EJ~O4+U@#@&7k6PdnmDm4xrJ~Y4n	@#@&idk+lMm4~',/nlMm4~LPJ,	CAI2,E@#@&i+^/n@#@&7i/nlM^t,'~dlD^4,[~J,)gf~r@#@&d+	N,r0@#@&7/l.^4P',d+mDm4~'PrPa{/W[n,'~Br~[,Dn5!+/OcrwmZK[Jb,[,JB,J@#@&+	N~k6@#@&@#@&k0,.+$E+kOcJa{	lh+Eb@!@*EJ,Otx@#@&ik0~dl.m4xrJ~Dtx@#@&did+mD^t,'~dlD14PLPJ,	u2"2,J@#@&7n^/n@#@&7dk+C.1tPx~k+CD14,[~rPz1f,J@#@&dx[Pb0@#@&i/+m.m4P',dnlMm4P'PE~a{UlsnP{PvE,[P.n$En/Dcrwm	ls+J*PL~JEPE@#@&+U[,k0@#@&@#@&k0,.n;!+kYcJ2m;WdYh.k1+Eb@!@*JE~Dtnx@#@&ikW,/lD1t{EJ,Y4+	@#@&7i/+m.m4P',dnlMm4P'PE~qC3IA~J@#@&7n^/+@#@&idd+m.1t~{Pk+lMm4~[,J~bgf~E@#@&dUN,k0@#@&7/lMm4Px~k+CD14PLPE~a{ZGdDn.k1n,'~EJ,[PM+$;+kYcJa{/GkYnMrmJ#,'~JEPr@#@&+U[,kW@#@&@#@&b0~.;EndD`Ew|]YCbVhDk1+rb@!@*JEPDtnU@#@&dbWPk+lM^4'rJ,Y4+U@#@&d7/CD1t~x,/+C.1t~[,E,uAIAPJ@#@&inVk+@#@&iddnmDm4~',/+m.^t,[,J~bH9,J@#@&inx9PrW@#@&ddnmD^t,x,/nmD1tPLPr~w|InYmksKMkm~',BJ,'~D;!+dYcEa{]+DCk^n.r1+Jb~LPEB,E@#@&n	N,k0@#@&@#@&k6P.+$EndD`J&d{G+Vrb@!@*rJ,Y4+U@#@&dr0,d+mD^4{JJ~O4+U@#@&7i/nmD1tP{PknlMm4PLPE~qC2"3Pr@#@&ins/@#@&d7/nCMm4P{~/l.^4P[~E,bHf,E@#@&7x9Pk6@#@&7/l.m4Px~k+lM^t,[Pr~(/|fV~'~vrP'PMn;!+dOvJqdmG+sJ*~LPEEPr@#@&x9~k6@#@&@#@&kW~M+;!n/D`J&dmZ4+13E#@!@*rJ~Y4nx@#@&7r6P/nCMm4'rE,Y4x@#@&di/CD1t~',/nCMmt,'PrP_3]2,J@#@&7+sd@#@&did+mD^4,'PdnmD^t,',J~z1GPJ@#@&inx9Pr0@#@&7dlD14P{P/C.m4PLPEP(d|Z4+1VP{PvE,[P.n$En/Dcrqd|Z4+m0J*~[,JvPr@#@&n	NPbW@#@&@#@&bW~D;!+dYcE&/mfbdw^lzE*@!@*EE,Y4+	@#@&dr6Pk+lMm4xJrPOtx@#@&id/CD1tP{~d+mD1t~[~E,u2"3Pr@#@&7V/n@#@&d7/CMm4,',/+mD14PLPEPz19~r@#@&inx9Pk6@#@&dk+mD^t~x,/nlM^t,[~E,q/m9b/2Vmz,'~EJ,[PM+$;+kYcJ&/m9b/w^CXr#PL~EB,J@#@&nx[~b0@#@&@#@&KHwnmgl:nxr商品资料J@#@&@#@&ANrD{&Y',Z4nm0Hro4YcPHw+|Hls+~r3[kD{&YE#~v检查权限要在设置了:X2+|Hls+c模块名b值以后才可以运行@#@&fns|kO';4mVtkTtYvKH2+|1C:~E9V{&OJ*@#@&;4nm0{zVs'/4mVHbLtD`Pza+{HCs+SJ;4mV|b^VJ*P,~P@#@&@#@&b0~39kY|(Y@!@*KM;nPDtx@#@&7]/2W	d+c.rD+PE@!km.kaO,VC	o!lo'xC\m?^DbwOqcF@*ms+MY`E你的权限不够！vbi4kkYGDz TWcO8birP@#@&iI+d2Kxd+c	MkOPr@!zkmMrwD@*E@#@&+U[,k0@#@&@#@&@#@&DC8V'rn.W[;1YmVbdYr@#@&d$V'EdVnmD~CPWMWsPJ,[,Ol(VnPLPdnmDm4~@#@&B请参考下面代码排序@#@&vd;^'r/nVn^DPMP6.WsPE~LPYC8^+~[,dl.1t,[PrPK.ND~4HP[Ob:+,92UZJ@#@&@#@&ED/2WUdRADbO+,/5s@#@&@#@&dY~DkxU+.7+MRZM+mO+}4%+1YcEzfrG$RM+mK.[/Yr#@#@&.dcZ;DkGD:X2n,'Pf@#@&DdR}2x~k;^~mKx	@#@&@#@&./cnCL?k.nP{ *,v每页记录条数@#@&M+kEsYmU!:xDk ImG.9ZW;UDPv记录总数@#@&@#@&@#@&b0,D+kE^O{	Eh@!{!~O4+x@#@&db0PknCD1t{JEPO4x@#@&i7hKD[xr目前还没有记录"J@#@&i+s/7@#@&7ihKDN{J没有查到符合条件的记录eE@#@&dnx9PrWi@#@&s/@#@&ihC6alT+xDd hlL+;GE	Y~@#@&dwCL'.+$;/OvJaloJ*@#@&i@#@&db0~HKYP&d1!:+Mr^`alT+bPG.,wCoxJrPO4x@#@&7iwCox8@#@&i+^/+@#@&i7wmon'1kUOvwlTn#@#@&dU[Pb0@#@&7@#@&7b0~wmL+@!F~O4+x@#@&id2lTn{F@#@&dV/k6~PalL+@*:Caalo~Y4+x@#@&7dalT+x:CaalL+@#@&dx[~b0@#@&@#@&d./c)(/G^ED+nmoxnmon@#@&+U[,k0@#@&@#@&X6wCAA==^#~@%>


<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../inc/style.css">
<title><%=#@~^HwAAAA==~zw2^k1lYbW	cJ:tr/|?rO{1mh+r#PtQoAAA==^#~@%></title>
<script language="JavaScript" src="../inc/javaScript.js"></script>

</head>

<body bgcolor="#FFFFFF" topmargin="0" leftmargin="0">
<!--# inc lude file file="incLeft.asp"-->
<div align="right"><input name="add" type="button" id="add" value="新增" onClick="document.location='product_join.asp'">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
<%#@~^GAAAAA==~b0~M+kEVD{	;:@!'TPDtnU,9QcAAA==^#~@%>
<center>
  <br>
  <br>
  <%=#@~^BQAAAA==AKD[,3AEAAA==^#~@%>
</center>
<%#@~^ZwAAAA==v"+daW	/+cMrYPE@!km.raYP^CxTElTnx9m\m?^Dr2DF F@*CVDOcEPJ'~SW.N,~LJ~E#ptkkYK.Xc4Cm0`Rq*i@!JdmMkwD@*EPQSAAAA==^#~@%>
<%#@~^BgAAAA==~VdP6QEAAA==^#~@%>
    <table width="90%" border="0" cellspacing="2" cellpadding="0" align="center">
  <tr valign="middle"> 
    <td>【共有<font color="#FF0000">
      <%=#@~^CwAAAA==./;^Y|xEsPbgQAAA==^#~@%>
      </font>条记录】</td>
    <td> 
      <%#@~^UgAAAA==~,mC^V,SlkYgn6DnCo`hCXwlTn~aloSEhbNDtxFTTuPE~r@!w,PCsboxx^xO+M~1VCk/{0W	Yy@*J*PKxoAAA==^#~@%>
    </td>
  </tr>
</table>
<form action="Product_del.asp" method="get" name="Form1">
  <table width="95%" border="0" cellspacing="1" cellpadding="0" align="center" bgcolor=#3366FF>
    <tr align=center bgcolor=#97D0FB> 
      <td><b>选择</b></td>
      <td><b>编号</b></td>
      <td><b>中文名称</b></td>
      <td><b>英文名称</b></td>
      <td><b>己审核</b></td>
      <td><b>己删除</b></td>
      <td><b>编辑</b></td>
    </tr>
    <%#@~^GAAAAA==~6W.,k{FPDW,./cnCo?r"PzAcAAA==^#~@%>
    <tr bgcolor=#FFFFFF> 
      <td><input type="checkbox" name="PID" value="<%=#@~^CgAAAA==.k`EhqGJ#,dwIAAA==^#~@%>"></td>
      <td  align=center><a href="javaScript:openWindow('Product_show.asp?PID=<%=#@~^CgAAAA==.k`EhqGJ#,dwIAAA==^#~@%>');"> 
        <%=#@~^FgAAAA==uD:s}ED`Dk`r2{;W[+r#b~AgcAAA==^#~@%>
        </a></td>
      <td  align=center>
        <%=#@~^FgAAAA==uD:s}ED`Dk`r2{	lh+r#b~KAcAAA==^#~@%>
      </td>
      <td  align=center>
        <%=rs("p_EName")%>
      </td>
      <td  align=center> 
        <%#@~^jwAAAA==r6P.k`rq/|Z4nm0Jb'DD;n,YtUPM+/aGU/RSDrYnE@!0GxD~mKVG.{JJ:TZso!ZEr@*己审核@!J0KxY@*J,nVk+~D/2G	/+cADbY+r@!WW	Y,mGVG.{JEawo!Z!TEr@*未审核@!&WKxO@*r~dykAAA==^#~@%>
      </td>
      <td  align=center> 
        <%#@~^jQAAAA==r6P.k`rq/|fsJ*'OD!+~O4+x,.+kwW	dnRSDbYnJ@!WKxOP1GVKDxErasoTZ!TJr@*己删除@!zWKxD@*J,+^d+,Dn/aWUdRhMrYJ@!6GUY,mKVGDxEraT!wo!ZJE@*未删除@!z0GUD@*EPrigAAA==^#~@%>
      </td>
      <td  align="center"> <a href="Product_join.asp?editid=<%=#@~^CgAAAA==.k`EhqGJ#,dwIAAA==^#~@%>">编辑</a></td>
    </tr>
    <%#@~^MQAAAA==~M/ sW7+x6D@#@&b0~DkR36wPY4nx,26bO~sKD@#@&r'rQ8PDg4AAA==^#~@%>
    <tr bgcolor=#F9F8FD> 
      <td><input type="checkbox" name="PID" value="<%=#@~^CgAAAA==.k`EhqGJ#,dwIAAA==^#~@%>"></td>
      <td  align=center><a href="javaScript:openWindow('Product_show.asp?PID=<%=#@~^CgAAAA==.k`EhqGJ#,dwIAAA==^#~@%>');"> 
        <%=#@~^FgAAAA==uD:s}ED`Dk`r2{;W[+r#b~AgcAAA==^#~@%>
        </a></td>
      <td  align=center>
        <%=#@~^FgAAAA==uD:s}ED`Dk`r2{	lh+r#b~KAcAAA==^#~@%>
      </td>
      <td  align=center>
      <%=rs("p_EName")%>      </td>
      <td  align=center> 
        <%#@~^jwAAAA==r6P.k`rq/|Z4nm0Jb'DD;n,YtUPM+/aGU/RSDrYnE@!0GxD~mKVG.{JJ:TZso!ZEr@*己审核@!J0KxY@*J,nVk+~D/2G	/+cADbY+r@!WW	Y,mGVG.{JEawo!Z!TEr@*未审核@!&WKxO@*r~dykAAA==^#~@%>
      </td>
      <td  align=center> 
        <%#@~^jQAAAA==r6P.k`rq/|fsJ*'OD!+~O4+x,.+kwW	dnRSDbYnJ@!WKxOP1GVKDxErasoTZ!TJr@*己删除@!zWKxD@*J,+^d+,Dn/aWUdRhMrYJ@!6GUY,mKVGDxEraT!wo!ZJE@*未删除@!z0GUD@*EPrigAAA==^#~@%>
      </td>
      <td align="center"><a href="Product_join.asp?editid=<%=#@~^CgAAAA==.k`EhqGJ#,dwIAAA==^#~@%>">编辑</a></td>
    </tr>
    <%#@~^NAAAAA==~@#@&.kRsW\xaY=kWPM/ 3}sPD4+	P2XrOPwWM@#@&xnaD@#@&kw4AAA==^#~@%>
  </table>
  <center><input type="checkbox" name="chkall" value="on" onclick="CheckAll(this.form);"   >
<font color="#CC3366" >选中该页所有记录</font><BR>
<script language="JavaScript">
<!--
function CheckAll(thisform){
  for (var i=0;i<thisform.elements.length;i++)
    {
    var e = thisform.elements[i];
    if (e.name != 'chkall')
       e.checked = thisform.chkall.checked;  
    }
  }
//-->
</script>

    &nbsp; 
    <%#@~^FQAAAA==r6P9V|qY{YM;+,POtx~LAcAAA==^#~@%>
    <input name="CMD" type="submit" id="CMD" value="删除">
    &nbsp; 
    <input name="CMD" type="submit" id="CMD" value="恢复">
    &nbsp;
    <%#@~^BwAAAA==n	N~b0,RgIAAA==^#~@%>
    <%#@~^MAAAAA==r6P/4+13Hbo4O`:X2+|1Ch~J;4+13{zssJ*'DD;+~~Dtnx,axAAAA==^#~@%>
    <input name="CMD" type="submit" id="CMD" value="通过审核">
    &nbsp; 
    <input name="CMD" type="submit" id="CMD" value="彻底删除">
    <%#@~^BwAAAA==n	N~b0,RgIAAA==^#~@%>
    &nbsp; 
    <input name="reset" type="reset" id="reset" value="重新选择">
  </center>
</form>
<%#@~^UgAAAA==~EmC^V,SlkYgn6DnCo`hCXwlTn~aloSEhbNDtxFTTuPE~r@!w,PCsboxx^xO+M~1VCk/{0W	Yy@*J*PMhoAAA==^#~@%>
<%#@~^CAAAAA==~x[,k6PZgIAAA==^#~@%>
<!--# inc lude file file="incRight.asp"-->
</body>
</html>
<%#@~^OwAAAA==@#@&IdcZ^W/`*@#@&U+OP"/~x,1WD4k	o@#@&jnY,mKxU'~HKY4k	L@#@&KQ8AAA==^#~@%>

