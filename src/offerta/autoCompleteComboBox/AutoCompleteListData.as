package offerta.autoCompleteComboBox
{
	import flash.events.Event;
	
	import mx.controls.listClasses.BaseListData;
	import mx.controls.listClasses.ListData;
	import mx.core.IUIComponent;
	
/**
 *  The AutoCompleteListData class defines the data type of the <code>listData</code>
 *  property implemented by drop-in item renderers or drop-in item editors
 *  for the drop down piece of the AutoCompleteComboBox control. 
 * 
 *  All drop-in item renderers and drop-in item editors must implement 
 *  the IDropInListItemRenderer interface, which defines
 *  the <code>listData</code> property.
 *
 *  <p>While the properties of this class are writable,
 *  you should consider them to be read only.
 *  They are initialized by the List class,
 *  and read by an item renderer or item editor.
 *  Changing these values can lead to unexpected results.</p>
 *
 *  @see mx.controls.listClasses.IDropInListItemRenderer
 *  @see offerta.autoCompleteComboBox.AutoCompleteComboBox
 */
	public class AutoCompleteListData extends ListData
	{

		/** 
		 * constructor
		 */
		public function AutoCompleteListData(listData: ListData, argAypeAheadText : String, argAutoCompleteComboBox : AutoCompleteComboBox)
		{
			if(listData){

				super(listData.label, listData.icon, listData.labelField, listData.uid, listData.owner, listData.rowIndex, listData.columnIndex);
			}
			typeAheadText = argAypeAheadText;
			autoCompleteComboBox = argAutoCompleteComboBox ;
		}
		
		// a link to the AutoCompleteComboBox 
		/**
		 * @private
		 */
		private var _typeAheadText : String = ''; 


		[Bindable(event="typeAheadTextChanged")]
		/**
		 * The <code>typeAheadText</code> property is a hook to the <code>AutoCompleteComboBox</code> and gives access to the 
		 * AutoComplete <code>typeAheadText</code> for purposes of styling or other processing in your <code>itemRenderer</code>.
		 */
		public function get typeAheadText():String{
			return this._typeAheadText;
		}

		/**
		 * @private
		 */
		public function set typeAheadText(value:String):void{
			this._typeAheadText = value;
//			this.dispatchEvent(new Event('typeAheadTextChanged'));
		}

		/**
		 * @private
		 */
		private var _autoCompleteComboBox : AutoCompleteComboBox ; 

		[Bindable(event="autoCompleteComboBoxChanged")]
		/**
		 * The <code>AutoCompleteComboBox</code> property gives your <code>itemRenderer</code> a link to the <code>AutoCompleteComboBox</code>
		 */
		public function get autoCompleteComboBox():AutoCompleteComboBox{
			return this._autoCompleteComboBox;
		}

		/**
		 * @private
		 */
		public function set autoCompleteComboBox(value:AutoCompleteComboBox):void{
			this._autoCompleteComboBox = value;
//			this.dispatchEvent(new Event('autoCompleteComboBoxChanged'));
		}

	}
}