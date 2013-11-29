using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Castle.ActiveRecord;
using System.Collections;
using NHibernate;

/// <summary>
/// Project 的摘要说明
/// </summary>
/// 
 [ActiveRecord("Projects")]
public class Project : ActiveRecordBase
{
    private int projectId;
    private string title;
    private string description;
    private string addedBy;
    private DateTime addedDate;
    private IList bugs = new ArrayList();

    [PrimaryKey]
    public int ProjectId
    {
        get { return projectId; }
        set { projectId = value; }
    }

    [Property]
    public string Title
    {
        get { return title; }
        set { title = value; }
    }

     [Property]
    public string Description
    {
        get { return description; }
        set { description = value; }
    }

     [Property]
     public string AddedBy
     {
         get { return addedBy; }
         set { addedBy = value; }
     }

     [Property]
     public DateTime AddedDate
     {
         get { return addedDate; }
         set { addedDate = value; }
     }

     [HasMany(typeof(Bug), Table = "Bugs", ColumnKey = "ProjectId", Inverse=true)]
     public IList Bugs
     {
         get { return bugs; }
         set { bugs = value; }
     }

     public IList<Project> FindAll()
     {
         string query = @"select * from Projects order by AddedDate desc";

         return (IList<Project>)ActiveRecordMediator<Project>.Execute(
             delegate(ISession session, object instance)
             {
                 return session.CreateSQLQuery(query)                    
                     .List<Project>();
             }, this);
     }
}