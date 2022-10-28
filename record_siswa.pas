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
        write('Masukkan nama : ');
        readln(data_siswa[i].nama);
        write('Masukkan umur : ');
        readln(data_siswa[i].umur);
        write('Masukkan alamat : ');
        readln(data_siswa[i].alamat);
        writeln;
    end;
    clrscr;
    writeln('=================================================');
    for i := 1 to jdata do begin
        writeln('Data ke - ', i);
        writeln('Nama   : ', data_siswa[i].nama);
        writeln('Umur   : ', data_siswa[i].umur);
        writeln('Alamat : ', data_siswa[i].alamat);
        writeln;
    end;
    writeln('=================================================');
end.
