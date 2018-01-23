package com.third.autoloan.progress.controller;


@RequestMapping("/FileDownload")
@Controller
public class FileDownload {

	@RequestMapping("/file/{name.rp}")
	public ResponseEntity<byte[]> fileDownLoad(@PathVariable("name.rp")String name, HttpServletRequest request,HttpServletResponse response) {
	// @PathVariable String name,
	// @RequestParam("name")String name,
	// System.out.println("<name>"+name);
	// System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
	ResponseEntity<byte[]> re = null;
	try {
	/**
	* css,js,json,gif,png,bmp,jpg,ico,doc,docx,xls,xlsx,txt,swf,pdf
	* **/
	//下载防止静态加载干扰
	Feelutile f=new Feelutile();
	name=f.getfileformat(name);
	String pathString="C:\\tempDirectory\\"+name; 
	File file=new File(pathString);
	HttpHeaders headers=new HttpHeaders();
	//String filename=URLEncoder.encode(name, "UTF-8");//为了解决中文名称乱码问题 
	String filename=new String(name.getBytes("utf-8"),"utf-8");
	byte[] by=FileUtils.readFileToByteArray(file);
	headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
	//URLEncoder.encode(filename, "UTF-8")
	headers.setContentDispositionFormData("attachment",filename);
	headers.setContentLength(by.length);
	re=new ResponseEntity<byte[]>(by, headers, HttpStatus.CREATED);
	} catch (Exception e) {
	e.printStackTrace();
	try {
	request.getRequestDispatcher("/error/404.jsp").forward(request, response);
	} catch (ServletException e1) {
	// TODO Auto-generated catch block
	e1.printStackTrace();
	} catch (IOException e1) {
	// TODO Auto-generated catch block
	e1.printStackTrace();
	}
	}
	return re;
	}
}
