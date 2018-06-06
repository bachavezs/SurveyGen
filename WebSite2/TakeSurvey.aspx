<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TakeSurvey.aspx.cs" Inherits="TakeSurvey" %>

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
                <li><a href="Survey.aspx" accesskey="4" title="">Survey</a></li>
                <li class="active"><a href="TakeSurvey.aspx" accesskey="5" title="">Take Survey</a></li>
                <li><a href="Control.aspx" accesskey="6" title="">Control</a></li>
                <li><a href="Logout.aspx" accesskey="7" title="">Logout</a></li>
            </ul>
        </div>
    </div>
         </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="surveyName" DataValueField="surveyName">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Group Project %>" SelectCommand="GetNameSurvey" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    <asp:Button ID="btnSelect" runat="server" Text="Select Survey" OnClick="btnSelect_Click" />
    <asp:Label ID="Label1" runat="server"></asp:Label><asp:TextBox ID="TextBox1" runat="server" Visible="false"></asp:TextBox>
<%--    <br />
    <asp:Label ID="Label2" runat="server"></asp:Label><asp:TextBox ID="TextBox2" runat="server" Visible="false"></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server"></asp:Label><asp:TextBox ID="TextBox3" runat="server" Visible="false"></asp:TextBox>
    <br />
    <asp:Label ID="Label5" runat="server"></asp:Label><asp:TextBox ID="TextBox4" runat="server" Visible="false"></asp:TextBox>
    <br />
    <asp:Label ID="Label4" runat="server"></asp:Label><asp:TextBox ID="TextBox5" runat="server" Visible="false"></asp:TextBox>
    <br />
    <asp:Label ID="Label6" runat="server"></asp:Label><asp:TextBox ID="TextBox6" runat="server" Visible="false"></asp:TextBox>
    <br />
    <asp:Label ID="Label7" runat="server"></asp:Label><asp:TextBox ID="TextBox7" runat="server" Visible="false"></asp:TextBox>
    <br />
    <asp:Label ID="Label8" runat="server"></asp:Label><asp:TextBox ID="TextBox8" runat="server" Visible="false"></asp:TextBox>
    <br />
    <asp:Label ID="Label9" runat="server"></asp:Label><asp:TextBox ID="TextBox9" runat="server" Visible="false"></asp:TextBox>
    <br />
    <asp:Label ID="Label10" runat="server"></asp:Label><asp:TextBox ID="TextBox10" runat="server" Visible="false"></asp:TextBox>--%>
    <asp:PlaceHolder ID="container" runat="server" Visible="false">
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="Submit" />
</asp:PlaceHolder>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder5" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>

