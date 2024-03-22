package kr.smhrd.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
@RequiredArgsConstructor
public class Member {
	
	
	private int type;
	@NonNull private String email;
	@NonNull private String pw;
	@NonNull private String name;
	@NonNull private String nick;
	@NonNull private String address;
	@NonNull private String tel;
	
}
