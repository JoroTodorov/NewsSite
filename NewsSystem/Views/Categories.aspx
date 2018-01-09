<%@ Page Title="Home" Language="C#" AutoEventWireup="true"
    CodeBehind="Categories.aspx.cs" Inherits="NewsSystem.Views.Categories"
    MasterPageFile="~/Views/Site.Master" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div class="container body-content">

        <asp:ListView ItemType="NewsSystem.Models.Category" ItemPlaceholderID="categoryId"
            ID="AllCategories" runat="server" DataKeyNames="Id" InsertItemPosition="LastItem"
            EnableModelValidation="true"
            AllowPaging="true"
            PageIndex="4"
            SelectMethod="GetCategories"
            DeleteMethod="DeleteCategory"
            UpdateMethod="ChangeCategoryName"
            InsertMethod="AddCategory">
            <InsertItemTemplate>
                <div class="row">
                    <div class="col-md-7">
                        <input type="text" name="categoryName" />
                    </div>
                    <div class="col-md-2">
                        <asp:LinkButton CssClass="btn btn-info" runat="server" CommandName="Insert" Text="Add"></asp:LinkButton>
                    </div>
                    <div class="col-md-2">
                        <asp:LinkButton CssClass="btn btn-danger" runat="server" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                    </div>
                </div>
            </InsertItemTemplate>
            <ItemTemplate>
                <div class="row">
                    <div class="col-md-7">
                        <%#: Item.Name %>
                    </div>
                    <div class="col-md-2">
                        <asp:LinkButton CssClass="btn btn-info" runat="server" CommandName="Edit" Text="Edit"></asp:LinkButton>
                    </div>
                    <div class="col-md-2">
                        <asp:LinkButton CssClass="btn btn-danger" runat="server" CommandName="Delete" Text="Delete"></asp:LinkButton>
                    </div>
                </div>
            </ItemTemplate>
            <EditItemTemplate>
                <div class="row">
                    <div class="col-md-7">
                        <asp:TextBox runat="server" Text="<%#: Item.Name %>"></asp:TextBox>
                    </div>
                    <div class="col-md-2">
                        <asp:LinkButton CssClass="btn btn-success" runat="server" CommandName="Update" Text="Save"></asp:LinkButton>
                    </div>
                    <div class="col-md-2">
                        <asp:LinkButton CssClass="btn btn-danger" runat="server" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                    </div>
                </div>
            </EditItemTemplate>
            <LayoutTemplate>
                <asp:PlaceHolder runat="server" ID="categoryId"></asp:PlaceHolder>

                <div class="row">
                    <div class="col-md-2">
                        <asp:LinkButton CssClass="btn btn-default" runat="server"
                            CommandName="Sort" CommandArgument="Name" Text="Sort by Name"></asp:LinkButton>
                    </div>
                </div>
                <hr />
                <asp:DataPager runat="server" PageSize="2">
                    <Fields>
                        <asp:NextPreviousPagerField ShowFirstPageButton="false" ShowNextPageButton="False" />
                        <asp:NumericPagerField NumericButtonCssClass="numericButtonCSS" />
                        <asp:NextPreviousPagerField ShowLastPageButton="false" ShowPreviousPageButton="False" />
                    </Fields>
                </asp:DataPager>
            </LayoutTemplate>
        </asp:ListView>

    </div>
</asp:Content>
