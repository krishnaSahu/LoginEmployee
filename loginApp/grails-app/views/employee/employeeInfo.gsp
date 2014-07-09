<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Employee Information </title>
	</head>
	<body>
	<th><a href="http://localhost:8080/EmployeeApp"> HomePage </a> </th>
	
	    <h1>  Registered Employees </h1><br>
	    <table border='1'>
          <tr>
             <th>Emp_Id</th>
             <th>empName</th>
             <th>lastName</th>
             
          </tr>
        <g:each in="${employees}" var="employee" status="i"> 
        <g:if test="${employee}">
        <tr>
           <td>${employee.id}</td>
           <td>${employee.empName}</td>
           <td> ${employee.lastName}</td>
           
        </tr>
        </g:if>
        </g:each>
        
        </table> 
        
        
	</body>
</html>