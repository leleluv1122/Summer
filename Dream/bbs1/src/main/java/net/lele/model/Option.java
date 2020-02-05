package net.lele.model;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor //생성자가 자동으로 생성됨
public class Option {
	int value;
	String label;


	/* public Option(int value, String label) {
	 * 		this.value = value;
	 * 		this.label = label;
	 * }
	 */
}
// select 태그의 option 태그를 출력하기 위한 데이터를 전달하기 위한 클래스