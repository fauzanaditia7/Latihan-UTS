import java.util.Scanner;

public class nomor_2 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.print("NPM \t: ");
        String npm = input.nextLine();
        System.out.print("Nama \t: ");
        String nama = input.nextLine();

        int x, y;
        x = Integer.parseInt(npm.substring(0, 1));
        y = Integer.parseInt(npm.substring(11));
        System.out.println("X > " + x);
        System.out.println("Y > " + y);
        String NAMA;
        if (x <= y) {
            NAMA = nama.toUpperCase();
        } else {
            NAMA = nama.toLowerCase();
        }
        for (int i = 0; i < nama.length(); i++) {
            System.out.println((i + 1) + NAMA.substring(i, i + 1) + "\t");
        }
        input.close();
    }
}