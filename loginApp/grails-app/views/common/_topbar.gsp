<div id="menu">
<nobr>
         <g:if test="${session.employee}">
              <b>${session.employee?.empName}&nbsp;${session.employee?.lastName}</b> |
         <g:link controller="Employee" action="logout">Logout</g:link>
         </g:if>
         <g:else>
         <g:link controller="Employee" action="register"><h3>Register</h3></g:link>
         <g:link controller="Employee" action="login"><h3>Login</h3></g:link>
         </g:else>

 </nobr>
 </div>