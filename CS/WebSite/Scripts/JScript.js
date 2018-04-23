// Add an empty item to a combo box if necessary. In the example this approach is not used
function OnInit(s, e) {
    s.InsertItem(0, 'Add New Item', -1);
}
// show a popup to edit a combo box datasource
function OnComboProduct_ButtonClick(s, e) {
    popup.ShowAtElement(s.GetMainElement());
}
// clear the combo box selection
function OnComboProduct_EndCallback(s, e) {
    s.SetSelectedIndex(-1);
}
var command = "";
function OnGridProducts_BeginCallback(s, e) {
    command = e.command;
}
// update the combo box datasource
function OnGridProducts_EndCallback(s, e) {
    if (command == "UPDATEEDIT") {
        comboProduct.PerformCallback();
    }
}