﻿<%@ Page Title="创建项目" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="EditProject.aspx.cs" Inherits="EditProject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPH_MainContent" Runat="Server">

    <div class="col-lg-12">
        <div class="panel panel-default">
  <div class="panel-heading">Create New Project</div>
  <div class="panel-body">
        <section class="form-horizontal" role="form">
  <div class="form-group">
    <label for="ctl00_CPH_MainContent_txtTitle" class="col-sm-2 control-label">Project Title</label>
    <div class="col-sm-10">
        <asp:TextBox ID="txtTitle" runat="server" CssClass="form-control" placeholder="Project Title"></asp:TextBox>      
    </div>
  </div>
  <div class="form-group">
    <label for="ctl00_CPH_MainContent_txtDescription" class="col-sm-2 control-label">Description</label>
    <div class="col-sm-10">
        <asp:TextBox ID="txtDescription" CssClass="form-control" TextMode="MultiLine" placeholder="Description" runat="server"></asp:TextBox>      
    </div>
  </div>
  
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
        <asp:Button ID="txtSave" runat="server" CssClass="btn btn-primary" Text="Save" OnClick="txtSave_Click" />
        <a href="Index.aspx" class="btn btn-default">Back</a>

        <asp:Literal ID="ltlStatus" runat="server"></asp:Literal>
    </div>
  </div>
</section>
  </div>
</div>

        
    </div>
</asp:Content>

