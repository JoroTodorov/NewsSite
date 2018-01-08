﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Articles.aspx.cs"
    Inherits="NewsSystem.Views.Articles"
    MasterPageFile="~/Views/Site.Master" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div class="container body-content">
        <div class="row">
            <a class="col-md-2 btn btn-default">Sort by Title</a>
            <a class="col-md-2 btn btn-default">Sort by Date</a>
            <a class="col-md-2 btn btn-default">Sort by Category</a>
            <a class="col-md-2 btn btn-default">Sort by Likes</a>
        </div>

        <div class="row">
            <h3>What is Lorem Ipsum?
            <a class="btn btn-info" href="#">Edit</a>
                <a class="btn btn-danger" href="#">Delete</a>
            </h3>
            <p>Category: Economy</p>
            <p>
                Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&amp;amp;amp;amp;#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centurie...
            </p>
            <p>Likes count: 0</p>
            <div>
                <i>by Anonimous</i>
                <i>created on: 10/31/2014 11:02:29 AM</i>
            </div>
        </div>

        <div class="row">
            <h3>Why do we use it?
            <a class="btn btn-info " href="#">Edit</a>
                <a class="btn btn-danger" href="#">Delete</a>
            </h3>
            <p>Category: Economy</p>
            <p>
                It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &amp;amp;amp;amp;#39;Content here, content here&amp;amp;amp;amp;#39;, ...
            </p>
            <p>Likes count: 0</p>
            <div>
                <i>by Anonimous</i>
                <i>created on: 10/30/2014 11:02:29 AM</i>
            </div>
        </div>

        <div class="row">
            <h3>Where does it come from?
            <a class="btn btn-info " href="#">Edit</a>
                <a class="btn btn-danger" href="#">Delete</a>
            </h3>
            <p>Category: Education</p>
            <p>
                Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur,...
            </p>
            <p>Likes count: 0</p>
            <div>
                <i>by Anonimous</i>
                <i>created on: 10/31/2014 11:02:29 AM</i>
            </div>
        </div>

        <a href="#" style="display: none;" class="btn btn-info pull-right" onclick="(function (ev) { $('#panelInsertArticle').show(); $('#buttonShowInsertPanel').hide(); }())">Insert new Article</a>
        <div>
            <div class="row">
                <h3>Title:
                <input type="text" style="width: 300px;">
                </h3>
                <p>
                    Category:
                <select id="MainContent_ListViewArticles_DropDownListCategories">
                    <option value="5">Art</option>
                    <option value="1">Economy</option>
                    <option value="2">Education</option>
                    <option value="4">Science</option>
                    <option value="3">Sports</option>
                    <option value="6">Technology</option>
                    <option value="7">Weather</option>
                </select>
                </p>
                <p>
                    Content:
                <textarea rows="6" cols="20" style="width: 300px;"></textarea>
                </p>
                <div>
                    <a class="btn btn-success" href=".\Edit%20Articles.html">Insert</a>
                    <a class="btn btn-danger" href=".\Edit%20Articles.html">Cancel</a>
                </div>
            </div>
        </div>

        <div class="row">
            <span><a class="aspNetDisabled">Previous</a>&nbsp;<span>1</span>&nbsp;<a href="#">2</a>&nbsp;<a href="#">Next</a>&nbsp;</span>
        </div>
    </div>
</asp:Content>
