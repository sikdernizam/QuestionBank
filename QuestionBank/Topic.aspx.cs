using System;
using System.Collections.Generic;
using System.Data.Objects;
using System.Linq;
using System.ServiceModel.PeerResolvers;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuestionBank
{
    public partial class Topic : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddTopic_Click(object sender, EventArgs e)
        {
            QuestionBank_NizamEntities ques = new QuestionBank_NizamEntities();
            topic top = new topic();

            top.subject_code = cmbSubjectCode.Text.Trim();
            top.topics_code = txtTopicCode.Text.Trim();
            top.topics_name = txtTopicName.Text.Trim();

            ques.AddTotopics(top);
            ques.SaveChanges();
        }
    }
}