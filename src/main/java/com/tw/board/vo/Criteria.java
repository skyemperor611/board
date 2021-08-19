package com.tw.board.vo;

import java.util.Arrays;

public class Criteria {
	/*현재페이지*/
	private int pageNum;
	/*한 페이지 당 보여질 게시물 갯수*/
	private int amount;
	/*스킵할 게시물 수*/
	private int skip;
	/*검색어 키워드*/
	private String keyword;
	
	/*검색어 타입*/
	private String type;
	
	/*검색어 타입 배열*/
	private String[] typeArr;
	
	/*기본 생성자 -> 기본 세팅*/
	public Criteria() {
		this(1,10);
		this.skip = 0;
	}
	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
		this.skip = (pageNum-1)*amount;
	}
	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.skip = (pageNum-1)*this.amount;
		this.pageNum = pageNum;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.skip = (this.pageNum-1)*amount;
		this.amount = amount;
	}
	public int getSkip() {
		return skip;
	}
	public void setSkip(int skip) {
		this.skip = skip;
	}
	
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
		this.typeArr = type.split("");
	}
	public String[] getTypeArr() {
		return typeArr;
	}
	public void setTypeArr(String[] typeArr) {
		this.typeArr = typeArr;
	}
	@Override
	public String toString() {
		return "Criteria [pageNum=" + pageNum + ", amount=" + amount + ", skip=" + skip + ", keyword=" + keyword
				+ ", type=" + type + ", typeArr=" + Arrays.toString(typeArr) + "]";
	}
	
	
	
	
	
	
	
	
	
	
	

}
