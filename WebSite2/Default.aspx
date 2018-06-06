<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

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
				<li class="active"><a href="default.aspx" accesskey="1" title="">Home</a></li>
				<li><a href="login.aspx" accesskey="2" title="">Login</a></li>
				<li><a href="Register.aspx" accesskey="3" title="">Register</a></li>
				<li><a href="Survey.aspx" accesskey="4" title="">Survey</a></li>
                <li><a href="TakeSurvey.aspx" accesskey="5" title="">Take Survey</a></li>
                <li><a href="Control.aspx" accesskey="6" title="">Control</a></li>
                <li><a href="Logout.aspx" accesskey="7" title="">Logout</a></li>
			</ul>
		</div>
	</div>
	
</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <div id="banner" class="container">
		<div class="title">
            <asp:Image ID="Image2" ImageUrl="~/Images/WuLogo.png" runat="server" size="200px" Height="200px" AlternateText="WuShock Logo" ImageAlign="TextTop"/>
			<h2>Welcome to Wu-Surveys</h2>
			<span class="byline">The Best Free Survey Service</span>
		</div>
		<ul class="actions">
			<li><a href="Survey.aspx" class="button">New Survey</a></li>
		</ul>
	</div>
     <div id="wrapper">
	<div id="three-column" class="container">
		<div class="title">
			<h2>About Our Team</h2>
		</div>
		<div class="tbox1">
			<h1>Tristan Jones</h1>
			<a href="Tristan.aspx" class="button button-alt">More Info</a>
		</div>
		<div class="tbox2">
			<h1>Bryce Chavez</h1>
			<a href="Bryce.aspx" class="button button-alt">More Info</a>
		</div>
		
	</div>
</div>
</asp:Content>

