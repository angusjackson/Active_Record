using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Castle.ActiveRecord;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
     
        rpProjects.DataSource = ProjectFactry.GetProjects();
        rpProjects.DataBind();

        //Project pj = new Project();
        //pj.Title = "iChance";
        //pj.Description = "test";
        //pj.AddedBy = "doubletong";
        //pj.AddedDate = DateTime.Now;

        //try
        //{
        //    //try to save myPerson to database
        //    pj.Create();
        //    Response.Write("OK");
        //}
        //catch (Exception err)
        //{
        //    string errReport = "Failed trying to save user";
        //    errReport += err.Message;
        //    //   System.Diagnostics.Debug.Write(errReport);
        //    Response.Write(errReport);
        //}


        ////create your new user and set properties
        //Person myPerson = new Person();
        //myPerson.Username = "name1";
        //myPerson.Password = "secret1"; 
        //try
        //{
        //    //try to save myPerson to database
        //    myPerson.Create();
        //}
        //catch (Exception err) { 
        //    string errReport = "Failed trying to save user";
        //    errReport += err.Message; 
        // //   System.Diagnostics.Debug.Write(errReport);
        //    Response.Write(errReport);
        //}
    }
 
}