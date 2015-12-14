package com.publisher;

public class DmDbDoc {
	
	private int id;
	private String dmc;
	private String name;
	private String modified;
	private String content;
	private int security;
	private String language;
	private String associateFile;
	private String html;
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getHtml() {
		return html;
	}

	public void setHtml(String str) {
		this.html = str;
	}

	public String getAssociateFile() {
		return associateFile;
	}

	public void setAssociateFile(String associateFile) {
		this.associateFile = associateFile;
	}

	private String [][] components = new String[Config.SEARCH_CLASS.length][];

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDmc() {
		return dmc;
	}

	public void setDmc(String dmc) {
		this.dmc = dmc;
	}

	public String getModified() {
		return modified;
	}

	public void setModified(String modified) {
		this.modified = modified;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getSecurity() {
		return security;
	}

	public void setSecurity(int security) {
		this.security = security;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	public String[][] getComponents() {
		return components;
	}

	public void setComponents(String[][] components) {
		this.components = components;
	}
	
	
}