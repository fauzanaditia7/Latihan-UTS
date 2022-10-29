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
        with data_makanan[i] do begin
            write('Nama Makanan : ');
            readln(nama_makanan);
            write('Banyaknya : ');
            readln(banyak);
            write('Harga : ');
            readln(harga);
            jumlah := banyak * harga;
        end;
        total_harga += data_makanan[i].jumlah;
        writeln;
    end;
    while (true) do begin
        write('Masukkan uang anda : ');
        readln(jumlah_uang);
        if (jumlah_uang < total_harga) then begin
            // Jika jumlah uang pembayaran uang kurang, maka meminta kembali jumlah pembayaran
            writeln('Jumlah uang anda kurang, total harga Rp. ', total_harga);
            continue;
        end;
        break; // Jika jumlah uang nya lebih atau sama dengan total harga, keluar dari while loop
    end;
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
        with data_makanan[i] do begin
            gotoxy(8, i + 7); write(nama_makanan);
            gotoxy(27, i + 7); write(banyak);
            gotoxy(36, i + 7); write(harga);
            gotoxy(46, i + 7); write(jumlah);
        end;
        writeln;
    end;
    writeln('==================================================');
    gotoxy(1, i + 9); write('Total :');
    gotoxy(45, i + 9); write(total_harga);
    gotoxy(1, i + 10); write('Pembayaran :');
    gotoxy(45, i + 10); write(jumlah_uang);
    gotoxy(1, i + 11); write('Kembalian :');
    gotoxy(45, i + 11); write(jumlah_uang - total_harga);
    writeln;
    writeln('==================================================');
    gotoxy(20, i + 13); write('Terima Kasih');
    writeln;
    writeln;
end.
    