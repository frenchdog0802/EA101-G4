package imgReader;
import java.io.*;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.*;

public class showImg3 extends HttpServlet{
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException,IOException{
		HttpSession session = req.getSession();
		res.setContentType("image/gif");
		ServletOutputStream out = res.getOutputStream();
		InputStream input = (InputStream)session.getAttribute("input");
		try {
			System.out.println(input);
			byte[] buffer = new byte[1024];
			int len = 0;
			while ((len = input.read(buffer)) != -1) {
				out.write(buffer, 0, len);
		    }  
		    input.close();
		}catch(Exception e) {
			InputStream in = getServletContext().getResourceAsStream("/BrandBack/image/default.png");
			byte[] buffer = new byte[1024];
			int len = 0;
			while ((len = in.read(buffer)) != -1) {
				out.write(buffer, 0, len);
		    }  
		    in.close();
		    e.printStackTrace();
		}finally {
			out.close();
		}
	}
}

