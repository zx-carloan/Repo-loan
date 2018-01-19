package com.third.autoloan.beans;

public class ComboboxData {
	private Long id;
	private String text;
	private String text2;
	private boolean selected;
	public ComboboxData() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ComboboxData(Long id, String text) {
		super();
		this.id = id;
		this.text = text;
	}
	
	
	public ComboboxData(String text,  String text2) {
		super();
		this.text = text;
		this.text2 = text2;
	}
	
	public String getText2() {
		return text2;
	}
	public void setText2(String text2) {
		this.text2 = text2;
	}
	public ComboboxData(Long id, String text, boolean selected) {
		super();
		this.id = id;
		this.text = text;
		this.selected = selected;
	}
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public boolean isSelected() {
		return selected;
	}
	public void setSelected(boolean selected) {
		this.selected = selected;
	}
	@Override
	public String toString() {
		return "ComboboxData [id=" + id + ", text=" + text + ", selected=" + selected + "]";
	}
}
