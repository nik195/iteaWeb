<table border = '5' align = 'center'>
<%
String cols = request.getParameter("cols");
String rows = request.getParameter("rows");
if(Integer.valueOf(cols) % 2 == 0 || Integer.valueOf(rows) % 2 == 0){
	out.write("Rows and Cols must not be divided by 2 <br>");
}
if(Integer.valueOf(cols) <= 3 && Integer.valueOf(rows) <= 3){
	out.write("Rows or Cols must be more than 3");
} else{
	
	int mCol = Integer.valueOf(cols) / 2;
	int mRow = Integer.valueOf(rows) / 2;
	int count = 1;

for(int i = 0; i < Integer.valueOf(rows); i++){
	%>
	<tr>
	<%
	for(int j = 0; j < Integer.valueOf(cols); j++){
		if(i == 0 || j == 0 || i == Integer.valueOf(rows) - 1 || j == Integer.valueOf(cols) - 1){
	%>-
	<td width = '50', height = '50', align = 'center' bgcolor = 'red' ><%=count%></td>
	<%
	
		} else if(i == mRow && j == mCol) {
			%>
			<td width = '50', height = '50', align = 'center' bgcolor = 'white'><%=count%></td>
			<%
		} else{
			%>
			<td width = '50', height = '50', align = 'center' bgcolor = 'green'><%=count%></td>
			<%
		}
	count++;
	}
	%>
	</tr>
	<%
	}
}
%>
</table>