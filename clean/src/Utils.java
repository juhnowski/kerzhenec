import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.stream.Collectors;

public class Utils {
    public static int getDaysOfYear(int y){
        return Year.Y2004.ordinal()==y?365:364;
    }
    public static int getDaysOfYear(Year y){
        return Year.Y2004==y?365:364;
    }

    public static double mean(ArrayList<Double> m) {
        if (m.size()==0){
            return 0;
        }
        double sum = 0;
        for (int i = 0; i < m.size(); i++) {
            sum += m.get(i);
        }
        return sum / m.size();
    }

    public static double median(ArrayList<Double> m) {
        if (m.size()==0){
            return 0;
        }
        int middle = m.size()/2;
        if (m.size()%2 == 1) {
            return m.get(middle);
        } else {
            return (m.get(middle-1) + m.get(middle)) / 2.0;
        }
    }

}
