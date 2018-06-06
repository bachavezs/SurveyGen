<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Survey.aspx.cs" Inherits="Surveys" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
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
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">
    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>


    <asp:Label runat="server" ID="lblCount"></asp:Label>


    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblName" runat="server" Text="Survey Name: "></asp:Label>
    <asp:TextBox ID="txtSurveyName" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblDescription" runat="server" Text="Survey Description:"></asp:Label>
    <asp:TextBox ID="txtSurveyDescription" runat="server" Height="129px" style="margin-bottom: 0px" TextMode="MultiLine" Width="362px"></asp:TextBox>
   
    <asp:PlaceHolder ID="container" runat="server">
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="Submit" />
    </asp:PlaceHolder>

</asp:Content>
