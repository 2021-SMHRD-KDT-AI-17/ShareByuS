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
public class review {

	// 리뷰 고유번호 
    private int r_num;

    // 이메일 
    private String email;

    // 평점 
    private double r_score;

    // 내용 
    private String r_content;

    // 게시글 고유번호 
    private int c_num;
	
}
