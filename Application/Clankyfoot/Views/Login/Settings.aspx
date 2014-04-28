<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Dashboard.Master" Inherits="System.Web.Mvc.ViewPage<Clankyfoot.Models.Settings>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Settings
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" runat="server">s
    <% using(Html.BeginForm()) { %>
        <%: Html.ValidationSummary(true) %>
        <%: Html.AntiForgeryToken() %>
        <fieldset>
            <div class="display-field">
                <%: Html.LabelFor(model => model.username) %>
                <%: Html.DisplayFor(model => model.username) %>
            </div>
            <div class="display-field">
                <%: Html.LabelFor(model => model.email) %>
                <%: Html.DisplayFor(model => model.email) %>
                <%: Html.ActionLink("Change Email", "ChangeEmail", controllerName: "Login") %>
            </div>
            <div class="display-field">
                <%: Html.LabelFor(model => model.phone) %>
                <%: Html.DisplayFor(model => model.phone) %>
                <%: Html.ActionLink("Change Phone", "ChangePhone", controllerName: "Login") %>
            </div>
            <div>
                <%: Html.ActionLink("Change Password", "ChangePassowrd", controllerName: "Login") %>
            </div>
            <div>
                <%: Html.LabelFor(model => model.lastLogin) %>
                <%: Html.DisplayFor(model => model.lastLogin) %>
            </div>
            <div>
                <%: Html.ActionLink("Delete my account", "Delete", controllerName: "Login") %>
            </div>
        </fieldset>
    <% } %>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Scripts" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="Styles" runat="server">
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="NavigationContent" runat="server">
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="FooterContent" runat="server">
</asp:Content>
