package net.lele.model;

import lombok.Data;

@Data
public class Pagination {
	int pg = 1; // 현재 페이지
	int sz = 15; // 페이지 당 레코드 수 - 한 페이지의 레코드 수
	int di = 0; // departmentId
	int recordCount; // 전체 레코드 수
	// 페이지 하단에 페이지 번호 목록을 출력하려면 레코드 수를 알아야 한다.

	public String getQueryString() {
		return String.format("pg=%d&sz=%d&di=%d", pg, sz, di);
	}
	// 위 속성 값들을 URL query string에 출력하기 위한 메소드
}