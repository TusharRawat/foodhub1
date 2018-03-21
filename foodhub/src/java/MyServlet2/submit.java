
package MyServlet2;

import category.category;
import category.categoryimpdao;
import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig
(
        fileSizeThreshold = 1024*1024*10,
        maxFileSize = 1024*1024*50,
        maxRequestSize = 1024*1024*100
)
public class submit extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       String username[]=req.getParameterValues("username");
        //Part p=req.getPart("image");
        String apppath=req.getServletContext().getRealPath("");
        System.out.println(apppath);
        String save_path=apppath+File.separator+"images";
        
        File f=new File(save_path);
        if(!f.exists())
        {
            f.mkdir();
        }
        File f1=new File(save_path+"/simple.jpg");
        FileOutputStream fos=new FileOutputStream(f1);
        BufferedOutputStream bos=new BufferedOutputStream(fos);
        Part part=req.getPart("image");
        String image="simple.jpg";
        byte b[]=new byte [part.getInputStream().available()];
        System.out.println(part.getInputStream().available());
        part.getInputStream().read(b);
        bos.write(b);
        bos.close();
        fos.close();
        
        Cloudinary cloudinary = new Cloudinary(ObjectUtils.asMap(
  "cloud_name", "dxrvxsdaf",
  "api_key", "192459383497421",
  "api_secret", "ijKdEHDzyu940oxsBrpv9UU-_vw"));
        
        
        Map uploadResult = cloudinary.uploader().upload(f1, ObjectUtils.emptyMap());

        System.out.println(uploadResult.get("url"));
        String url=uploadResult.get("url").toString();
       category c=new category();
            
       for (int i=0;i<username.length;i++)
      {
          switch (i)
          {
              case 0:c.setUsername(username[i]); break;
              case 1:c.setDescription(username[i]); break;
              case 2:c.setPrice(Integer.parseInt(username[i])); break;
              case 3:c.setCategory(username[i]); break;
           }
      }
       c.setImage(url);
        categoryimpdao pd=new categoryimpdao();
        pd.insert(c);
        resp.sendRedirect("category2.jsp");
        
    }
    
}
