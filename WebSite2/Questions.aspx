<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Questions.aspx.cs" Inherits="Questions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
        <div id="header-wrapper">
        <div id="header" class="container">
            <div id="logo">
                <h1><a href="default.aspx">Wu-Surveys</a></h1>
            </div>
            <div id="menu">
                <ul>
                    <li><a href="default.aspx" accesskey="1" title="">Home</a></li>
                    <li><a href="login.aspx" accesskey="2" title="">Login</a></li>
                    <li><a href="Register.aspx" accesskey="3" title="">Register</a></li>
                    <li class="active"><a href="Survey.aspx" accesskey="4" title="">Survey</a></li>
                    <li><a href="TakeSurvey.aspx" accesskey="5" title="">Take Survey</a></li>
                <li><a href="Control.aspx" accesskey="6" title="">Control</a></li>
                <li><a href="Logout.aspx" accesskey="7" title="">Logout</a></li>
                </ul>
            </div>
            </div>
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">

   
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="ddlTextBoxes" runat="server">
        <asp:ListItem Value="1" Text="1" />
        <asp:ListItem Value="2" Text="2" />
        <asp:ListItem Value="3" Text="3" />
        <asp:ListItem Value="4" Text="4" />
        <asp:ListItem Value="5" Text="5" />
        <asp:ListItem Value="6" Text="6" />
        <asp:ListItem Value="7" Text="7" />
        <asp:ListItem Value="8" Text="8" />
        <asp:ListItem Value="9" Text="9" />
        <asp:ListItem Value="10" Text="10" />
    </asp:DropDownList>
    <asp:Button ID="btnAdd" runat="server" Text="Add Number of Survey Questions" OnClick="Add" />
    <asp:Label ID="Label1" runat="server"></asp:Label>
    <br />

    <asp:PlaceHolder ID="container" runat="server" Visible="false">
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="Submit" />
    </asp:PlaceHolder>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder5" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>

