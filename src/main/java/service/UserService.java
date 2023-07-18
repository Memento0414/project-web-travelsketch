package service;

public class UserService {
	public static boolean volume(String id, String pass, String name) {

		// 회원가입에서 아이디, 비번, 이름 등의 제약 조건을 설정
		
		//아이디가 한글을 쓸 수 없겠끔 유도
		if (!id.matches("[a-z][a-z0-9]+")) {
			return false;
		}
		//아이디에 빈 공백 이거나 아이디 글자수가 5미만이면 안됨
		if(id.equals("") || id.length() < 4)  {
			return false;
		}
		//이름 들어갈 수 있는 문자 지정
		if (!name.matches("[a-zA-Z가-힣0-9]+")) {
			return false;
		}
		//이름에 공백이 들어 갈 수 없게 설정
		if(name.equals("") || name.length() < 3) {
			return false;	
		}
		
		//비밀빈호는 bcrypt로 넣기 때문에 따로 문자열 지정을 필요는 없지만 설정해주고  
		if (pass.length() < 4 || pass.equals("")) {
			return false;
		}
		return true;
	}
}
