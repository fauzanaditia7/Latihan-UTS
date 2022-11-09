program array_record_sesi1;
uses crt;

type
    pembeli = record
    nama : string;
    jumlahTisue : integer;
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
            write('Jumlah Tisue : '); readln(jumlahTisue);
            jumlah := 10000 * jumlahTisue;
        end;
    end;
    clrscr;
    gotoxy(33, 1); writeln('Daftar Pembeli');
    writeln('Harga 1 Tisue : Rp. 10000');
    writeln('------------------------------------------------------------');
    writeln('No  Nama      Jumlah Tisue      Jumlah      Discount      Total');
    writeln('------------------------------------------------------------');
    for i := 1 to jumlahPembeli do begin
        with data[i] do begin
            gotoxy(1, i + 5); write(i);
            gotoxy(4, i + 5); write(nama);
            gotoxy(18, i + 5); write(jumlahTisue);
            gotoxy(33, i + 5); write(jumlah);
            diskon := 0;
            if (jumlah >= 200000) then begin
                diskon := (jumlah * 0.1);
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