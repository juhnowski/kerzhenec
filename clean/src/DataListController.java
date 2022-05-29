import java.io.*;
import java.util.Arrays;

public class DataListController {

    private Steps step = Steps.PNG_ALL_TIMELINE;//Steps.AGREGATE; FOR_ALL_YEARS;//

    public void update(){
        Arrays.stream(DataObjects.all).parallel().forEach(o->{o.parse();o.save();});
    }

    public void init(){
        Arrays.stream(DataObjects.all).parallel().forEach(o->o.read());
    }

    public void toCsvByAllYears(){
       Arrays.stream(DataObjects.all).parallel().forEach(o->o.toCsvByAllYear());
    }

    public void toPngByAllYears(){
        Arrays.stream(DataObjects.all).parallel().forEach(o->o.toPngByAllYear());
    }

    public void toCsvAllTimeline(){
        File file = new File(Resources.FN_ALL);
        try (BufferedWriter writer = new BufferedWriter(new FileWriter(file))) {
            int idx = 0;
            for (int y=0; y<Resources.Y_KER.length;y++){
                for (int d = 0; d< Utils.getDaysOfYear(y); d++){
                    int finalD = d;
                    int finalY = y;
                    writer.write(Integer.toString(idx++));
                    writer.write("\t");
                    Arrays.stream(DataObjects.all).forEach(o-> {
                        try {
                            writer.write(o.getValueByDayAndYear(finalD, finalY));
                            writer.write("\t");
                        } catch (Exception e){
                            e.printStackTrace();
                        }
                    });
                    writer.write("\n");
                    writer.flush();
                }
            }

        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void toPngAllTimeline(){
        toCsvAllTimeline();
        ProcessR pr = new ProcessR();
        pr.startAllTimeline(Resources.FN_SHORT_ALL);
    }

    private void process(){
        switch (step) {
            case FIRST_RUN_OR_UPDATE:
                update();
                break;
            case FOR_ALL_YEARS:
                init();
                toCsvByAllYears();
                break;
            case AGREGATE:
                init();
                toCsvAllTimeline();
                break;
            case PNG_FOR_ALL_YEARS:
                init();
                toPngByAllYears();
            case PNG_ALL_TIMELINE:
                init();
                toPngAllTimeline();
            default:
                break;
        }
    }

    //Rscript data_by_year.r Kalach.txt.Y2003.csv __Kalach_txt_Y2003.png
    public static void main(String[] args) {
        DataListController dc = new DataListController();
        dc.process();
    }
}
