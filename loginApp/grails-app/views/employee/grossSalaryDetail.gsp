<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Employee Information </title>
	</head>
	<body>
	    <h1> GrossSalary Details </h1><br>
	    <g:set var="emp" value="${session.employee}" />
	    <g:set var="basic" value="${emp.basicSalary }"/>
	       <%  def da=basic*0.4
		       def hra=basic*0.6
			   def gross=basic+hra+da
		    %>
	    <g:include action="handleLogin" controller="Employee" />
	     <table border='1'>
          <tr>
             <th>ID</th>
             <th>BasicSalary</th>
             <th>hra</th>
             <th>da</th>
             <th>grossSalary</th>
          </tr>
             
        
        <tr>
           <td>${emp.id}</td>
           <td>${emp.basicSalary}</td>
           <td> ${hra}</td>
           <td>${da }</td>
           <td>${gross}</td>
           
        </tr>
        
               
        </table> 
       
	</body>

</html>	    