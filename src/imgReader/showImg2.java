package imgReader;
import java.io.*;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.*;


public class showImg2 extends HttpServlet{
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException,IOException{
		res.setContentType("image/gif");
		ServletOutputStream out = res.getOutputStream();
		HttpSession session = req.getSession();
		byte[] pic = (byte[])session.getAttribute("pic");	
		try {			
			out.write(pic);
		}catch(Exception e) {			
			InputStream in = getServletContext().getResourceAsStream("/BrandBack/image/default.png");
			byte[] pic2 = new byte[in.available()];
			out.write(pic2);
			in.close();
		}
	}
}