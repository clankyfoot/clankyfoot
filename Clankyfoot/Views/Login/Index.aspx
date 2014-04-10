<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Home.Master" Inherits="System.Web.Mvc.ViewPage<Clankyfoot.Models.Login>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Login
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" runat="server">
     <% using(Html.BeginForm()) { %>
        <%: Html.ValidationSummary(true) %>
        <%: Html.AntiForgeryToken() %>
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
                <%: Html.PasswordFor(model => model.password) %>
                <%: Html.ValidationMessageFor(model => model.password) %>
            </div>
            <div>
                <input type="submit" value="Login" />
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
