program record_warung_makan;
uses crt;

type
    makanan = record
        nama_makanan : string;
        banyak : integer;
        harga : integer;
        jumlah : longint;
end;
const
    maks = 10;
var
    data_makanan : array[1..maks] of makanan;
    i, jumlah_pesan : integer;
    nama_pembeli : string;
    total_harga, jumlah_uang : longint;

begin
    clrscr;
    total_harga := 0; // Menginisialisasi total harga awal = 0
    write('Nama Pembeli : ');
    readln(nama_pembeli);
    write('Masukan jumlah pesanan : ');
    readln(jumlah_pesan);
    for i := 1 to jumlah_pesan do begin
        writeln('Masukan data ke ', i);
        write('Nama Makanan : ');
        readln(data_makanan[i].nama_makanan);
        write('Banyaknya : ');
        readln(data_makanan[i].banyak);
        write('Harga : ');
        readln(data_makanan[i].harga);
        data_makanan[i].jumlah := data_makanan[i].banyak * data_makanan[i].harga;
        total_harga += data_makanan[i].jumlah; // Menambah total harga setiap looping
        writeln;
    end;
    write('Masukkan uang anda : ');
    readln(jumlah_uang);
    clrscr;
    gotoxy(19, 1); writeln('Warung Makan 89');
    gotoxy(16, 2); writeln('JL. Siliwangi 1, no 113');
    gotoxy(23, 3); writeln('Bandung');
    writeln('==================================================');
    writeln('Nama Pembeli : ', nama_pembeli);
    writeln;
    writeln('No.   Nama Makanan    Banyaknya    Harga    Jumlah');
    for i := 1 to jumlah_pesan do begin
        gotoxy(1, i + 7); write(i);
        gotoxy(8, i + 7); write(data_makanan[i].nama_makanan);
        gotoxy(27, i + 7); write(data_makanan[i].banyak);
        gotoxy(36, i + 7); write(data_makanan[i].harga);
        gotoxy(46, i + 7); write(data_makanan[i].jumlah);
        writeln;
        // write(i, '     ', data_makanan[i].nama_makanan, '    ', data_makanan[i].banyak, '    ', data_makanan[i].harga, '    ', data_makanan[i].jumlah);
        // writeln;
    end;
    writeln('==================================================');
    gotoxy(1, i + 9); write('Total :');
    gotoxy(45, i + 9); write(total_harga);
    gotoxy(1, i + 10); write('Pembayaran :');
    gotoxy(45, i + 10); write(jumlah_uang);
    gotoxy(1, i + 11); write('Kembalian :');
    gotoxy(45, i + 11); write(jumlah_uang - total_harga);
    writeln;
    // writeln('Total :                                    ', total_harga);
    writeln('==================================================');
    gotoxy(20, i + 13); write('Terima Kasih');
    writeln;
    writeln;
end.
    