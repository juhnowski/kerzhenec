import java.io.BufferedReader;
import java.io.File;
import java.io.InputStream;
import java.io.InputStreamReader;

public class ProcessR {

    public void startR(String[] commands){
        try {
            Process proc = Runtime.getRuntime().exec(commands);

            InputStream stdIn = proc.getInputStream();
            InputStreamReader isr = new InputStreamReader(stdIn);
            BufferedReader br = new BufferedReader(isr);

            String line = null;

            while ((line = br.readLine()) != null)
                System.out.println(line);

            int exitVal = proc.waitFor();
            System.out.println("Generate "+commands[commands.length-1]+" exitValue: " + exitVal);
        } catch (Exception e){
            e.printStackTrace();
        }
    }

    public void startPngToYear(String fileName){
        //Rscript data_by_year.r Kalach.txt.Y2003.csv __Kalach_txt_Y2003.png
        String fn = fileName.replace(".txt.","_").replace(".csv",".png");
        String[] commands = {"C:\\Program Files\\R\\R-4.2.0\\bin\\Rscript.exe",
                "C:\\Users\\IlyaYukhnovskiy\\Documents\\электропроводность\\data_by_year.r",fileName,fn};
        startR(commands);
    }

    public void startAllTimeline(String fileName){
        //Rscript data_all_year.r all.csv all.png all_smooth.png
        String fn = fileName.replace(".csv",".png");
        String fn_smooth = fileName.replace(".csv","_smooth.png");
        String[] commands = {"C:\\Program Files\\R\\R-4.2.0\\bin\\Rscript.exe",
                "C:\\Users\\IlyaYukhnovskiy\\Documents\\электропроводность\\data_all_year.r",fileName,fn,fn_smooth};
        startR(commands);
    }

}
