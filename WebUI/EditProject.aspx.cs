using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EditProject : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (!string.IsNullOrEmpty(Request.QueryString["projectId"]))
            {
                int projectId = Int32.Parse(Request.QueryString["ProjectId"]);
                Project pj = new Project();
                pj = ProjectFactry.GetProjectById(projectId);

                txtTitle.Text = pj.Title;
                txtDescription.Text = pj.Description;
            }
        }
    }
    protected void txtSave_Click(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(Request.QueryString["projectId"]))
        {
            int projectId = Int32.Parse(Request.QueryString["ProjectId"]);
            Project pj = new Project();
            pj = ProjectFactry.GetProjectById(projectId);
            pj.Title = txtTitle.Text;
            pj.Description = txtDescription.Text;
            pj.AddedBy = User.Identity.Name;
            pj.AddedDate = DateTime.Now;
            try
            {
                pj.Save();
                Response.Redirect("~/Index.aspx");
            }
            catch (Exception err)
            {
                string errReport = "Failed trying to save project";
                errReport += err.Message;
                ltlStatus.Text = errReport;

            }
        }
        else
        {
            Project pj = new Project();
            pj.Title = txtTitle.Text;
            pj.Description = txtDescription.Text;
            pj.AddedBy = User.Identity.Name;
            pj.AddedDate = DateTime.Now;
            try
            {
                pj.Create();
                Response.Redirect("~/Index.aspx");
            }
            catch (Exception err)
            {
                string errReport = "Failed trying to save project";
                errReport += err.Message;
                ltlStatus.Text = errReport;

            }
        }

       
    }
}