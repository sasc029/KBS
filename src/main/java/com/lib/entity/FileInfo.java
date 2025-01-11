package com.lib.entity;

import java.util.Date;

import org.springframework.web.util.HtmlUtils;

/**
 * 文件信息
 * 
 * @author Yu Yufeng
 *
 */
public class FileInfo {
	private Long fileId;

	private String fileName;

	private Long fileSize;

	private String fileExt;

	private Long fileUserId;

	private String fileUuid;

	private String filePath;

	private Integer fileState;

	private Long fileClassId;

	private Date fileCreateTime;

	private String fileBrief;

	public FileInfo() {

	}

	public Long getFileId() {
		return fileId;
	}

	public String getFileName() {
		return fileName;
	}

	public Long getFileSize() {
		return fileSize;
	}

	public String getFileExt() {
		return fileExt;
	}

	public Long getFileUserId() {
		return fileUserId;
	}

	public String getFileUuid() {
		return fileUuid;
	}

	public String getFilePath() {
		return filePath;
	}

	public Integer getFileState() {
		return fileState;
	}

	public Long getFileClassId() {
		return fileClassId;
	}

	public Date getFileCreateTime() {
		return fileCreateTime;
	}

	public String getFileBrief() {
		return HtmlUtils.htmlEscape(fileBrief);
	}

	public void setFileId(Long fileId) {
		this.fileId = fileId;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public void setFileSize(Long fileSize) {
		this.fileSize = fileSize;
	}

	public void setFileExt(String fileExt) {
		this.fileExt = fileExt;
	}

	public void setFileUserId(Long fileUserId) {
		this.fileUserId = fileUserId;
	}

	public void setFileUuid(String fileUuid) {
		this.fileUuid = fileUuid;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}

	public void setFileState(Integer fileState) {
		this.fileState = fileState;
	}

	public void setFileClassId(Long fileClassId) {
		this.fileClassId = fileClassId;
	}

	public void setFileCreateTime(Date fileCreateTime) {
		this.fileCreateTime = fileCreateTime;
	}

	public void setFileBrief(String fileBrief) {
		this.fileBrief = fileBrief;
	}

	@Override
	public String toString() {
		return "FileInfo [fileId=" + fileId + ", fileName=" + fileName + ", fileSize=" + fileSize + ", fileExt="
				+ fileExt + ", fileUserId=" + fileUserId + ", fileUuid=" + fileUuid + ", filePath=" + filePath
				+ ", fileState=" + fileState + ", fileClassId=" + fileClassId + ", fileCreateTime=" + fileCreateTime
				+ ", fileBrief=" + fileBrief + "]";
	}

}