package models
{
	public class Employee
	{
		[Bindable]
		public var name:String;
		
		[Bindable]
		public var gender:String;
		
		public var department:Department;
	}
}