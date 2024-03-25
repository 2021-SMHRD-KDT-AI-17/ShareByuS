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
public class report {

	// 신고 고유번호 
    private int rp_num;

    // 이메일 
    private String email;

    // 누적횟수 
    private int rp_score;

    // 내용 
    private String rp_content;

    // 리뷰 고유번호 
    private int r_num;
	
}
