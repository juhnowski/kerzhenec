import java.io.*;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Arrays;

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

    public static void main(String[] args) {
        DataList boloto = new DataList(new DataTxt("C:\\Users\\IlyaYukhnovskiy\\Documents\\электропроводность\\Boloto.txt",
                Year.Y2002, Year.Y2003));

        boloto.parse();
        boloto.save();

        boloto.clean();
        boloto.read();
    }

    public void clean(){
        data.forEach(t->t=null);
        initDataList();
    }
    public void parse(){
        try (FileReader fr = new FileReader(dataTxt.getFileName());
             BufferedReader br = new BufferedReader(fr)) {

            for (String s = br.readLine(); s != null; s = br.readLine()) {
                String[] dt = s.split("\t");
                dataTxt.stream().toList().forEach(y->store(y,dataTxt.getOffset(),dt));
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

    private void save()  {
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

    private void read() {
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
}
