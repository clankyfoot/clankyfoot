<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Dashboard.Master" Inherits="System.Web.Mvc.ViewPage<Clankyfoot.Models.CreateUser>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Create
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" runat="server">
    <% using(Html.BeginForm()) { %>
        <%: Html.AntiForgeryToken() %>
        <%: Html.ValidationSummary(true) %>
        <fieldset>
            <div class="display-field">
                <%: Html.LabelFor(model => model.username) %>
            </div>
            <div class="input-field">
                <%: Html.TextBoxFor(model => model.username) %>
                <%: Html.ValidationMessageFor(model => model.username) %>
            </div>
            <div class="display-field">
                <%: Html.LabelFor(model => model.password) %>
            </div>
            <div class="input-field">
                <%: Html.TextBoxFor(model => model.password) %>
                <%: Html.ValidationMessageFor(model => model.password) %>
            </div>
            <div class="display-field">
                <%: Html.LabelFor(model => model.confirmPassword) %>
            </div>
            <div class="input-field">
                <%: Html.TextBoxFor(model => model.confirmPassword) %>
                <%: Html.ValidationMessageFor(model => model.confirmPassword) %>
            </div>
            <div class="display-field">
                <%: Html.LabelFor(model => model.phone) %>
            </div>
            <div class="input-field">
                <%: Html.TextBoxFor(model => model.phone) %>
                <%: Html.ValidationMessageFor(model => model.phone) %>
            </div>
            <div class="display-field">
                <%: Html.LabelFor(model => model.email) %>
            </div>
            <div class="input-field">
                <%: Html.TextBoxFor(model => model.email) %>
                <%: Html.ValidationMessageFor(model => model.email) %>
            </div>
            <div>
                <input type="submit" value="Create" />
            </div>
        </fieldset>
    <% } %>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="NavigationContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" runat="server">
</asp:Content>
