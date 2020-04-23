package thoth.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class EncodingFilter implements Filter {

	public void destroy() {
		// TODO Auto-generated method stub

	}
//统一编码格式
	public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain arg2)
			throws IOException, ServletException {		
		arg0.setCharacterEncoding("UTF-8");
		arg1.setContentType("text/html;charset=utf-8");
		arg1.setCharacterEncoding("UTF-8");
		
		arg2.doFilter(arg0, arg1);

	}

	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

	}

}
