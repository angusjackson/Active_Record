using System;
using System.Collections;
using System.Linq;
using System.Web;
using Castle.ActiveRecord;
using Castle.ActiveRecord.Queries;
using System.Collections;

/// <summary>
/// BugFactry 的摘要说明
/// </summary>
public static class BugFactry
{
    /// <summary>
    /// Get All Bugs
    /// </summary>
    /// <returns></returns>
    public static Bug[] GetBugs()
    {
        SimpleQuery<Bug> q = new SimpleQuery<Bug>(@"
          from Bug p Order by p.AddedDate desc");
        return q.Execute();
    }

    public static IList GetBugsByProjectId(int projectId)
    {
        SimpleQuery<Project> q = new SimpleQuery<Project>(@"
          from Project p where p.ProjectId = ?", projectId);
        Project pj = q.Execute().Single();
        return pj.Bugs;
    }


    /// <summary>
    /// Get one Bug with BugId
    /// </summary>
    /// <param name="BugId"></param>
    /// <returns></returns>
    public static Bug GetBugById(int BugId)
    {
        SimpleQuery<Bug> q = new SimpleQuery<Bug>(@"
          from Bug p where p.BugId = ?", BugId);
        return q.Execute().Single();
    }

    public static void DeleteBug(int BugId)
    {
        Bug pj = new Bug();
        SimpleQuery<Bug> q = new SimpleQuery<Bug>(@"
          from Bug p where p.BugId = ?", BugId);
        pj= q.Execute().Single();

        pj.Delete();
    }

    /// <summary>
    /// Kill bug
    /// </summary>
    /// <param name="BugId"></param>
    public static void KillBug(int BugId)
    {
        Bug pj = new Bug();
        SimpleQuery<Bug> q = new SimpleQuery<Bug>(@"
          from Bug p where p.BugId = ?", BugId);
        pj = q.Execute().Single();

        pj.Status=1;
        pj.Save();
    }


    public static string BugStatus(int status)
    {
        return status == 0 ? "new bug" : "Resolved";
    }

    public static string BugTitleStatus(int status,string Title)
    {
        return status == 0 ? Title : "<del>" + Title + "</del>";
    }
   
}