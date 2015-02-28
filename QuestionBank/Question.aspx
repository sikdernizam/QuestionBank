<%@ Page Title="Question" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Question.aspx.cs" Inherits="QuestionBank.Question" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1>Add Question</h1>
        <hr />
    </hgroup>
    <section>
        <asp:Label ID="Label1" runat="server" Text="Question Code"></asp:Label>
        &nbsp; <asp:TextBox ID="txtQuesCode" runat="server"></asp:TextBox><br />
        <asp:Label ID="Label2" runat="server" Text="Topic Code"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="topics_code" DataValueField="topics_code">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QuestionBank_NizamConnectionString %>" SelectCommand="SELECT [topics_code] FROM [topics]"></asp:SqlDataSource>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Question"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtQues" runat="server"></asp:TextBox><br />
        <asp:Label ID="Label4" runat="server" Text="Correct Answer"></asp:Label>
        &nbsp; <asp:TextBox ID="txtCrctAns" runat="server"></asp:TextBox><br />
        <asp:Label ID="Label5" runat="server" Text="Wrong Answer1"></asp:Label>
        &nbsp;<asp:TextBox ID="txtWrngAns1" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label6" runat="server" Text="Wrong Answer2"></asp:Label>
        &nbsp;<asp:TextBox ID="txtWrngAns2" runat="server"></asp:TextBox><br />
        <asp:Label ID="Label7" runat="server" Text="Wrong Answer3"></asp:Label>
        &nbsp;<asp:TextBox ID="txtWrngAns3" runat="server"></asp:TextBox><br />
        <asp:Label ID="Label8" runat="server" Text="Difficulty Level"></asp:Label>
        &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtDifLvl" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label9" runat="server" Text="Estimated Timer"></asp:Label>
        &nbsp;<asp:TextBox ID="txtEstTime" runat="server"></asp:TextBox><br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnAddQuestion" runat="server" Text="Add Question" OnClick="btnAddQuestion_Click" /><br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="question_code" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="question_code" HeaderText="question_code" ReadOnly="True" SortExpression="question_code" />
                <asp:BoundField DataField="topics_code" HeaderText="topics_code" SortExpression="topics_code" />
                <asp:BoundField DataField="question" HeaderText="question" SortExpression="question" />
                <asp:BoundField DataField="correct_ans" HeaderText="correct_ans" SortExpression="correct_ans" />
                <asp:BoundField DataField="wrong_answer1" HeaderText="wrong_answer1" SortExpression="wrong_answer1" />
                <asp:BoundField DataField="wrong_answer2" HeaderText="wrong_answer2" SortExpression="wrong_answer2" />
                <asp:BoundField DataField="wrong_answer3" HeaderText="wrong_answer3" SortExpression="wrong_answer3" />
                <asp:BoundField DataField="difficulty_level" HeaderText="difficulty_level" SortExpression="difficulty_level" />
                <asp:BoundField DataField="estimated_time" HeaderText="estimated_time" SortExpression="estimated_time" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuestionBank_NizamConnectionString %>" SelectCommand="SELECT * FROM [question]"></asp:SqlDataSource>
    </section>
    </asp:Content>