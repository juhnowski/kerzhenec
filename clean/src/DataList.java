import java.io.*;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.function.BiConsumer;
import java.util.function.Consumer;

public class DataList {

    private DataTxt dataTxt;
    ArrayList<ArrayList<Double>> data;

    public DataList(DataTxt dataTxt){
        this.dataTxt = dataTxt;
        initDataList();
    }

    private void initDataList(){
        data = new ArrayList<>(9);
        Arrays.stream(Year.values()).forEach(y -> data.add(new ArrayList<>(366)));
        System.out.println("Data init");
        System.out.println("\t"+this);
    }

    public void clean(){
        data.forEach(t->t=null);
        initDataList();
    }
    public void parse(){
        try (FileReader fr = new FileReader(dataTxt.getFileName());
            BufferedReader br = new BufferedReader(fr)) {
            int cnt = -1;
            for (String s = br.readLine(); s != null; s = br.readLine()) {
                String[] dt = s.split("\t");
                dataTxt.stream().toList().forEach(y->store(y,dataTxt.getOffset(),dt));
                cnt++;
            }
        } catch (IOException ioe){
            ioe.printStackTrace();
        }
    }
    private void store(Year year, int offset, String[] dt){
        String s = dt[year.ordinal() - offset];
        if (s.length()==0){
            data.get(year.ordinal()).add(Double.parseDouble("0"));
        } else {
            data.get(year.ordinal()).add(Double.parseDouble(s.replace(",",".")));
        }
    }

    public void save()  {
        try(FileOutputStream fos = new FileOutputStream(dataTxt.getFileName()+".bin");
            ObjectOutputStream oos = new ObjectOutputStream(fos);){
            oos.writeObject(data);
            System.out.println("Save to file:"+dataTxt.getFileName()+".bin");
            System.out.println("\t"+this);
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
    }

    public void read() {
        try(FileInputStream fis = new FileInputStream(dataTxt.getFileName()+".bin");
            ObjectInputStream ois = new ObjectInputStream(fis);) {
            data = (ArrayList) ois.readObject();
            System.out.println("Read from file:"+dataTxt.getFileName()+".bin");
            System.out.println("\t"+this);

        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
    }

    public String toString(){
        StringBuilder sb = new StringBuilder();
        Arrays.stream(Year.values()).forEach(y -> sb.append("("+y.ordinal() + ":" + data.get(y.ordinal()).stream().filter(i -> i >= 0).count()+")"));
        return "data:[" + sb.toString() + "]";
    }

//    List rankings = new ArrayList<>();
//movies.forEach(withCounter((i, movie) -> {
//        String ranking = (i + 1) + ": " + movie;
//        rankings.add(ranking);
//    }));
public static <T> Consumer<T> withCounter(BiConsumer<Integer, T> consumer) {
    AtomicInteger counter = new AtomicInteger(0);
    return item -> consumer.accept(counter.getAndIncrement(), item);
}
    public String toCsvByYear(Year y){
        File file = new File(dataTxt.getFileName()+"."+y.name()+".csv");
        try (BufferedWriter writer = new BufferedWriter(new FileWriter(file))) {
            data.get(y.ordinal()).stream().forEach(withCounter((i,v)-> {
                try {
                    writer.write(i+"\t"+String.valueOf(v)+"\n");
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }));

        } catch (IOException e) {
            e.printStackTrace();
        }
        return file.getAbsolutePath();
    }
    public void toCsvByAllYear(){
        dataTxt.getYears().forEach(y->System.out.println("Export to CSV:" + toCsvByYear(y)+" done"));
    }

    public void toPngByAllYear(){
        dataTxt.getYears().forEach(y->{
            ProcessR pr = new ProcessR();
            pr.startPngToYear(toCsvByYear(y));
        });
    }

    public String getValueByDayAndYear(int day, int year){

        if (year<dataTxt.getOffset() || year >dataTxt.getLast())  {
            return "0.0";
        } else {
            try {
                return data.get(year - dataTxt.getOffset()).get(day).toString();
            } catch (IndexOutOfBoundsException iob){
                return "0.0";
            }
        }
    }

}
