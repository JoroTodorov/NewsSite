<%@ Page Title="Home" Language="C#" AutoEventWireup="true"
    CodeBehind="Categories.aspx.cs" Inherits="NewsSystem.Views.Categories"
    MasterPageFile="~/Views/Site.Master" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div class="container body-content">
        <div class="row">
            <a class="btn btn-default" href="#">Category Name</a>
        </div>

        <div class="row">
            <div class="col-md-3">Art</div>
            <a class="btn btn-info" href="#">Edit</a>
            <a class="btn btn-danger" href="#">Delete</a>
        </div>

        <div class="row">
            <div class="col-md-3">Economy</div>
            <a class="btn btn-info" href="#">Edit</a>
            <a class="btn btn-danger" href="#)">Delete</a>
        </div>

        <div class="row">
            <div class="col-md-3">Education</div>
            <a class="btn btn-info" href="#">Edit</a>
            <a class="btn btn-danger" href="#">Delete</a>
        </div>

        <div class="row">
            <div class="col-md-3">Science</div>
            <a class="btn btn-info" href="#">Edit</a>
            <a class="btn btn-danger" href="#">Delete</a>
        </div>

        <div class="row">
            <div class="col-md-3">Sports</div>
            <a class="btn btn-info" href="#">Edit</a>
            <a class="btn btn-danger" href="#">Delete</a>
        </div>

        <div class="row">
            <div class="col-md-3">
                <input type="text">
            </div>
            <a class="btn btn-info" href="#">Save</a>
            <a class="btn btn-danger" href="#">Cancel</a>
        </div>

        <div class="row">
            <span><a class="aspNetDisabled">Previous</a>&nbsp;<span>1</span>&nbsp;<a href="#">2</a>&nbsp;<a href="#">Next</a>&nbsp;</span>
        </div>
    </div>
</asp:Content>
