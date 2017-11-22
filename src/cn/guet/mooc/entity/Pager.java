package cn.guet.mooc.entity;

import java.util.List;

public class Pager
{

	// 指定页面参数
	private int pageSize; // 每页显示多少条记录
	private int currentPage; // 当前页

	// 查询数据库
	private int recordCount; // 总记录数
	private List recordList; // 本页的数据列表

	// 计算
	private int pageCount; // 总页数
	private int beginPageIndex; // 页码列表的开始索引（包含）
	private int endPageIndex; // 页码列表的结束索引（包含）

	public Pager() {
		super();
	}

	public Pager(int pageSize, int currentPage, int recordCount, List recordList) {
		this.pageSize = pageSize;
		this.currentPage = currentPage;
		this.recordCount = recordCount;
		this.recordList = recordList;

		// 计算总页码
		pageCount = (recordCount + pageSize - 1) / pageSize;

		// 计算beginPageIndex 和 endPageIndex
		// >>总页数不多于5页，则全部显示
		if (pageCount <= 10) {
			beginPageIndex = 1;
			endPageIndex = pageCount;
		}
		// >>总页数多于5页，则显示当前页附近的共5个页码
		else {
			// 当前页附近的共5个页码（前2个 + 当前页 + 后两个）
			beginPageIndex = currentPage - 2;
			endPageIndex = currentPage + 2;
			// 当前面的页码不足2个时，则显示前5个页码
			if (beginPageIndex < 1) {
				beginPageIndex = 1;
				endPageIndex = 5;
			}
			// 当后面的页码不足2个时，则显示后5个页码
			if (beginPageIndex > pageCount) {
				beginPageIndex = pageCount - 5 + 1;
				endPageIndex = pageCount;
			}
		}
	}

	/**
	 * @return 总页数
	 */
	public int getPageCount() {
		return (recordCount + pageSize - 1) / pageSize;
	}

	/**
	 * 计算当前页开始记录
	 * 
	 * @param pageSize
	 *            每页记录数
	 * @param currentPage
	 *            当前第几页
	 * @return 当前页开始记录号
	 */
	public int countBeginPageIndex(int currentPage, int pageSize) {
		int beginPageIndex = pageSize * (currentPage - 1);
		return beginPageIndex;
	}

	/**
	 * @return 尾页
	 */
	public int getEndPageIndex() {
		return getPageCount();
	}

	/**
	 * @return 上一页
	 */
	public int getPreviousPage() {
		if (currentPage <= 1) {
			return 1;
		}
		return currentPage - 1;
	}

	/**
	 * @return 下一页
	 */

	public int getNextPage() {
		if (currentPage >= pageCount) {
			return pageCount;
		}
		return currentPage + 1;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getRecordCount() {
		return recordCount;
	}

	public void setRecordCount(int recordCount) {
		this.recordCount = recordCount;
	}

	public List getRecordList() {
		return recordList;
	}

	public void setRecordList(List recordList) {
		this.recordList = recordList;
	}

}
