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
public class c_board {

	// 게시글 고유번호 
    private int c_num;

    // 게시글 제목
    @NonNull private String c_title;
    
    // 작성자 
    @NonNull private String c_writer;

    // 이메일 
    @NonNull private String email;

    // 이미지1 
    @NonNull private String c_img1;

    // 이미지2 
//    private String c_img2;
//
//    // 이미지3 
//    private String c_img3;

    // 내용 
    @NonNull private String c_content;

    // 작성날짜 
    private String c_w_date;

    // 펀딩날짜 
    private String c_f_date;

    // 카테고리 
    @NonNull private String category;

    // 픽업장소 
    private String place;

    // 상품가격 
    @NonNull private int price;

    // 옵션1 
    @NonNull private double c_opt1;

     //옵션2 
   private double c_opt2;

    // 옵션3 
    private double c_opt3;

    // 옵션4 
    private double c_opt4;

    // 상품등록갯수 
    @NonNull private int c_ea;
}
