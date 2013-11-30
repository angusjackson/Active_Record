using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Castle.ActiveRecord;
using Castle.ActiveRecord.Queries;

/// <summary>
/// ProjectFactry 的摘要说明
/// </summary>
public static class ProjectFactry
{
    /// <summary>
    /// Get All Projects
    /// </summary>
    /// <returns></returns>
    public static Project[] GetProjects()
    {
        SimpleQuery<Project> q = new SimpleQuery<Project>(@"
          from Project p Order by p.AddedDate desc");
        return q.Execute();
    }
    /// <summary>
    /// Get one project with projectId
    /// </summary>
    /// <param name="projectId"></param>
    /// <returns></returns>
    public static Project GetProjectById(int projectId)
    {
        SimpleQuery<Project> q = new SimpleQuery<Project>(@"
          from Project p where p.ProjectId = ?", projectId);
        return q.Execute().Single();
    }

    public static void DeleteProject(int projectId)
    {
        Project pj = new Project();
        SimpleQuery<Project> q = new SimpleQuery<Project>(@"
          from Project p where p.ProjectId = ?", projectId);
        pj= q.Execute().Single();

        pj.Delete();
    }
   
}