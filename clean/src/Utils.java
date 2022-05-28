public class Utils {
    public static int getDaysOfYear(int y){
        return Year.Y2004.ordinal()==y?365:364;
    }
    public static int getDaysOfYear(Year y){
        return Year.Y2004==y?365:364;
    }
}
