package loginapp

class Employee {

    static transients = [ "confirmPassword" ]
	String empName
	String lastName
	
	String password
	String designation
	String address
	int basicSalary 
	
	static constraints = {
          empName(blank:false)
		  lastName(blank:false)
		  password (blank:false, password:true)
         
		  designation()
		  
		  address(nullable:true, maxSize:200)
		  basicSalary(blank:false)
		    }
	
	String toString() {
	  empName
	}
}
