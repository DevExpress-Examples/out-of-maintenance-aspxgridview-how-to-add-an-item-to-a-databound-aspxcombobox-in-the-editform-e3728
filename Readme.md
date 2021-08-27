<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128533272/13.1.4%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E3728)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [OrderItems.cs](./CS/WebSite/App_Code/OrderItems.cs) (VB: [OrderItems.vb](./VB/WebSite/App_Code/OrderItems.vb))
* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
* [JScript.js](./CS/WebSite/Scripts/JScript.js) (VB: [JScript.js](./VB/WebSite/Scripts/JScript.js))
<!-- default file list end -->
# ASPxGridView - How to add an item to a databound ASPxComboBox in the EditForm
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e3728/)**
<!-- run online end -->


<p>This sample demonstrates how to use ASPxGridView to add and edit items of ASPxComboBox that is placed within a grid EditForm. By design, ASPxGridView can update its own rendering when processing a callback, but not the rending of outside controls. Thus, it is necessary to perform an ASPxComboBox callback when the Product grid’s data has been changed. Handle the grid’s EndCallback event for this. To overcome the circularity, also handle the grid’s BeginCallback event, as it is described in the <a href="https://www.devexpress.com/Support/Center/p/E3578">E3578</a> example. </p><p>By design, ASPxComboBox selects the first item after processing its own callback. If you wish to select another item or unselect all items, handle the <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxEditorsScriptsASPxClientComboBox_EndCallbacktopic"><u>ASPxClientComboBox.EndCallback</u></a> or <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxPopupControlScriptsASPxClientPopupControlBase_CloseUptopic"><u>ASPxClientPopupControl.CloseUp</u></a> event and execute required actions. In this example, all items become unselected after a combo box callback.</p><p></p><p><strong>See also:</strong><br />
<a href="https://www.devexpress.com/Support/Center/p/E3578">ASPxGridView - How to refresh a master grid when a detail grid has been updated</a><br />
<a href="https://www.devexpress.com/Support/Center/p/E3741">GridView - How to add an item to a databound ComboBox in a grid EditForm</a></p>

<br/>


