<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.2.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web" TagPrefix="dx" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>How to add an item to databound ASPxComboBox in a grid EditForm</title>

	<script type="text/javascript" src="Scripts/JScript.js"></script>

</head>
<body>
	<form id="form1" runat="server">
	<div>
		<dx:ASPxGridView ID="grid" ClientInstanceName="grid" runat="server" DataSourceID="mainSource"
			KeyFieldName="Id" Width="100%">
			<Columns>
                <dx:GridViewCommandColumn VisibleIndex="0" ShowNewButton="True" ShowEditButton="True" ShowDeleteButton="True"/>
				<dx:GridViewDataColumn FieldName="Id" VisibleIndex="1">
					<EditFormSettings Visible="false" />
				</dx:GridViewDataColumn>
				<dx:GridViewDataComboBoxColumn FieldName="ProductId" Caption="Product" VisibleIndex="1">
					<PropertiesComboBox DataSourceID="productSource" ValueType="System.Int32" TextField="Name"
						ClientInstanceName="comboProduct" ValueField="Id">
						<Buttons>
							<dx:EditButton>
								<Image Url="Images/edit.png" AlternateText="Edit" />
							</dx:EditButton>
						</Buttons>
						<ClientSideEvents ButtonClick="OnComboProduct_ButtonClick" EndCallback="OnComboProduct_EndCallback" />
					</PropertiesComboBox>
				</dx:GridViewDataComboBoxColumn>
				<dx:GridViewDataColumn FieldName="Quantity" VisibleIndex="3">
				</dx:GridViewDataColumn>
				<dx:GridViewDataTextColumn FieldName="Price" VisibleIndex="4">
					<EditFormSettings Visible="false" />
					<PropertiesTextEdit DisplayFormatString="c" />
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataTextColumn FieldName="Total" VisibleIndex="5">
					<EditFormSettings Visible="false" />
					<PropertiesTextEdit DisplayFormatString="c" />
				</dx:GridViewDataTextColumn>
			</Columns>
		</dx:ASPxGridView>
		<dx:ASPxPopupControl HeaderText="Products" EncodeHtml="False" ID="popup" runat="server"
			ClientInstanceName="popup" EnableViewState="False" AllowDragging="true" PopupHorizontalAlign="OutsideRight"
			PopupHorizontalOffset="10" EnableClientSideAPI="true">
			<ContentCollection>
				<dx:PopupControlContentControl>
					<dx:ASPxGridView ID="gridProducts" ClientInstanceName="gridProducts" runat="server"
						DataSourceID="productSource" KeyFieldName="Id" Width="300px">
						<Columns>
                            <dx:GridViewCommandColumn VisibleIndex="0" ShowNewButton="True" ShowEditButton="True"/>
							<dx:GridViewDataColumn FieldName="Name" VisibleIndex="0">
							</dx:GridViewDataColumn>
							<dx:GridViewDataTextColumn FieldName="Price" VisibleIndex="1">
								<PropertiesTextEdit DisplayFormatString="c" />
							</dx:GridViewDataTextColumn>
						</Columns>
						<SettingsEditing Mode="Inline" />
						<SettingsBehavior AllowDragDrop="false" />
						<ClientSideEvents BeginCallback="OnGridProducts_BeginCallback" EndCallback="OnGridProducts_EndCallback" />
					</dx:ASPxGridView>
				</dx:PopupControlContentControl>
			</ContentCollection>
		</dx:ASPxPopupControl>
		<br />
		<asp:ObjectDataSource ID="mainSource" runat="server" SelectMethod="GetItems" TypeName="OrderItemsProvider"
			UpdateMethod="ItemUpdate" InsertMethod="ItemInsert" DeleteMethod="ItemDelete">
		</asp:ObjectDataSource>
		<asp:ObjectDataSource ID="productSource" runat="server" SelectMethod="GetProducts"
			TypeName="OrderItemsProvider" UpdateMethod="ProductUpdate" InsertMethod="ProductInsert">
		</asp:ObjectDataSource>
	</div>
	</form>
</body>
</html>