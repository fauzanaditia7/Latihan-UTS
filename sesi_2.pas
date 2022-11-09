program array_record_sesi2;
uses crt;

type
    pembeli = record
    nama : string;
    jumlahKaos : integer;
    jumlah : longint;
    diskon, total : double;
end;

const maks = 10;
var
    data : array[1..maks] of pembeli;
    i, jumlahPembeli : integer;

begin
    clrscr;
    write('Masukkan Jumlah Pembeli : '); readln(jumlahPembeli);
    for i := 1 to jumlahPembeli do begin
        writeln;
        writeln('Pembeli ke ', i);
        with data[i] do begin
            write('Nama : '); readln(nama);
            write('Jumlah Tisue : '); readln(jumlahKaos);
            jumlah := 30000 * jumlahKaos;
        end;
    end;
    clrscr;
    gotoxy(33, 1); writeln('Daftar Pembeli');
    writeln('Harga 1 Kaos : Rp. 30.000');
    writeln('------------------------------------------------------------');
    writeln('No  Nama      Jumlah Kaos      Jumlah      Discount      Total');
    writeln('------------------------------------------------------------');
    for i := 1 to jumlahPembeli do begin
        with data[i] do begin
            gotoxy(1, i + 5); write(i);
            gotoxy(4, i + 5); write(nama);
            gotoxy(18, i + 5); write(jumlahKaos);
            gotoxy(33, i + 5); write(jumlah);
            diskon := 0;
            if (jumlah >= 150000) then begin
                diskon := (jumlah * 0.15);
            end;
            total := jumlah - diskon;
            gotoxy(45, i + 5); write(diskon:0:0);
            gotoxy(60, i + 5); write(total:0:0);
        end;
        writeln;
    end;
    writeln('------------------------------------------------------------');
    readkey;
end.