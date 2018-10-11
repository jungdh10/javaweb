package filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

@WebFilter("*.do")
public class EncodingFilter implements Filter {

    public EncodingFilter() {
    }

    //필터가 파괴될 때 호출되는 메소드
	public void destroy() {
		System.out.println("필터가 소멸됩니다.");
	}

	//클라이언트의 요청이 발생했을 때 호출되는 메소드
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		//요청을 처리하기 전에 수행
		//Controller로 가기 전에 수행
		System.out.println("요청을 처리하기 전에 호출");
		
		//파라미터 인코딩 설정
		request.setCharacterEncoding("utf-8");
		
		chain.doFilter(request, response);
		
		//Controller가 요청을 처리하고 난 후 수행
		System.out.println("요청을 처리하고 난 후 호출");
		
	}
	//필터가 만들어 질 때 호출되는 메소드
	public void init(FilterConfig fConfig) throws ServletException {
		System.out.println("필터가 생성됩니다.");
	}

}






