import java.io.FileOutputStream;
import java.io.PrintStream;

public class menulis_file {
    public static void main(String[] args) {
        try {
            FileOutputStream out = new FileOutputStream("tugasP3.txt");
            PrintStream p = new PrintStream(out);
            String[] data = {
                "9981117806701",
                "0832348108521",
                "1560016594591",
                "3452416706704",
                "5560247018199"
            };
            for (int i = 0; i < data.length; i++) {
                p.println(data[i]);
            }
            out.close();
            p.close();
        } catch (Exception e) {
            System.err.println("Kesalahan : " + e.getMessage());;
        };
        System.out.println("Tulis ke file berhasil");
    }
}