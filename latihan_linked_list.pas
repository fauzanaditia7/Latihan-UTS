program latihan_linked_list;
uses crt;

type
    node = ^user;
    user = record
    nama : string;
    umur : integer;
    lanjut : node;
end;

var
    baru, bantu, ptr : node;
    nama : string;
    i, a, umur : integer;
    konfirmasi : char;

procedure masukan(var p : pointer; nama : string; umur : integer);
begin
    new(baru);
    baru^.nama := nama;
    baru^.umur := umur;
    baru^.lanjut := nil;
    if p = nil then
        p := baru
    else begin
        baru^.lanjut := p;
        p := baru;
    end;
end;

procedure tampil(p : pointer);
begin
    bantu := p;
    i := 1;
    while (bantu <> nil) do begin
        writeln('Data ke -', i);
        with bantu^ do begin
            writeln('Nama : ', nama);
            writeln('Umur : ', umur);
        end;
        // writeln('Nama : ', bantu^.nama);
        // writeln('Umur : ', bantu^.umur);
        bantu := bantu^.lanjut;
        i += 1;
        writeln;
    end;
end;

begin
    clrscr;
    new(ptr);
    ptr := nil;
    a := 0;
    while (true) do begin
        a += 1;
        write('Masukkan Nama : ');
        readln(nama);
        write('Masukkan Umur : ');
        readln(umur);
        masukan(ptr, nama, umur);
        write('Lanjut masukkan data ? [Y/N] : ');
        readln(konfirmasi);
        if (upcase(konfirmasi) = 'N') then begin
            break;
        end;
    end;
    writeln('Output : ');
    tampil(ptr);
end.