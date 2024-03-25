package kr.smhrd.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
public class purchase {
 // 구매 내역
 // 구매 고유번호 
 private int p_num;

 // 이메일 
 private String email;

 // 게시글 고유번호 
 private int c_num;

 // 거래일자 
 private String c_img3;

 // 상품가격 
 private int price;

 // 옵션1 
 private double c_opt1;

 // 옵션2 
 private double c_opt2;

 // 옵션3 
 private double c_opt3;

 // 옵션4 
 private double c_opt4;

 // 거래개수1 
 private int p_ea1;

 // 거래개수2 
 private int p_ea2;

 // 거래개수3 
 private int p_ea3;

 // 거래개수4 
 private int p_ea4;
}
