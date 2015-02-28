<%@ Page Title="Subject" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Subject.aspx.cs" Inherits="QuestionBank.Subject" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1>Add Subject</h1>
    </hgroup>
    <section>
        <asp:Label ID="Label1" runat="server" Text="Subject Code"></asp:Label>
        &nbsp;<asp:TextBox ID="txtSubjectCode" runat="server"></asp:TextBox><br />
        <asp:Label ID="Label2" runat="server" Text="Subject Name"></asp:Label>
        <asp:TextBox ID="txtSubjectName" runat="server"></asp:TextBox><br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnAddSubject" runat="server" Text="Add Subject" OnClick="btnAddSubject_Click" />
        
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="subject_code" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="319px" Height="64px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="subject_code" HeaderText="subject_code" ReadOnly="True" SortExpression="subject_code" />
                <asp:BoundField DataField="subject_name" HeaderText="subject_name" SortExpression="subject_name" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuestionBank_NizamConnectionString %>" SelectCommand="SELECT * FROM [subject]"></asp:SqlDataSource>
        
    </section>
</asp:Content>