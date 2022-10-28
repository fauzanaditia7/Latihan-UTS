import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintStream;

public class nomor_3 {
    public static void main(String[] args) throws IOException {
        FileOutputStream out = new FileOutputStream("bmi.txt");
        PrintStream p = new PrintStream(out);
        String[] data = {
            "12001|170|050|Ayudia",
            "12011|160|070|Bintang",
            "12023|165|055|Indira",
            "12088|165|065|Aruna",
            "12116|160|080|Gusmana"
        };
        for (int i = 0; i < data.length; i++) {
            p.println(data[i]);
        }
        out.close();
        p.close();
        System.out.println("Menulis ke file bmi.txt berhasil");
    }
}
