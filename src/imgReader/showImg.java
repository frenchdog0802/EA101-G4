package imgReader;
import java.io.*;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.ServletRequest;
import javax.servlet.http.*;

import com.brand.model.*;


public class showImg extends HttpServlet{
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException,IOException{
		
		res.setContentType("image/gif");
		ServletOutputStream out = res.getOutputStream();
		String sq_brand_id = req.getParameter("id");
		
		try {			
			BrandService brandservice = new BrandService();
			BrandVO brandVO = brandservice.getOneBrand(sq_brand_id);
			byte[] pic = brandVO.getBrand_sign();
			out.write(pic);

		}catch(Exception e) {
			InputStream in = getServletContext().getResourceAsStream("/BrandBack/image/default.png");
			byte[] pic = new byte[in.available()];
			out.write(pic);
			in.close();
		}
	}
}
