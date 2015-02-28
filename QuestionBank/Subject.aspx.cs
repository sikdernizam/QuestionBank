using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuestionBank
{
    public partial class Subject : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddSubject_Click(object sender, EventArgs e)
        {
            QuestionBank_NizamEntities ques = new QuestionBank_NizamEntities();
            subject sub = new subject();

            sub.subject_name = txtSubjectName.Text;
            sub.subject_code = txtSubjectCode.Text;

            ques.AddTosubjects(sub);
            ques.SaveChanges();

        }
    }
}