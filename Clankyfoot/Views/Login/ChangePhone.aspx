<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Dashboard.Master" Inherits="System.Web.Mvc.ViewPage<Clankyfoot.Models.ChangePhone>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    ChangePhone
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" runat="server">
    <% using(Html.BeginForm()) { %>
        <%: Html.AntiForgeryToken() %>
        <%: Html.ValidationSummary(true) %>  
        <fieldset>
            <div class="display-field">
                <%: Html.LabelFor(model => model.phone) %>
            </div>
            <div>
                <%: Html.TextBoxFor(model => model.phone) %>
                <%: Html.ValidationMessageFor(model => model.phone) %>
            </div>
            <div class="display-field">
                <%: Html.LabelFor(model => model.password) %>
            </div>
            <div>
                <%: Html.TextBoxFor(model => model.password) %>
                <%: Html.ValidationMessageFor(model => model.password) %>
            </div>
            <div>
                <input type="submit" value="Save" />
            </div>
        </fieldset>
    <% } %>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="NavigationContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" runat="server">
</asp:Content>
