package kr.smhrd.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@Getter
@Setter
@ToString
@NoArgsConstructor
@RequiredArgsConstructor
public class report {

	// 신고 고유번호
    private int rp_num;

    // 신고자 이메일
    @NonNull
    private String email;
    
    // 신고 이메일
    @NonNull
    private String rp_email;

    // 누적횟수 
    private int rp_cnt;

    // 내용
    @NonNull
    private String rp_content;

    // 리뷰 고유번호

    @NonNull private int r_num;
	
}
