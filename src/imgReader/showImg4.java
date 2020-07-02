package imgReader;
import java.io.*;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.*;


import com.shop_product.model.*;


public class showImg4 extends HttpServlet{
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException,IOException{
		
		res.setContentType("image/gif");
		ServletOutputStream out = res.getOutputStream();
		String sq_product_id = req.getParameter("id");
		try {			
			Shop_productService productSvc = new Shop_productService();
			Shop_productVO productVO = productSvc.getOneById(sq_product_id);
			byte[] pic = productVO.getProduct_pic();
			out.write(pic);
			
		}catch(Exception e) {
			InputStream in = getServletContext().getResourceAsStream("/Shop_product/image/default.png");
			byte[] pic = new byte[in.available()];
			out.write(pic);
			in.close();
		}
	}
}
