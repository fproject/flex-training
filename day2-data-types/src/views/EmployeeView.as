package views
{
	import flash.events.MouseEvent;
	
	import spark.components.Button;
	import spark.components.Group;
	import spark.components.TextInput;
	import spark.layouts.HorizontalLayout;
	
	import events.EmployeeEvent;
	
	import models.Department;
	import models.Employee;
	
	[Event(name="employeeViewSubmitted", type="events.EmployeeEvent")]
	public class EmployeeView extends Group
	{
		private var nameTextInput:TextInput;
		
		public function EmployeeView()
		{
			super();
			//Cach 1: dung mxmlContent de khoi tao giao dien
			this.mxmlContent = [createSubmitButton(), createNameTextInput()];
			
			this.layout = new HorizontalLayout();
			
		}
		
		protected function submitButton_clickHandler(event:MouseEvent):void
		{
			var employee:Employee = new Employee;
			employee.name = nameTextInput.text;
			var r:Number = Math.random();
			employee.gender = r >0.5 ? "Female" : "Male";
			employee.department = new Department;
			employee.department.name = "Department 1";
			
			this.dispatchEvent(new EmployeeEvent(EmployeeEvent.EMPLOYEE_VIEW_SUBMITTED, employee));
		}
		
		private function createSubmitButton():Button
		{
			var b:Button = new Button;
			b.label = "Submit Employee";
			b.addEventListener(MouseEvent.CLICK, submitButton_clickHandler);
			return b;
		}
		
		private function createNameTextInput():TextInput
		{
			nameTextInput = new TextInput;
			nameTextInput.width = 300;
			return nameTextInput;
		}
	}
}