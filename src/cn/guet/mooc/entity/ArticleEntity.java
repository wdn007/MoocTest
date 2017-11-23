package cn.guet.mooc.entity;

import java.util.Arrays;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "article")
public class ArticleEntity {
	 	private long id;
	 	private String module;
	 	private String title;
	 	private String content;
	 	private String keyword;
	 	private String classification;
	 	private Integer visitCount;
	 	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	 	private Date createDate;
	 	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	 	private Date modifyDate;
	 	private String userId;
	 	private String username;
	    private Integer status;
	    
		public ArticleEntity() {
			super();
		}

		public ArticleEntity(long id, String module, String title,
				String content, String keyword, String classification,
				Integer visitCount, Date createDate, Date modifyDate,
				String userId, String username, Integer status) {
			super();
			this.id = id;
			this.module = module;
			this.title = title;
			this.content = content;
			this.keyword = keyword;
			this.classification = classification;
			this.visitCount = visitCount;
			this.createDate = createDate;
			this.modifyDate = modifyDate;
			this.userId = userId;
			this.username = username;
			this.status = status;
		}

		@Id
		@Column(name = "id", nullable = false, unique = true)
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		public long getId() {
			return id;
		}
		public void setId(long id) {
			this.id = id;
		}

		@Column(name = "module", nullable = false)
		public String getModule() {
			return module;
		}
		public void setModule(String module) {
			this.module = module;
		}
		
		@Column(name = "title", nullable = false)
		public String getTitle() {
			return title;
		}
		public void setTitle(String title) {
			this.title = title;
		}

		@Column(name = "content", nullable = false)
		public String getContent() {
			return content;
		}
		public void setContent(String content) {
			this.content = content;
		}

		@Column(name = "keyword", nullable = true)
		public String getKeyword() {
			return keyword;
		}
		public void setKeyword(String keyword) {
			this.keyword = keyword;
		}

		@Column(name = "classification", nullable = false)
		public String getClassification() {
			return classification;
		}
		public void setClassification(String classification) {
			this.classification = classification;
		}

		@Column(name = "visit_count", nullable = true)
		public Integer getVisitCount() {
			return visitCount;
		}
		public void setVisitCount(Integer visitCount) {
			this.visitCount = visitCount;
		}

		@Column(name = "create_date", nullable = false)
		public Date getCreateDate() {
			return createDate;
		}
		public void setCreateDate(Date createDate) {
			this.createDate = createDate;
		}

		@Column(name = "modify_date", nullable = true)
		public Date getModifyDate() {
			return modifyDate;
		}
		public void setModifyDate(Date modifyDate) {
			this.modifyDate = modifyDate;
		}

		@Column(name = "user_id", nullable = false)
		public String getUserId() {
			return userId;
		}
		public void setUserId(String userId) {
			this.userId = userId;
		}

		@Column(name = "username", nullable = true)
		public String getUsername() {
			return username;
		}
		public void setUsername(String username) {
			this.username = username;
		}

		@Column(name = "status", nullable = true)
		public Integer getStatus() {
			return status;
		}
		public void setStatus(Integer status) {
			this.status = status;
		}

		@Override
		public String toString() {
			return "ArticleEntity [id=" + id + ", module=" + module
					+ ", title=" + title + ", content=" + content
					+ ", keyword=" + keyword + ", classification="
					+ classification + ", visitCount=" + visitCount
					+ ", createDate=" + createDate + ", modifyDate="
					+ modifyDate + ", userId=" + userId + ", username="
					+ username + ", status=" + status + "]";
		}

		
	    
		
	    
	    
}
