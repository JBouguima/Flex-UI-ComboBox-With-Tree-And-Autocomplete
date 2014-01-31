package offerta.autoCompleteComboBox
{
	import mx.controls.List;
	import mx.controls.listClasses.BaseListData;
	import mx.controls.listClasses.ListData;
	import mx.core.mx_internal;
	
	use namespace mx_internal;

	
	[ExcludeClass]
	/**
	 * @private
	 */
	public class AutoCompleteDropDown extends List
	{
		/** 
		 * constructor
		 */
		public function AutoCompleteDropDown()
		{
			super();
		}
		
		/** 
		 * the type ahead text; just a place holder really to send to itemRenderers
		 */
		public var typeAheadText : String = '';
		
		/** 
		 * A link to the AutoCompleteComboBox instance that is using this drop down
		 */
		public var autoCompleteComboBox : AutoCompleteComboBox;

	    /**
	     *  @inheritdocs
	     */    
	    override protected function makeListData(data:Object, uid:String,
	                                 rowNum:int):BaseListData
	    {
	        return new AutoCompleteListData( new ListData(itemToLabel(data), itemToIcon(data), labelField, uid, this, rowNum), this.typeAheadText, this.autoCompleteComboBox);
	    }
		
		/**
		 * @private
		 * Created for the AutoCompleteComboBox Flex 3.5 edition 
		 * which is strangely setting the rowHeight to 0 in certain situations; which then always gives the 
		 * drop down a zero height 
		 */
		override protected function setRowHeight(v:Number):void
		{
			if(v == 0){
				return;
			}
			super.setRowHeight(v);
		}		
		
	    
	}
}