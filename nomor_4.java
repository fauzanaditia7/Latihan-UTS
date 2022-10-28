import java.io.DataInputStream;
import java.io.FileInputStream;
import java.io.IOException;

public class nomor_4 {
    public static void main(String[] args) throws IOException {
        FileInputStream fStream = new FileInputStream("bmi.txt");
        DataInputStream dataInput = new DataInputStream(fStream);
        int tinggi, berat, no = 0;
        float bmi, meter;
        String baris, id, nama, kategori;
        System.out.println("No \tID \tNama \tTinggi(cm) \tBerat(kg) \tKategori");
        System.out.println("---------------------------------------------------------------");
        while (dataInput.available() != 0) {
            no += 1;
            baris = dataInput.readLine();
            id = baris.substring(0, 5);
            nama = baris.substring(14, baris.length());
            tinggi = Integer.parseInt(baris.substring(6, 9));
            berat = Integer.parseInt(baris.substring(11, 13));
            meter = (float) tinggi / 100;
            bmi = (berat / (meter * meter));
            kategori = "Obesitas";
            if (bmi <= 18.5) {
                kategori = "Kekurangan BB";
            } else if (bmi <= 24.99) {
                kategori = "Ideal";
            } else if (bmi <= 29.99) {
                kategori = "Kelebihan BB";
            }
            System.out.print(no + " \t" + id + " \t" + nama + "   " + tinggi + " \t\t" + berat + " \t " + kategori);
            System.out.println();
        }
        System.out.println("---------------------------------------------------------------");
        fStream.close();
        dataInput.close();

    }
}
