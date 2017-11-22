package cn.guet.mooc.entity;

import javax.persistence.*;
import java.sql.Timestamp;

/**
 * Created by wdn 
 */
@Entity
@Table(name = "course", schema = "spring_mvc", catalog = "")
public class CourseEntity
{
    private long id;
    private Timestamp createDate;
    private Timestamp modifyDate;
    private long version;
    private Timestamp beginTime;
    private String content;
    private String courseId;
    private String courseOutLine;
    private Integer courseProgress;
    private Timestamp endTime;
    private String name;
    private String picturePath;
    private String status;

    @Id
    @Column(name = "id", nullable = false)
    public long getId()
    {
        return id;
    }

    public void setId(long id)
    {
        this.id = id;
    }

    @Basic
    @Column(name = "create_date", nullable = false)
    public Timestamp getCreateDate()
    {
        return createDate;
    }

    public void setCreateDate(Timestamp createDate)
    {
        this.createDate = createDate;
    }

    @Basic
    @Column(name = "modify_date", nullable = false)
    public Timestamp getModifyDate()
    {
        return modifyDate;
    }

    public void setModifyDate(Timestamp modifyDate)
    {
        this.modifyDate = modifyDate;
    }

    @Basic
    @Column(name = "version", nullable = false)
    public long getVersion()
    {
        return version;
    }

    public void setVersion(long version)
    {
        this.version = version;
    }

    @Basic
    @Column(name = "begin_time", nullable = true)
    public Timestamp getBeginTime()
    {
        return beginTime;
    }

    public void setBeginTime(Timestamp beginTime)
    {
        this.beginTime = beginTime;
    }

    @Basic
    @Column(name = "content", nullable = true, length = 255)
    public String getContent()
    {
        return content;
    }

    public void setContent(String content)
    {
        this.content = content;
    }

    @Basic
    @Column(name = "course_id", nullable = false, length = 255)
    public String getCourseId()
    {
        return courseId;
    }

    public void setCourseId(String courseId)
    {
        this.courseId = courseId;
    }

    @Basic
    @Column(name = "course_out_line", nullable = true, length = 20000)
    public String getCourseOutLine()
    {
        return courseOutLine;
    }

    public void setCourseOutLine(String courseOutLine)
    {
        this.courseOutLine = courseOutLine;
    }

    @Basic
    @Column(name = "course_progress", nullable = true)
    public Integer getCourseProgress()
    {
        return courseProgress;
    }

    public void setCourseProgress(Integer courseProgress)
    {
        this.courseProgress = courseProgress;
    }

    @Basic
    @Column(name = "end_time", nullable = true)
    public Timestamp getEndTime()
    {
        return endTime;
    }

    public void setEndTime(Timestamp endTime)
    {
        this.endTime = endTime;
    }

    @Basic
    @Column(name = "name", nullable = true, length = 255)
    public String getName()
    {
        return name;
    }

    public void setName(String name)
    {
        this.name = name;
    }

    @Basic
    @Column(name = "picture_path", nullable = true, length = 255)
    public String getPicturePath()
    {
        return picturePath;
    }

    public void setPicturePath(String picturePath)
    {
        this.picturePath = picturePath;
    }

    @Basic
    @Column(name = "status", nullable = false, length = 255)
    public String getStatus()
    {
        return status;
    }

    public void setStatus(String status)
    {
        this.status = status;
    }

    @Override
    public boolean equals(Object o)
    {
        if (this == o)
        {
            return true;
        }
        if (o == null || getClass() != o.getClass())
        {
            return false;
        }

        CourseEntity that = (CourseEntity) o;

        if (id != that.id)
        {
            return false;
        }
        if (version != that.version)
        {
            return false;
        }
        if (createDate != null ? !createDate.equals(that.createDate) : that.createDate != null)
        {
            return false;
        }
        if (modifyDate != null ? !modifyDate.equals(that.modifyDate) : that.modifyDate != null)
        {
            return false;
        }
        if (beginTime != null ? !beginTime.equals(that.beginTime) : that.beginTime != null)
        {
            return false;
        }
        if (content != null ? !content.equals(that.content) : that.content != null)
        {
            return false;
        }
        if (courseId != null ? !courseId.equals(that.courseId) : that.courseId != null)
        {
            return false;
        }
        if (courseOutLine != null ? !courseOutLine.equals(that.courseOutLine) : that.courseOutLine != null)
        {
            return false;
        }
        if (courseProgress != null ? !courseProgress.equals(that.courseProgress) : that.courseProgress != null)
        {
            return false;
        }
        if (endTime != null ? !endTime.equals(that.endTime) : that.endTime != null)
        {
            return false;
        }
        if (name != null ? !name.equals(that.name) : that.name != null)
        {
            return false;
        }
        if (picturePath != null ? !picturePath.equals(that.picturePath) : that.picturePath != null)
        {
            return false;
        }
        if (status != null ? !status.equals(that.status) : that.status != null)
        {
            return false;
        }

        return true;
    }

    @Override
    public int hashCode()
    {
        int result = (int) (id ^ (id >>> 32));
        result = 31 * result + (createDate != null ? createDate.hashCode() : 0);
        result = 31 * result + (modifyDate != null ? modifyDate.hashCode() : 0);
        result = 31 * result + (int) (version ^ (version >>> 32));
        result = 31 * result + (beginTime != null ? beginTime.hashCode() : 0);
        result = 31 * result + (content != null ? content.hashCode() : 0);
        result = 31 * result + (courseId != null ? courseId.hashCode() : 0);
        result = 31 * result + (courseOutLine != null ? courseOutLine.hashCode() : 0);
        result = 31 * result + (courseProgress != null ? courseProgress.hashCode() : 0);
        result = 31 * result + (endTime != null ? endTime.hashCode() : 0);
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (picturePath != null ? picturePath.hashCode() : 0);
        result = 31 * result + (status != null ? status.hashCode() : 0);
        return result;
    }
}
