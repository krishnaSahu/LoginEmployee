    
<html>
<head>
    <title>Registration Page</title>
    <meta name="layout" content="main" />
 </head>
 
  <body>   
     
    <g:form action="handleRegistration" method="post">
       <div class="dialog">
      <table>
        <tbody>
        
          <tr class='prop'>
              <td valign='top' class='nameClear'>
                <label for="empName">Employee Name:</label>
              </td>
              <td valign='top'
                  class='valueClear ${hasErrors(bean:user,field:'empName','errors')}'>
                  <input type="text" name="empName" />
              </td>
           </tr>
           
           <tr class='prop'>
               <td valign='top' class='nameClear'>
                  <label for="lastName">Last Name:</label>
               </td>
               <td valign='top'
                  class='valueClear ${hasErrors(bean:user,field:'lastName','errors')}'>
                  <input type="text" name="lastName" />
               </td>
           </tr>
         
          <tr class='prop'>
             <td valign='top' class='nameClear'>
                 <label for="password">Password:</label>
             </td>
             <td valign='top'
                 class='valueClear ${hasErrors(bean:user,field:'password','errors')}'>
                 <input type="password" name="password" />
             </td>
           </tr>
         
           <tr class='prop'>
              <td valign='top' class='nameClear'>
                  <label for="confirm">Confirm Password:</label>
              </td>
              <td valign='top'
                   class='valueClear ${hasErrors(bean:user,field:'password','errors')}'>
                   <input type="password" name="confirm" />
              </td>
           </tr>
           
           
           
           <tr class='prop'>
               <td valign='top' class='nameClear'>
                  <label for="designation">Designation:</label>
               </td>
               <td valign='top'
                  class='valueClear ${hasErrors(bean:user,field:'designation','errors')}'>
                  <input type="text" name="designation" />
               </td>
           </tr>
           
           <tr class='prop'>
               <td valign='top' class='nameClear'>
                  <label for="address">Address:</label>
               </td>
               <td valign='top'
                  class='valueClear ${hasErrors(bean:user,field:'address','errors')}'>
                  <input type="text" name="address" />
               </td>
           </tr>

           <tr class='prop'>
              <td valign='top' class='nameClear'> 
                  <label for="email">Email:</label>
              </td>
              <td valign='top'
                 class='valueClear ${hasErrors(bean:user,field:'email','errors')}'>
              <input type="text" name="email" />
              </td>
          </tr>
          
          <tr class='prop'>
              <td valign='top' class='nameClear'> 
                  <label for="basicSalary">BasicSalary:</label>
              </td>
              <td valign='top'
                 class='valueClear ${hasErrors(bean:user,field:'basicSalary','errors')}'>
              <input type="text" name="basicSalary" />
              </td>
          </tr>
          
        </tbody>
     </table>
  </div>
  <div class="buttons">
   <span class="button">
     <input class="save" type="submit" value="Register"></input>
   </span>
  </div>
 </g:form>
</body>
 