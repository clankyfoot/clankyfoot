<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Home.Master" Inherits="System.Web.Mvc.ViewPage<Clankyfoot.Models.ChangePassword>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Change Password
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" runat="server">
    <% using(Html.BeginForm()) { %>
        <%: Html.ValidationSummary(true) %>
        <%: Html.AntiForgeryToken() %>
        <fieldset>
            <div class="display-field">
                <%: Html.LabelFor(model => model.password) %>
            </div>
            <div class="input-field">
                <%: Html.PasswordFor(model => model.password) %>
                <%: Html.ValidationMessageFor(model => model.password) %>
            </div>
            <div class="display-field">
                <%: Html.LabelFor(model => model.newPassword) %>
            </div>
            <div class="input-field">
                <%: Html.PasswordFor(model => model.newPassword) %>
                <%: Html.ValidationMessageFor(model => model.newPassword) %>
            </div>
            <div class="display-field">
                <%: Html.LabelFor(model => model.confirmPassword) %>
            </div>
            <div class="input-field">
                <%: Html.PasswordFor(model => model.confirmPassword) %>
                <%: Html.ValidationMessageFor(model => model.confirmPassword) %>
            </div>
            <div>
                <input type="submit" value="save" />
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
