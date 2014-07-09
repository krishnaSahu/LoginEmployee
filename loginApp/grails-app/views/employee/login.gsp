<html>
 <head>
    <title>Login Page</title>
    <meta name="layout" content="main" />
 </head>
 <body>
    <div class="body">
        <g:if test="${flash.message}">
             <div class="message">
                ${flash.message}
             </div>
        </g:if>
      <p>  Welcome to Fedu <br><br> Login below<br><br>  </p>
      <g:form action="handleLogin" method="post" >

        <span class='nameClear'><label for="login">
             EMPNAME:
                              </label>
        </span>
        <g:textField name="empName" value="${employee?.empName}" />
        <br /> <br>
        
         <span class='nameClear'><label for="login">
             PASSWORD:
                              </label>
        </span>
        <input type="password" name="password" value="${employee?.password}" />
        <br /><br>
        
        <div class="buttons">
           <span class="button">
              <g:actionSubmit value="Login" action="handleLogin"/>
           </span>
        </div>
      </g:form>
     </div>
 </body>
 </html>