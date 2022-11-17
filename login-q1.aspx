<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container mt-5">
        <div class="row text-danger text-center">
        <h1>LogIn Form</h1>
        </div>
    <div class="row text-center">
        <div class="col-6">
            Name :
        </div>
        <div class="col-6">
            <asp:TextBox ID="txtname" runat="server" Width="500px" CssClass="form-control"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ForeColor="Red">Fill above Blank</asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
    </div>
        <div class="row text-center mt-3">
        <div class="col-6">
            Password:
        </div>
        <div class="col-6">
            <asp:TextBox ID="txtpass" runat="server" Width="500px" CssClass="form-control" TextMode="Password"></asp:TextBox>
&nbsp;</div>
    </div>
         <div class="row">
        <div class="col-6">
            </div>
        <div class="col-6 mt-3">
            <asp:Button ID="btn_submit" runat="server" Text="Sign IN" CssClass="btn btn-outline-primary rounded-end form-control w-25" OnClick="btn_submit_Click"/>
        </div>
    
    </div>
         <div class="row">
        <div class="col-6">
            </div>
        <div class="col-6 mt-3">

            <div class="container mt-5 w-25">
        </div>
            </div>
    
    </div>
</asp:Content>

