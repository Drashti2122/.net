<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="_Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    Name : <asp:Label ID="lblname" runat="server" Text=""></asp:Label><br />
   Email id : <asp:Label ID="lblemail" runat="server" Text="Label"></asp:Label><br />
   Age : <asp:Label ID="lblage" runat="server" Text=""></asp:Label><br />
   Mobile No : <asp:Label ID="lblmob" runat="server" Text=""></asp:Label><br />

    Profile : <asp:FileUpload ID="FileUpload1" runat="server" />&nbsp; <asp:Image ID="Image1" runat="server" Height="50" Width="50"/>
    <asp:Button ID="btnadd" runat="server" Text="ADD" OnClick="btnadd_Click" />
    <br />
    <br />
            <asp:Button ID="Button1" runat="server" Text="Change Password" CssClass="btn btn-outline-danger rounded-end form-control w-25" OnClick="Button1_Click1"/>
            <br />
<br />
            <asp:Panel ID="Panel1" runat="server" BorderStyle="Groove" BorderColor="#66ffff" BackColor="WhiteSmoke" >
        Change Password : <asp:TextBox ID="txtcpass" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>

        <br />
        <br />
        <asp:Button ID="txtchange" runat="server" Text="Change" CssClass="btn btn-outline-info rounded-end form-control w-50" OnClick="txtchange_Click"/>
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btncancle" runat="server" Text="Cancle" CssClass="btn btn-outline-danger rounded-end form-control w-50" />

    </asp:Panel>
            <ajaxToolkit:ModalPopupExtender PopupControlID="Panel1" ID="Button1_ModalPopupExtender" CancelControlID="btncancle" runat="server" BehaviorID="Button1_ModalPopupExtender" DynamicServicePath="" RepositionMode="RepositionOnWindowResizeAndScroll" TargetControlID="Button1">
            </ajaxToolkit:ModalPopupExtender>

            <br />
    <br />
    <br />
</asp:Content>

