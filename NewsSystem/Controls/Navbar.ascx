<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Navbar.ascx.cs" Inherits="NewsSystem.Controls.Navbar" %>

<div class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <a href="\" class="navbar-brand">News Site</a>
        </div>
        <div class="navbar-collapse collapse">

            <ul class="nav navbar-nav">
                <li><a href="\categories">Categories</a></li>
                <li><a href="\articles">Articles</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="\register" id="register" runat="server">Register</a></li>
                <li><a href="\login" id="login" runat="server">Log in</a></li>
                <li>
                    <asp:Button Text="Log out" ID="logout" runat="server" OnClick="Logout_Click"/></li>
            </ul>
        </div>
    </div>
</div>
