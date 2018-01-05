<style type="text/css">
<!--
.style2 {font-size: 9pt}
-->
</style>
<form method="GET" action="../product/product_list.asp" name="search">
<!--#include file="OptionList3.asp" -->
  <div align=center> 
                  
    <table width=100% height="70" border=0 cellpadding=0 cellspacing=1 >
      <tr> 
        <td height="30" align=right><span class="style2">类别：</span></td>
        <td><select name="p_class">
                <%#@~^RgAAAA==^mVs,r!YraYbGxdkdY2`^G	x~rKDKNE1OmZ^lk/E~E^|ZGNE~rmmHm:+ESa{^Vmdk~Er#whcAAA==^#~@%>
              </select></td>
      </tr>
      <tr> 
        <td height="30" align=right class="style2">名称：</td>
        <td><input type=text name="p_Code"  size=12 value="请输入关键字"> </td>
      </tr>

    </table>
  </div>
  <div align=center> 
    <input type=submit value="搜索"  name=B1 >
    &nbsp; 
    <input type=reset value="重填" name=B2 >
  </div>
</form>