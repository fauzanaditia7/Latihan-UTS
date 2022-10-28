import java.util.Scanner;

public class nomor_1_scanner {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.print("No. KK : ");
        int no_kk = input.nextInt();
        System.out.print("Nama KK : ");
        String nama_kk = input.next();
        System.out.print("Alamat : ");
        String alamat = input.next();
        System.out.println();
        System.out.print("Jumlah Anggota Keluarga : ");
        int jumlah_anggota = input.nextInt();
        System.out.println("==============================================================");
        String[][] data_keluarga = new String[jumlah_anggota][5];
        for (int i = 0; i < jumlah_anggota; i++) {
            System.out.print("NIK : ");
            data_keluarga[i][0] = input.next();
            System.out.print("Nama : ");
            data_keluarga[i][1] = input.next();
            System.out.print("L/P : ");
            data_keluarga[i][2] = input.next();
            System.out.print("Pendidikan : ");
            data_keluarga[i][3] = input.next();
            System.out.print("Status : ");
            data_keluarga[i][4] = input.next();
            System.out.println();
        }
        System.out.println("==============================================================");
        System.out.println("                       Kartu Keluarga");
        System.out.println("                       Nomor. " + no_kk);
        System.out.println("---------------------------------------------------------------");
        System.out.println("Kepala Keluarga : " + nama_kk);
        System.out.println("Alamat          : " + alamat);
        System.out.println("==============================================================");
        System.out.println("No \tNIK \tNama \tJenis Kelamin \tPendidikan \tStatus");
        System.out.println("==============================================================");
        for (int i = 0; i < jumlah_anggota; i++) {
            System.out.print((i + 1) + " \t" + data_keluarga[i][0] + " \t" + data_keluarga[i][1] + " \t" + data_keluarga[i][2] + " \t" + data_keluarga[i][3] + " \t" + data_keluarga[i][4]);
            System.out.println();
        }
        input.close();
    }
}