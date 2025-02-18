package com.oti.myuniversity.domain.board.model;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class Board {
	private int boardId;
	private String boardTitle;
	private String boardContent;
	private Date boardDate;
	private int boardCategory;
	private Date reportDeadline;
	private Date submissionSubmitDate;
	private int submissionScore;
	private String memberId;
	private Timestamp reportDeadlineTime;
	private int reportNoticeId;
	private String isSubmit;
	
	private String memberName;
	
	private List<BoardFile> fileList;
	
	public int getBoardId() {
		return boardId;
	}
	public void setBoardId(int boardId) {
		this.boardId = boardId;
	}
	public String getBoardTitle() {
		return boardTitle;
	}
	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}
	
	public String getIsSubmit() {
		return isSubmit;
	}
	public void setIsSubmit(String isSubmit) {
		this.isSubmit = isSubmit;
	}
	public String getBoardContent() {
		return boardContent;
	}
	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}
	public Date getBoardDate() {
		return boardDate;
	}
	public void setBoardDate(Date boardDate) {
		this.boardDate = boardDate;
	}
	public int getBoardCategory() {
		return boardCategory;
	}
	public void setBoardCategory(int boardCategory) {
		this.boardCategory = boardCategory;
	}
	public Date getReportDeadline() {
		return reportDeadline;
	}
	public void setReportDeadline(Date reportDeadline) {
		this.reportDeadline = reportDeadline;
	}
	public Date getSubmissionSubmitDate() {
		return submissionSubmitDate;
	}
	public void setSubmissionSubmitDate(Date submissionSubmitDate) {
		this.submissionSubmitDate = submissionSubmitDate;
	}
	public int getSubmissionScore() {
		return submissionScore;
	}
	public void setSubmissionScore(int submissionScore) {
		this.submissionScore = submissionScore;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public List<BoardFile> getFileList() {
		return fileList;
	}
	public void setFileList(List<BoardFile> fileList) {
		this.fileList = fileList;
	}
	
	public int getReportNoticeId() {
		return reportNoticeId;
	}
	public void setReportNoticeId(int reportNoticeId) {
		this.reportNoticeId = reportNoticeId;
	}
	public Timestamp getReportDeadlineTime() {
		return reportDeadlineTime;
	}
	public void setReportDeadlineTime(Timestamp reportDeadlineTime) {
		this.reportDeadlineTime = reportDeadlineTime;
	}
	
	
	@Override
	public String toString() {
		return "Board [boardId=" + boardId + ", boardTitle=" + boardTitle + ", boardContent=" + boardContent
				+ ", boardDate=" + boardDate + ", boardCategory=" + boardCategory + ", reportDeadline=" + reportDeadline
				+ ", submissionSubmitDate=" + submissionSubmitDate + ", submissionScore=" + submissionScore
				+ ", memberId=" + memberId + ", reportDeadLineTime=" + reportDeadlineTime + ", memberName=" + memberName
				+ "]";
	}
}