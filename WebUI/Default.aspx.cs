using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //create your new user and set properties
        Person myPerson = new Person();
        myPerson.Username = "name";
        myPerson.Password = "secret"; 
        try
        {
            //try to save myPerson to database
            myPerson.Create();
        }
        catch (Exception err) { 
            string errReport = "Failed trying to save user";
            errReport += err.Message; 
         //   System.Diagnostics.Debug.Write(errReport);
            Response.Write(errReport);
        }
    }
}