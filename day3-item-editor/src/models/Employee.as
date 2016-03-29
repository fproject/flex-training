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
		
		public function Employee(src:Object=null)
		{
			if(src != null)
			{
				for (var s:String in src)
				{
					if (this.hasOwnProperty(s))
						this[s] = src[s];
				}
			}
		}
	}
}