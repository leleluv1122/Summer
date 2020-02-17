package net.lele.model;

import lombok.Data;

@Data
public class Pagination {
	int pg = 1; // 현재 페이지
	int sz = 10; // 페이지 당 레코드 수
	int sm = 0; // departmentId
	int di = 0; // start month
	int recordCount;

	/*
	 * public String getQueryString() { return String.format("pg=%d&sz=%d&sm=%d",
	 * pg, sz, sm); }
	 */
}
