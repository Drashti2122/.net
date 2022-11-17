<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="reg.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div class="container mt-5">
        <div class="row text-danger text-center">
        <h1>Registration Form</h1>
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
            Email ID:
        </div>
        <div class="col-6">
            <asp:TextBox ID="txtemail" runat="server" Width="500px" CssClass="form-control" TextMode="Email"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtemail" ForeColor="Red">Fill above Blank</asp:RequiredFieldValidator>
&nbsp;</div>
    </div>
        <div class="row text-center mt-3">
        <div class="col-6">
            Password :
        </div>
        <div class="col-6">
            <asp:TextBox ID="txtpass" runat="server" Width="500px" CssClass="form-control" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtpass" ForeColor="Red">Fill above Blank</asp:RequiredFieldValidator>
        </div>
    </div>
        <div class="row  text-center mt-3">
        <div class="col-6">
            age :
        </div>
        <div class="col-6">
            <asp:TextBox ID="txtage" runat="server" Width="500px" CssClass="form-control" TextMode="Number"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtage" ForeColor="Red">Fill above Blank</asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtage" ErrorMessage="RangeValidator" ForeColor="Red" MaximumValue="50" MinimumValue="18">Age Between 18 to 50</asp:RangeValidator>
        </div>
    </div>
        <div class="row  text-center mt-3">
        <div class="col-6">
            contact :
        </div>
        <div class="col-6">
            <asp:TextBox ID="txtcontact" runat="server" Width="500px" CssClass="form-control" TextMode="Number"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtcontact" ForeColor="Red">Fill above Blank</asp:RequiredFieldValidator>
        </div>
    </div>
        <div class="row text-center mt-3">
        <div class="col-6">
        </div>
        <div class="col-6">
        </div>
    </div>
        <div class="row mt-3">
        <div class="col-6">
            
        </div>
        <div class="col-6 mt-3">
            <asp:Button ID="btn_submit" runat="server" Text="Sign Up" CssClass="btn btn-outline-primary rounded-end form-control w-25" OnClick="btn_submit_Click"/>
        </div>
    </div>
    </div>
</asp:Content>

