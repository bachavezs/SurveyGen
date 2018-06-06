<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

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
				<li class="active"><a href="login.aspx" accesskey="2" title="">Login</a></li>
				<li><a href="Register.aspx" accesskey="3" title="">Register</a></li>
				<li><a href="Survey.aspx" accesskey="4" title="">Survey</a></li>
                <li><a href="TakeSurvey.aspx" accesskey="5" title="">Take Survey</a></li>
                <li><a href="Control.aspx" accesskey="6" title="">Control</a></li>
                <li><a href="Logout.aspx" accesskey="7" title="">Logout</a></li>
			</ul>
		</div>
	</div>
         <div id="content" class="container">
             <%--Div for login functionality  --%>
            <div class="title">
                <asp:Label ID="lblUsername" runat="server" Text="Username:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtUsername" runat="server" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" runat="server" ControlToValidate="txtUsername" ErrorMessage="Required"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
                :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtPassword" runat="server" TextMode="password"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" runat="server" ControlToValidate="txtPassword" ErrorMessage="Required"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" />
            </div>
            <ul class="actions">
            </ul>
        </div>
        <div>
        <br />
        <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
        <br />
    </div>
	
</div>
</asp:Content>

