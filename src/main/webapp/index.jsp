<html>
<head>
<script src="scripts/jquery-2.1.3.js"></script>
<script>
$(document).ready(function(){
	$.get("rest/user", function(data){
		var rowTemplate = $("#templates table").html();
		console.log(rowTemplate);
		for(index in data){
			var row =  rowTemplate.replace("name",data[index].name).replace("emailId",data[index].emailId).replace("joinDate",data[index].joinDate).replace("age",data[index].age).replace("state",data[index].state);
			$("#users").append(row);
		}
	});
});
</script>
</head>
<body>
<div id="templates" style="display: none;">
	<table>
		<tr><td>name</td><td>emailId</td><td>joinDate</td><td>age</td><td>state</td></tr>
	</table>
</div>
<table id="users" border="1">
<tr><td>UserName</td><td>EmailID</td><td>JoiningDate</td><td>Age</td><td>State</td></tr>
</table>
</body>
</html>




