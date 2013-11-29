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
    public static Project[] GetProjects()
    {
        SimpleQuery<Project> q = new SimpleQuery<Project>(@"
          from Project p Order by p.AddedDate desc");
        return q.Execute();
    }
}