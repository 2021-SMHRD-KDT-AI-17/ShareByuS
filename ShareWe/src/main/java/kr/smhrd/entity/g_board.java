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
public class g_board {

	 // 게시글 고유번호 
    private int g_num;

    // 게시글 제목
    
    @NonNull private String g_title;
    
//     작성자 
    private String g_writer;

    // 이메일 
    @NonNull private String email;

    // 이미지1 
    @NonNull private String g_img1;

//    // 이미지2 
//    private String g_img2;
//
//    // 이미지3 
    private String g_img3;

    // 내용 
    @NonNull private String g_content;

    // 작성날짜 
    private String g_w_date;

    // 공동구매종료날짜 
    private String g_b_date;

    // 카테고리 
    @NonNull private String category;

}
