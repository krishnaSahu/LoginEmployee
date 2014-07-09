package loginapp

class EmployeeController {

   static scaffold= Employee
	
	def employeeInfo() {
		def employees = Employee.list()
		[employees:employees]
	}
	
	def list = {  }
	
	
	def login() {
		def employe=Employee.list()
		[employe:employe]
	}
	def empDetail() {}
	def grossSalaryDetail() {
		
		
	}
	def handleLogin() {
		println "Handle Login"
		println params.empName
		println params.password

		
		// find the user name
		
		def employee = Employee.findByEmpNameAndPassword(params.empName, params.password)
		
		if (!employee) {
			 flash.message = "User not found for EmpName: ${params.empName} enter correct login name or password"
			 
			 redirect(action:'login')
			 return
		} else 
	         {
			 session.employee = employee
			 render(view:'handleLogin' , model:[employee:employee])
			 return(session.employee)
			 }
  }
  
  def logout() 
       {
	  log.info 'logout'
	  if(session.employee) {
	      session.employee = null
	      session.invalidate()
	     flash.message = "logout successfuly"
	  
	     redirect(action:'login')
	  }
   }
  
   def register() {}

   def handleRegistration() {
	   
			   def employee = new Employee()
						  log.info("HANDLE REGISTRATION")
			 // using the log.info here will only print out the object, not a listing of it
						  println params
			// create the property object
						 employee.properties = params
			
			
				  if(params.password != params.confirm) {
						  flash.message = "The two passwords you entered dont match!"
						  render(view:'register', model:[employee:employee])
					 }
				 else if (employee.password?.length() <= 3) {
						 flash.message = "The password length is under 3 characters."
						 render(view:'register', model:[employee:employee])
					 } else {
						 log.info "before save"
	
				if(employee.save()) {
							 
						  log.info "saved redirecting to user controller"
	  				  
						  redirect(action:'employeeInfo')
				
						}else {
							 log.info "didn't save"
							 println "didn't save"
							 flash.employee = employee
							 render(view:'register', model:[employee:employee])
						 }
					 }
			
		   
			
		 
	  
	  }
   
}
