program record_siswa;
uses crt;

type
    Siswa = record
    nama : string;
    umur : integer;
    alamat : string;
end;

const maks = 10;

var
    data_siswa : array[1..maks] of Siswa;
    i, jdata : integer;

begin
    clrscr;
    write('Masukkan jumlah data : ');
    readln(jdata);
    for i := 1 to jdata do begin
        writeln('Data ke - ', i);
        with data_siswa[i] do begin
            write('Masukkan nama : ');
            readln(nama);
            write('Masukkan umur : ');
            readln(umur);
            write('Masukkan alamat : ');
            readln(alamat);
        end;
        writeln;
    end;
    clrscr;
    writeln('=================================================');
    for i := 1 to jdata do begin
        writeln('Data ke - ', i);
        with data_siswa[i] do begin
            writeln('Nama   : ', nama);
            writeln('Umur   : ', umur);
            writeln('Alamat : ', alamat);
        end;
        writeln;
    end;
    writeln('=================================================');
end.
