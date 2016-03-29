package models
{
	[RemoteClass(alias="FEmployee")]
	public class Employee
	{
		[Bindable]
		public var id:String;
		
		[Bindable]
		public var name:String;
		
		[Bindable]
		public var gender:int;
		
		[Bindable]
		public var age:Number;
	}
}