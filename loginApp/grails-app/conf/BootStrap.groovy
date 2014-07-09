import loginapp.Employee
class BootStrap {

     def init = { servletContext ->
        if (Employee.count() == 0) {
            new Employee(empName: 'John', lastName: 'Doe' , password: 'john' , designation: 'Founder', address: 'Nagpur', basicSalary:50000 ).save()
			new Employee(empName: 'krishna', lastName: 'sahu' , password: 'krishna' , designation: 'developer', address: 'Nagpur', basicSalary:5000 ).save()
			new Employee(empName: 'shubham', lastName: 'sahu' , password: 'shubham' , designation: 'developer', address: 'Nagpur', basicSalary:5000 ).save()
        }
    }
    def destroy = {
    }
	
	}
