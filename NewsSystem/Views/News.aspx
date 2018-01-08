<%@ Page Title="Home" Language="C#" AutoEventWireup="true"
    CodeBehind="News.aspx.cs" Inherits="NewsSystem.Views.News"
    MasterPageFile="~/Views/Site.Master" %>

<%@ Import Namespace="NewsSystem.Models" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div class="container body-content">
        <h1>News</h1>
        <h2>Most popular articles</h2>

        <asp:Repeater runat="server" ID="articles" SelectMethod="GetTopArticles" ItemType="NewsSystem.Models.Article">
            <ItemTemplate>
                <div class="row">
                    <h3><a href="/articles/details/<%#: Item.Id %>"><%#: Item.Title %></a>
                        <small><%#: Item.Category.Name %></small></h3>
                    <p><%#:Item.Content %> </p>
                    <p>Likes: <%#: Item.Likes %></p>
                    <div>
                        <i>by <%#: Item.Author.UserName %></i>
                        <i><%#: Item.DateCreated %></i>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>

        <h2>All categories</h2>
        <asp:Repeater ID="categories" runat="server"
            SelectMethod="GetCategories" ItemType="NewsSystem.Models.Category">
            <ItemTemplate>
                <div class="col-md-6">
                    <h3><%#: Item.Name %></h3>
                    <asp:Repeater ID="categoryArticles" runat="server" ItemType="NewsSystem.Models.Article"
                        DataSource="<%# Item.Articles.OrderByDescending(a => a.DateCreated).Take(3) %>">
                        <ItemTemplate>
                            <ul>
                                <li>
                                    <a href="/articles/details/<%#: Item.Id %>">
                                        <strong><%#: Item.Title %></strong>
                                        <i>by <%#: Item.Author.UserName %></i></a>
                                </li>
                            </ul>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
