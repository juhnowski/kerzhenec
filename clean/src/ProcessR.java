import java.io.BufferedReader;
import java.io.File;
import java.io.InputStream;
import java.io.InputStreamReader;

public class ProcessR {
    public static void startPngToYear(String fileName){
        //Rscript data_by_year.r Kalach.txt.Y2003.csv __Kalach_txt_Y2003.png
        String fn = fileName.replace(".txt.","_").replace(".csv",".png");
        try {

            String[] commands = {"C:\\Program Files\\R\\R-4.2.0\\bin\\Rscript.exe", "C:\\Users\\IlyaYukhnovskiy\\Documents\\электропроводность\\data_by_year.r",fileName,fn};

            Process proc = Runtime.getRuntime().exec(commands);

            InputStream stdIn = proc.getInputStream();
            InputStreamReader isr = new InputStreamReader(stdIn);
            BufferedReader br = new BufferedReader(isr);

            String line = null;
            System.out.println("<OUTPUT "+fn+" >");

            while ((line = br.readLine()) != null)
                System.out.println(line);

            int exitVal = proc.waitFor();
            System.out.println("Process exitValue: " + exitVal);
            System.out.println("</OUTPUT "+fn+" >");
        } catch (Exception e){
            e.printStackTrace();
        }
    }
}
