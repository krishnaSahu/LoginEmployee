<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Employee Information </title>
	</head>
	<body>
	    <h1> Employee Details </h1><br>
	    <g:if test="${employee}">
	       <g:set var="basic" value="${employee.basicSalary}" />
	       <%  def da=basic*0.4
		       def hra=basic*0.6
			   def gross=basic+hra+da
		    %>
		    
	      
	    
	        
	    <table border='1'>
          <tr>
             <th>Emp_Id</th>
             <th>empName</th>
             <th>lastName</th>
             <th>designation</th>
             <th>address</th>
             <th><a href="grossSalaryDetail.gsp"> grossSalary</a> </th>
          </tr>
        
        <tr>
           <td>${employee.id}</td>
           <td>${employee.empName}</td>
           <td> ${employee.lastName}</td>
           <td>${employee.designation}</td>
           <td> ${employee.address}</td>
           <td>${gross}</td>
        </tr>
        
        
        
    </table> 
        </g:if>
           
             
        
	</body>
</html>