import java.util.ArrayList;
import java.util.Arrays;

public class DataTxt extends ArrayList<Year>{
    private String fileName;
    public String getFileName(){
        return fileName;
    }
    private int offset;
    public int getOffset() {return offset;}

    public DataTxt(String fileName, Year... years){
        this.fileName = fileName;
        this.offset = years[0].ordinal();
        Arrays.stream(years).toList().forEach(y->this.add(y));
    }
}
