package Ch07;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

public class SessionSave {
	//로그인 처리시 userid:session주소를 저장하기 위한 컬렉션
	public Map<String,HttpSession> slist=new HashMap();
	////세션 위치정보 저장됨 
	//로그인 처리시 해당 계정 id:session 갹체주소를 저장하기위한함수
	public void AddSession(String id,HttpSession session) {
		////세션의 정보가 받아와짐 매개변수가 필요함
		slist.put(id, session);
		System.out.println("ID : "+id+" Session : " + session);
	}
	//모든 세션정보를 확인하는 페이지에서 총세션정보를 전달하기위한 함수 
	public Map<String,HttpSession> GetSession() {
		return slist;
	}
}
