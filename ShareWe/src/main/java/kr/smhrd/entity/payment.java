package kr.smhrd.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@Getter
@Setter
@ToString
@NoArgsConstructor
// 결제 내역 
public class payment {

	// 결제 고유번호
	private int p_num;

	// 이메일
	private String email;

	// 결제 상품 이름
	private String p_name;

	// 결제 금액
	private int p_amount;

	// 카드 승인번호
	private int apply_num;
}
