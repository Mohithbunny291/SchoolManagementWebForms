<%@ Page Title="" Language="C#" MasterPageFile="~/SchoolManagementWebForms.Master" AutoEventWireup="true" CodeBehind="Courses.aspx.cs" Inherits="SchoolManagementWebForms.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        margin-left: 320px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Courses</h2>
<p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CssClass="auto-style2" DataKeyNames="CourseId" DataSourceID="SqlDataSource1" Width="750px" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="CourseId" HeaderText="CourseId" InsertVisible="False" ReadOnly="True" SortExpression="CourseId" />
            <asp:BoundField DataField="CourseName" HeaderText="CourseName" SortExpression="CourseName" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:SchoolManagementDBConnectionString %>" DeleteCommand="DELETE FROM [Courses] WHERE [CourseId] = @original_CourseId AND (([CourseName] = @original_CourseName) OR ([CourseName] IS NULL AND @original_CourseName IS NULL)) AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL))" InsertCommand="INSERT INTO [Courses] ([CourseName], [Description]) VALUES (@CourseName, @Description)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Courses]" UpdateCommand="UPDATE [Courses] SET [CourseName] = @CourseName, [Description] = @Description WHERE [CourseId] = @original_CourseId AND (([CourseName] = @original_CourseName) OR ([CourseName] IS NULL AND @original_CourseName IS NULL)) AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_CourseId" Type="Int32" />
            <asp:Parameter Name="original_CourseName" Type="String" />
            <asp:Parameter Name="original_Description" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CourseName" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CourseName" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="original_CourseId" Type="Int32" />
            <asp:Parameter Name="original_CourseName" Type="String" />
            <asp:Parameter Name="original_Description" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
</asp:Content>
