import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Arrays;

public class DataListController {

    private Steps step = Steps.AGREGATE;

    public void update(){
        Arrays.stream(DataObjects.all).parallel().forEach(o->{o.parse();o.save();});
    }

    public void init(){
        Arrays.stream(DataObjects.all).parallel().forEach(o->o.read());
    }

    public void toCsvByAllYears(){
        Arrays.stream(DataObjects.all).parallel().forEach(o->o.toCsvByAllYear());
    }

    public void toCsvAllTimeline(){
        File file = new File(Resources.FN_ALL);
        try (BufferedWriter writer = new BufferedWriter(new FileWriter(file))) {
            for (int y=0; y<Resources.Y_KER.length;y++){
                for (int d = 0; d< Utils.getDaysOfYear(y); d++){
                    int finalD = d;
                    int finalY = y;
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
            default:
                break;
        }
    }
    public static void main(String[] args) {
        DataListController dc = new DataListController();
        dc.process();
    }
}
