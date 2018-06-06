<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

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
				<li class="active"><a href="Register.aspx" accesskey="3" title="">Register</a></li>
				<li><a href="Survey.aspx" accesskey="4" title="">Survey</a></li>
                <li><a href="TakeSurvey.aspx" accesskey="5" title="">Take Survey</a></li>
                <li><a href="Control.aspx" accesskey="6" title="">Control</a></li>
                <li><a href="Logout.aspx" accesskey="7" title="">Logout</a></li>
			</ul>
		</div>
	</div>
	<asp:Panel ID="pnlRegistration" runat="server">
      <h3>Registration</h3>
        <div>
            <asp:Label ID="lblFirstName" runat="server" Text="First Name:" CssClass="tcell"></asp:Label>
            <asp:TextBox ID="txtFirstName" runat="server" CssClass="tcell"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorFirst" runat="server" ControlToValidate="txtFirstName" ErrorMessage="Required"></asp:RequiredFieldValidator>
        </div>
        <div>
            <asp:Label ID="lblLastName" runat="server" Text="Last Name:" CssClass="tcell"></asp:Label>
            <asp:TextBox ID="txtLastName" runat="server" CssClass="tcell"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldLast" runat="server" ControlToValidate="txtLastName" ErrorMessage="Required"></asp:RequiredFieldValidator>
        </div>
        <div>
            <asp:Label ID="lblEmail" runat="server" Text="Email:" CssClass="tcell"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="tcell" TextMode="Email"></asp:TextBox>
        </div>
           <div>
            <asp:Label ID="lblUsername" runat="server" Text="Username:" CssClass="tcell"></asp:Label>
            <asp:TextBox ID="txtUsername" runat="server" CssClass="tcell"></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidatorUser" runat="server" ControlToValidate="txtUsername" ErrorMessage="Required"></asp:RequiredFieldValidator>
        </div>
        <div>
            <asp:Label ID="lblPassword" runat="server" Text="Password" CssClass="tcell"></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" CssClass="tcell" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" runat="server" ControlToValidate="txtPassword" ErrorMessage="Required"></asp:RequiredFieldValidator>
        </div>
        <div>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" CssClass="tcell" />
        </div>
    </asp:Panel>
    <div>
        <br />
        <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
        <br />        
    </div>
</div>

</asp:Content>


