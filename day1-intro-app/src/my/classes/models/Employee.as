package my.classes.models
{
	public class Employee
	{
		[Bindable]
		public var name:String;
		
		[Bindable]
		public var id:String;
		
		[Bindable]
		public var birthday:Date;
		
		public function Employee()
		{
		}
	}
}