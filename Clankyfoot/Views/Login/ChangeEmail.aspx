<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Dashboard.Master" Inherits="System.Web.Mvc.ViewPage<Clankyfoot.Models.ChangeEmail>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Settings
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" runat="server">
    <% using(Html.BeginForm()) { %>
        <%: Html.ValidationSummary(true) %>
        <%: Html.AntiForgeryToken() %>
        <fieldset>
            <div class="display-field">
                <%: Html.LabelFor(model => model.email) %>
            </div>
            <div class="input-field">
                <%: Html.TextBoxFor(model => model.email) %>
                <%: Html.ValidationMessageFor(model => model.email) %>
            </div>
            <div class="display-field">
                <%: Html.LabelFor(model => model.password) %>
            </div>
            <div class="input-field">
                <%: Html.TextBoxFor(model => model.password) %>
                <%: Html.ValidationMessageFor(model => model.password) %>
            </div>
            <div>
                <input type="submit" value="save" />
            </div>
        </fieldset>
    <% } %>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="NavigationContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" runat="server">
</asp:Content>
