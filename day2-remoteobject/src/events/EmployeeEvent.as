package events
{
	import flash.events.Event;
	
	import models.Employee;
	
	public class EmployeeEvent extends Event
	{
		public static const ACTION_DELETE:String="delete";
		public static const ACTION_SAVE:String = "save";
		//"delete" or "save"
		public var action:String;
		
		public var employee:Employee;
		
		public function EmployeeEvent(type:String, employee:Employee)
		{
			super(type);
			this.employee = employee;
		}
		
		public static const EMPLOYEE_VIEW_SUBMITTED:String = "employeeViewSubmitted";
	}
}