package offerta.dbFilter.flex
{
	public class SampleVO
	{
		public function SampleVO()
		{
		}
		
		public function toString():String{
			return Id + ' ' + DescriptionText;
		}
		
		public function toHTMLString():String{
			return Id + ' ' + DescriptionText ;
		}
		
		public var Id : String = '';
		
		public var DescriptionText : String = '';

		
	}
}