import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class DataTxt extends ArrayList<Year>{
    private String fileName;
    public String getFileName(){
        return fileName;
    }
    private int offset;
    public int getOffset() {return offset;}
    private int last;
    public int getLast() {return last;}

    private Year years[];
    public List<Year> getYears() {return Arrays.stream(years).toList();}

    public DataTxt(String fileName){
        this.fileName = fileName;
    }

    public DataTxt(String fileName, Year... years){
        this.years = years;
        this.fileName = fileName;
        this.offset = years[0].ordinal();
        this.last = years[years.length-1].ordinal();
        Arrays.stream(years).toList().forEach(y->this.add(y));
    }
}
