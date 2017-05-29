
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="org.jfree.chart.*" %>
<%@page  import="org.jfree.chart.plot.*" %>
<%@page  import="org.jfree.data.category.*" %>
<%@page  import="org.jfree.ui.*" %>
<%@page import="java.io.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
      try
    {   
      final String fiat = "FIAT";        
      final String audi = "AUDI";        
      final String ford = "FORD";        
      final String speed = "Speed";        
      final String millage = "Millage";        
      final String userrating = "User Rating";        
      final String safety = "safety";        
      final DefaultCategoryDataset dataset = 
      new DefaultCategoryDataset( );  

      dataset.addValue( 1.0 , fiat , speed );        
      dataset.addValue( 3.0 , fiat , userrating );        
      dataset.addValue( 5.0 , fiat , millage ); 
      dataset.addValue( 5.0 , fiat , safety );           

      dataset.addValue( 5.0 , audi , speed );        
      dataset.addValue( 6.0 , audi , userrating );       
      dataset.addValue( 10.0 , audi , millage );        
      dataset.addValue( 4.0 , audi , safety );

      dataset.addValue( 4.0 , ford , speed );        
      dataset.addValue( 2.0 , ford , userrating );        
      dataset.addValue( 3.0 , ford , millage );        
      dataset.addValue( 6.0 , ford , safety );               

      
          
            
        JFreeChart barChart = ChartFactory.createBarChart(
         "ABC",           
         "Category",            
         "Score",            
         dataset,          
         PlotOrientation.VERTICAL,           
         true, true, false);
//     //   ChartPanel chartPanel = new ChartPanel( barChart );        
//      // chartPanel.setPreferredSize(new java.awt.Dimension( 560 , 367 ) ); 
//   
//      File f=new File("abc.png");
//     // f.delete();
//      ChartUtilities.saveChartAsPNG(f, barChart, 300, 200);

 File image = File.createTempFile("image", "tmp");
 
 // Assume that we have the chart
 ChartUtilities.saveChartAsPNG(image, barChart, 500, 300);
 
 FileInputStream fileInStream = new FileInputStream(image);
 OutputStream outStream = response.getOutputStream();   
 
 long fileLength;
 byte[] byteStream;
 
 fileLength = image.length();
 byteStream = new byte[(int)fileLength];
 fileInStream.read(byteStream, 0, (int)fileLength);
 
 response.setContentType("image/png");
 response.setContentLength((int)fileLength);
 response.setHeader("Cache-Control",
     "no-store,no-cache, must-revalidate, post-check=0, pre-check=0");
 response.setHeader("Pragma", "no-cache");
 
 fileInStream.close();
 outStream.write(byteStream);
 outStream.flush();
 outStream.close();
 
 }
 catch (IOException e)
 {
 System.err.println("Problem occurred creating chart.");
 }
        %>
        
    </body>
</html>
