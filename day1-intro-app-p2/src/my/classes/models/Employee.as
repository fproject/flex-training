package my.classes.models
{
	/**
	 * 
	 * This is a model class for Employee entity
	 * 
	 * @author Bui Sy Nguyen
	 * 
	 */	
	public class Employee
	{
		[Bindable]
		/**
		 *  
		 */
		public var name:String;
		
		[Bindable]
		public var id:String;
		
		[Bindable]
		public var birthday:Date;
		
		private var _age:int;
		
		public function get age():int
		{
			return _age;
		}
		
		public function set age(value:int):void
		{
			this._age = value;
		}
		
		public function Employee()
		{
		}
		
		
	}
}