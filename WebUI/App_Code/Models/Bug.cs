using Castle.ActiveRecord;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Bug 的摘要说明
/// </summary>

[ActiveRecord("Bugs")]
public class Bug : ActiveRecordBase
{
    private int bugId;
    private string title;
    private string description;
    private string addedBy;
    private DateTime addedDate;
    private int status;
    private Project project;

    [PrimaryKey]
    public int BugId
    {
        get { return bugId; }
        set { bugId = value; }
    }

    [Property]
    public string Title
    {
        get { return title; }
        set { title = value; }
    }

    [Property(ColumnType = "StringClob")]
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
    [Property]
    public int Status
    {
        get { return status; }
        set { status = value; }
    }

    [BelongsTo("ProjectId")]
    public Project Project
    {
        get { return project; }
        set { project = value; }
    }
}