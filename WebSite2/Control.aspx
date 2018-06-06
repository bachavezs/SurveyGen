<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Control.aspx.cs" Inherits="Control" %>

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
                <li><a href="TakeSurvey.aspx" accesskey="5" title="">Take Survey</a></li>
                <li class="active"><a href="Control.aspx" accesskey="6" title="">Control</a></li>
                <li><a href="Logout.aspx" accesskey="7" title="">Logout</a></li>
            </ul>
        </div>
    </div>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:Group Project %>' SelectCommand="SELECT * FROM [tblSurveys]">
    </asp:SqlDataSource>
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder5" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>

