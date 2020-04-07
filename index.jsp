<form action = 'action.jsp'>
<table border = '1'>
	<tr>
		<td width = '50' align = 'center'>
		<%out.write("Rows");%>
		</td>
		<td width = '50' align = 'center'>
		<input type = 'text', name = 'rows'/>
		</td>
	</tr>
	<tr>
		<td width = '50' align = 'center'>
		<%out.write("Cols");%>
		</td>
		<td width = '50' align = 'center'>
		<input type = 'text', name = 'cols'/>
		</td>
	</tr>
	<tr>
		<td width = '50' align = 'center'>
		
		</td>
		<td width = '50' align = 'center'>
		<input type = 'submit', value = 'OK'/>
		</td>
	</tr>
</table>