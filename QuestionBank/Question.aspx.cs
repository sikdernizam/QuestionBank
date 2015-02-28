using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuestionBank
{
    public partial class Question : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddQuestion_Click(object sender, EventArgs e)
        {
            QuestionBank_NizamEntities context = new QuestionBank_NizamEntities();
            question ques = new question();

            ques.question_code = txtQuesCode.Text.Trim();
            ques.topics_code = DropDownList1.Text.Trim();
            ques.question1 = txtQues.Text.Trim();
            ques.correct_ans = txtCrctAns.Text.Trim();
            ques.wrong_answer1 = txtWrngAns1.Text.Trim();
            ques.wrong_answer2 = txtWrngAns2.Text.Trim();
            ques.wrong_answer3 = txtWrngAns3.Text.Trim();
            ques.difficulty_level = txtDifLvl.Text.Trim();
            ques.estimated_time = txtEstTime.Text.Trim();
            
            context.AddToquestions(ques);
            context.SaveChanges();

        }
    }
}