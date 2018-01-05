<%
Sub PutToShopBag( ID, ProductList )
   If Len(ProductList) = 0 Then
      ProductList = "" & ID & ""
   ElseIf InStr( ProductList, ID ) <= 0 Then
      ProductList = ProductList & ", " & ID & ""
   End If
End Sub
%>


<%
'Sub PutToShopBag( ID, ProductList )
'   If Len(ProductList) = 0 Then
'      ProductList = "'" & ID & "'"
'   ElseIf InStr( ProductList, ID ) <= 0 Then
'      ProductList = ProductList & ", '" & ID & "'"
'   End If
'End Sub
%>