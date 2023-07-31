@echo off

REM MENU LOGIN
    :login
    echo *********************************************
    echo                  LOGIN USER
    echo *********************************************
    echo.
    echo.
    set /p user=      User    :
    set /p password=  Pasword :
    if %user%==1 (
        if %password%==1 (
        goto begin
        ) else (
        echo Password salah
        pause
        goto login
        )
    ) else (
        echo User tidak valid
        pause
        goto login
        )

REM MENU UTAMA
    :begin
    cls
    echo ====================================
    echo              MENU UTAMA 
    echo ====================================
    echo [1] Menu Akademik
    echo [2] Menu Perhitungan
    echo [3] Menu Perbaikan Komputer
    echo [4] Menu Jaringan Komputer
    echo [5] Menu Aplikasi
    echo [6] Menu Setting
    echo [7] mkanan nusantara
    echo [Q] Keluar
    echo ------------------------------------
    set /p pilih=Silakan pilih menu : 
    if %pilih%==1 goto menu_akademik
    if %pilih%==2 goto menu_perhitungan
    if %pilih%==3 goto menu_perbaikan_komputer
    if %pilih%==4 goto menu_jaringan_komputer
    if %pilih%==5 goto aplikasi
    if %pilih%==6 goto menu_setting
    if %pilih%==7 goto 7
    if %pilih%==Q goto exit

    REM AKADEMIK
        :menu_akademik
        cls
        echo ----------- MENU AKADEMIK ----------
        echo 1. Jadwal Kuliah
        echo 2. Penilaian Mahasiswa
        echo 3. Laporan Penilaian Mahasiswa/KHS
        echo 0) Kembali ke Menu Utama
        echo ------------------------------------
        set /p pilih=Silakan pilih menu :
        if %pilih%==1 goto jadwal  
        if %pilih%==2 goto Penilaian
        if %pilih%==3 goto khs
        if %pilih%==0 goto :begin

        rem MENU AKADEMIK
            :jadwal
                cls
                echo.
                echo                      JADWAL KULIAH
                echo         _____________________________________
                echo.
                echo Senin  = Sistem Opersi(10.00-12.00) PAI(10.00-12.00)
                echo Selasa = Sistem Opersi(10.00-12.00) PAI(10.00-12.00)
                echo Rabu   = Liburr... 
                echo Kamis  = Libur... 
                echo Jumat  = Sistem Opersi(10.00-12.00) PAI(10.00-12.00) 
                echo Sabtu  = Sistem Opersi(10.00-12.00) PAI(10.00-12.00)
                pause
                goto menu_akademik
            :Penilaian
                cls
                REM Setting variabel identitas
                    set /p nim=  Masukan NIM     : 
                    set /p nama= Masukan Nama    : 
                    set /p kelas=Masukan Kelas   : 
                    set /p prodi=Masukan Jurusan : 
                REM Setting variabel nilai
                    set /p bhs_ind=Nilai Bahasa Indonesia  : 
                    set /p bhs_ing=Nilai Bahasa Inggris    : 
                    set /p pd=     Nilai Pemrograman Dasar : 
                    set /p mtk=    Nilai Matematika        : 
                    set /p kal1=   Nilai Kalkulus 1        : 
                    set /p os=     Nilai Sistem Operasi    : 
                REM Perhitungan
                    set /a rata=(bhs_ind+bhs_ing+pd+mtk+kal1+os)/6
                REM Grade nilai 
                    if %bhs_ind% gtr 0 if %bhs_ind% leq 60 (
                        set grade_ind=C
                    ) else if %bhs_ind% gtr 60 if %bhs_ind% leq 75 (
                        set grade_ind=B
                    ) else if %bhs_ind% gtr 75 if %bhs_ind% leq 85 (
                        set grade_ind=AB
                    ) else if %bhs_ind% gtr 85 if %bhs_ind% leq 100 (
                        set grade_ind=A
                    ) else (
                        set grade_ind=Grade Anda Tidak ditemukan!
                    )
                    if %bhs_ing% gtr 0 if %bhs_ing% leq 60 (
                        set grade_ing=C
                    ) else if %bhs_ing% gtr 60 if %bhs_ing% leq 75 (
                        set grade_ing=B
                    ) else if %bhs_ing% gtr 75 if %bhs_ing% leq 85 (
                        set grade_ing=AB
                    ) else if %bhs_ing% gtr 85 if %bhs_ing% leq 100 (
                        set grade_ing=A
                    ) else (
                        set grade_ing=Grade Anda Tidak ditemukan!
                    )
                    if %pd% gtr 0 if %pd% leq 60 (
                        set grade_pd=C
                    ) else if %pd% gtr 60 if %pd% leq 75 (
                        set grade_pd=B
                    ) else if %pd% gtr 75 if %pd% leq 85 (
                        set grade_pd=AB
                    ) else if %pd% gtr 85 if %pd% leq 100 (
                        set grade_pd=A
                    ) else (
                        set grade_pd=Grade Anda Tidak ditemukan!
                    )
                    if %mtk% gtr 0 if %mtk% leq 60 (
                        set grade_mtk=C
                    ) else if %mtk% gtr 60 if %mtk% leq 75 (
                        set grade_mtk=B
                    ) else if %mtk% gtr 75 if %mtk% leq 85 (
                        set grade_mtk=AB
                    ) else if %mtk% gtr 85 if %mtk% leq 100 (
                        set grade_mtk=A
                    ) else (
                        set grade_mtk=Grade Anda Tidak ditemukan!
                    )
                    if %kal1% gtr 0 if %kal1% leq 60 (
                        set grade_kal1=C
                    ) else if %kal1% gtr 60 if %kal1% leq 75 (
                        set grade_kal1=B
                    ) else if %kal1% gtr 75 if %kal1% leq 85 (
                        set grade_kal1=AB
                    ) else if %kal1% gtr 85 if %kal1% leq 100 (
                        set grade_kal1=A
                    ) else (
                        set grade_kal1=Grade Anda Tidak ditemukan!
                    )
                    if %os% gtr 0 if %os% leq 60 (
                        set grade_os=C
                    ) else if %os% gtr 60 if %os% leq 75 (
                        set grade_os=B
                    ) else if %os% gtr 75 if %os% leq 85 (
                        set grade_os=AB
                    ) else if %os% gtr 85 if %os% leq 100 (
                        set grade_os=A
                    ) else (
                        set grade_mtk=Grade Anda Tidak ditemukan!
                    )
                REM Grade rata
                    if %rata% gtr 0 if %rata% leq 60 (
                    set grade_rata=C
                    ) else if %rata% gtr 60 if %rata% leq 75 (
                    set grade_rata=B
                    ) else if %rata% gtr 75 if %rata% leq 85 (
                    set grade_rata=AB
                    ) else if %rata% gtr 85 if %rata% leq 100 (
                    set grade_rata=A
                    ) else (
                    set grade_rata=Grade Anda Tidak ditemukan!
                    )
                REM Tampilan
                    echo -------------------------------------
                    echo          Kartu Hasil Studi     
                    echo        Uniss Kampus 2 Batang   
                    echo -------------------------------------
                    echo.
                    echo Nim anda          : %nim%
                    echo Nama lengkap anda : %nama%
                    echo Kelas anda        : %kelas%
                    echo Progam Studi anda : %prodi%
                    echo.
                    echo -------------------------------------
                    echo No   Mata Kuliah      Nilai  Grade
                    echo -------------------------------------
                    echo.
                    echo 1. Bahasa Indonesia  = %bhs_ind%   %grade_ind%
                    echo 2. Bahasa Inggris    = %bhs_ing%   %grade_ing%
                    echo 3. Pemrograman Dasar = %pd%   %grade_pd%
                    echo 4. Matematika        = %mtk%   %grade_mtk%
                    echo 5. Kalkulus 1        = %kal1%   %grade_kal1%
                    echo 6. Sistem Operasi    = %os%   %grade_os%
                    echo.
                    echo -------------------------------------
                    echo.
                    echo Rata-Rata = %rata%              %grade_rata%
                    echo.
                    echo -------------------------------------
                REM Ekspor ke file teks
                    set /p ekspor=Apakah Anda ingin mengekspor KHS ini ke file teks? (Y/T):
                    if /i %ekspor%==Y (
                        echo ------------------------------------->>KHS_MAHASISWA\%nim%.txt
                        echo         Kartu Hasil Studi            >>KHS_MAHASISWA\%nim%.txt  
                        echo       Uniss Kampus 2 Batang          >>KHS_MAHASISWA\%nim%.txt
                        echo ------------------------------------->>KHS_MAHASISWA\%nim%.txt
                        echo.>>KHS_MAHASISWA\%nim%.txt
                        echo Nim anda          : %nim%>>KHS_MAHASISWA\%nim%.txt
                        echo Nama lengkap anda : %nama%>>KHS_MAHASISWA\%nim%.txt
                        echo Kelas anda        : %kelas%>>KHS_MAHASISWA\%nim%.txt
                        echo Progam Studi anda : %prodi%>>KHS_MAHASISWA\%nim%.txt
                        echo.>>KHS_MAHASISWA\%nim%.txt
                        echo ------------------------------------->>KHS_MAHASISWA\%nim%.txt
                        echo No   Mata Kuliah      Nilai  Grade   >>KHS_MAHASISWA\%nim%.txt
                        echo ------------------------------------->>KHS_MAHASISWA\%nim%.txt
                        echo.>>KHS_MAHASISWA\%nim%.txt
                        echo 1. Bahasa Indonesia  = %bhs_ind%   %grade_ind%>>KHS_MAHASISWA\%nim%.txt
                        echo 2. Bahasa Inggris    = %bhs_ing%   %grade_ing%>>KHS_MAHASISWA\%nim%.txt
                        echo 3. Pemrograman Dasar = %pd%   %grade_pd%>>KHS_MAHASISWA\%nim%.txt
                        echo 4. Matematika        = %mtk%   %grade_mtk%>>KHS_MAHASISWA\%nim%.txt
                        echo 5. Kalkulus 1        = %kal1%   %grade_kal1%>>KHS_MAHASISWA\%nim%.txt
                        echo 6. Sistem Operasi    = %os%   %grade_os%>>KHS_MAHASISWA\%nim%.txt
                        echo.>>KHS_MAHASISWA\%nim%.txt
                        echo ------------------------------------->>KHS_MAHASISWA\%nim%.txt
                        echo.>>KHS_MAHASISWA\%nim%.txt
                        echo Rata-Rata %rata%               %grade_rata%>>KHS_MAHASISWA\%nim%.txt
                        echo.>>KHS_MAHASISWA\%nim%.txt
                        echo ------------------------------------->>KHS_MAHASISWA\%nim%.txt
                        echo.
                        echo.
                        echo KHS berhasil di eksport...
                    ) else (
                        echo Terima kasih telah menggunakan layanan ini.
                        )
                    pause
                    goto menu_akademik
            :khs
                cls
                setlocal
                set folder=D:\UNISS Khoirul\semester 1-2\Sistem Operasi\projek akhir\KHS_MAHASISWA
                echo Isi folder %folder%:
                echo.
                setlocal enabledelayedexpansion
                set count=1
                for %%G in ("%folder%\*") do (
                    echo !count!. %%~nG
                    set "file[!count!]=%%~fG"
                    set /a count+=1
                )
                echo.
                set /p pilih="Pilih nomor file yang ingin dibuka: "

                if defined file[%pilih%] (
                    start "" "!file[%pilih%]!"
                ) else (
                    echo Nomor file tidak valid.
                )
                endlocal
                pause
                goto menu_akademik

    REM PERHITUNGAN
        :menu_perhitungan
        cls
        echo -------------------------------
        echo          MENU PERHITUNGAN
        echo -------------------------------
        echo 1. Penjumlahan
        echo 2. Pengurangan
        echo 3. Perkalian
        echo 4. Pembagian
        echo 0) Kembali Ke Menu Utama
        echo -------------------------------
        set /p pilih="Pilih operasi yang ingin Anda lakukan : "
        if %pilih%==1 goto penjumlahan
        if %pilih%==2 goto pengurangan
        if %pilih%==3 goto perkalian
        if %pilih%==4 goto pembagian
        if %pilih%==0 goto :begin

        REM MENU PERHITUNGAN
            :penjumlahan
            cls
            echo -------------------------------
            echo           PENJUMLAHAN
            echo -------------------------------
            set /p a1="Masukkan angka pertama: "
            set /p a2="Masukkan angka kedua: "
            set /a hasil=a1+a2
            echo Hasil penjumlahan: %hasil%
            echo -------------------------------
            pause
            goto menu_perhitungan

            :pengurangan
            cls
            echo -------------------------------
            echo           PENGURANGAN
            echo -------------------------------
            set /p a1="Masukkan angka pertama: "
            set /p a2="Masukkan angka kedua: "
            set /a hasil=a1-a2
            echo Hasil pengurangan: %hasil%
            echo -------------------------------
            pause
            goto menu_perhitungan

            :perkalian
            cls
            echo -------------------------------
            echo           PERKALIAN
            echo -------------------------------
            set /p a1="Masukkan angka pertama: "
            set /p a2="Masukkan angka kedua: "
            set /a hasil=a1*a2
            echo Hasil perkalian: %hasil%
            echo -------------------------------
            pause
            goto menu_perhitungan

            :pembagian
            cls
            echo -------------------------------
            echo           PEMBAGIAN
            echo -------------------------------
            set /p a1="Masukkan angka pertama: "
            set /p a2="Masukkan angka kedua: "
            set /a hasil=a1/a2
            echo Hasil pembagian: %hasil%
            echo -------------------------------
            pause
            goto menu_perhitungan

    REM PERBAIKAN KOMPUTER
        :menu_perbaikan_komputer
        cls
        echo ------ MENU PERBAIKAN KOMPUTER ------
        echo 1. Disc Scan
        echo 2. Disc Clean Up
        echo 3. Defrag
        echo 4. Scan Virus
        echo 5. Defender Call
        echo 6. Update Sistem
        echo 7. Perbaikan Perangkat Keras: 
        echo 0) Kembali ke Menu Utama
        echo --------------------------------------
        set /p pilih=Silakan pilih menu: 
        if %pilih%==1 goto DiskScan
        if %pilih%==2 goto DiskCleanUp
        if %pilih%==3 goto Defrag
        if %pilih%==4 goto ScanVirus
        if %pilih%==5 goto DefenderCall
        if %pilih%==6 goto updateOS
        if %pilih%==7 goto hardware
        if %pilih%==0 goto :begin 

        REM MENU PERBAIKAN KOMPUTER
            :DiskScan
            cls
            echo Menjalankan Disk Scan...
            echo.
            chkdsk C: /f /r
            chkdsk D: /f /r
            echo.
            echo Disk Scan selesai.
            pause
            goto menu_perbaikan_komputer
            :DiskCleanUp
            cls
            echo Menjalankan Disk Clean Up...
            echo.
            cleanmgr /d C:
            echo.
            echo Disk Clean Up selesai.
            pause
            goto menu_perbaikan_komputer
            :Defrag
            cls
            echo Menjalankan Defrag...
            echo.
            defrag C: /f
            echo.
            echo Defrag selesai.
            pause
            goto menu_perbaikan_komputer
            :ScanVirus
            cls
            echo Menjalankan Scan Virus...
            echo.
            sfc /scannow
            echo.
            echo Scan Virus selesai.
            pause
            goto menu_perbaikan_komputer
            :DefenderCall
            cls
            echo Menjalankan Defender Call...
            echo.
            "C:\Program Files\Windows Defender\MpCmdRun.exe" -Scan -ScanType 3
            echo.
            echo Defender Call selesai.
            pause
            goto menu_perbaikan_komputer
            :updateOS
            echo Memperbarui Windows...
            echo.
            wusa /detectnow /updatenow
            echo.
            echo Pembaruan Sistem selesai.
            pause
            goto menu_perbaikan_komputer
            :hardware
            echo Memeriksa Informasi Sistem...
            echo.
            wmic computersystem get model, manufacturer
            wmic cpu get name, caption
            wmic memorychip get capacity, manufacturer, partnumber
            wmic diskdrive get model, size, interfacetype
            echo.
            echo Periksa Informasi Sistem selesai.
            pause
            goto menu_perbaikan_komputer

    REM JARINGAN KOMPUTER
        :menu_jaringan_komputer
        cls
        echo ------ MENU JARINGAN KOMPUTER ------
        echo 1. Cek IP
        echo 2. Ping Domain
        echo 3. Setting Network Koneksi
        echo 4. Cek Kecepatan Internet
        echo 5. Diagnostic Tool
        echo 0) Kembali ke Menu Utama
        echo -----------------------------------
        set /p pilih=Silakan pilih opsi jaringan :
        if %pilih%==1 goto ip
        if %pilih%==2 goto ping
        if %pilih%==3 goto snk
        if %pilih%==4 goto speedtest
        if %pilih%==5 goto dx
        if %pilih%==0 goto :begin

        rem MENU JARINGAN KOMPUTER
            :ip
            cls
            ipconfig
            pause
            goto menu_jaringan_komputer
            :ping
            cls
            set /p domain=Masukkan nama domain: 
            ping %domain%
            pause
            goto menu_jaringan_komputer
            :snk
            cls
            start ncpa.cpl
            pause
            goto menu_jaringan_komputer
            :speedtest
            cls
            echo Menjalankan perintah speedtest...
            echo.
            "C:\speedtest\speedtest"
            echo.
            echo Speed Test selesai dijalankan.
            pause
            goto menu_jaringan_komputer
            :dx
            cls
            start dxdiag
            pause
            goto menu_jaringan_komputer
            
    REM APLIKASI
        :aplikasi
        cls
        echo ------ MENU APLIKASI ------
        echo 1. Microsoft Office
        echo 2. Game
        echo 3. Progaming
        echo 4. Web Browser
        echo 0) Kembali Ke Menu Utama
        echo ---------------------------
        set /p pilih=Silakan pilih menu aplikasi : 
        if %pilih%==1 goto office
        if %pilih%==2 goto game
        if %pilih%==3 goto progaming
        if %pilih%==4 goto browser
        if %pilih%==0 goto :menu_utama

        REM MENU APLIKASI OFFICE
            :office
            cls
            echo --------- OFFICE ----------
            echo 1. Word
            echo 2. Excel
            echo 3. PowerPoint
            echo 0) Kembali Ke Menu Aplikasi
            echo ---------------------------
            set /p pilih=Silakan pilih aplikasi: 

            if %pilih%==1 goto word
            if %pilih%==2 goto excel
            if %pilih%==3 goto ppt
            if %pilih%==0 goto :aplikasi

            rem SUBMENU APLIKASI OFFICE
                :word
                cls
                echo.
                echo Menjalankan Aplikasi Microsoft Word...
                echo.
                start "" "winword"
                echo.
                echo Aplikasi Microsoft Word Berhasil dijalankan.
                echo.
                pause
                goto office

                :excel
                cls
                echo.
                echo Menjalankan Aplikasi Microsoft Excel...
                echo.
                start "" "excel"
                echo.
                echo Aplikasi Microsoft Excel Berhasil dijalankan.
                echo.
                pause
                goto office

                :ppt
                cls
                echo.
                echo Menjalankan Aplikasi Microsoft PowerPoint...
                echo.
                start "" "powerpnt"
                echo.
                echo Aplikasi Microsoft PowerPoint Berhasil dijalankan.
                echo.
                pause
                goto office
        REM MENU APLIKASI GAME
            :game
            cls
            echo ---------- GAME -----------
            echo 1. Rise Of Kingdom
            echo 2. XBOX
            echo 0) Kembali Ke Menu Aplikasi
            echo ---------------------------
            set /p pilih=Silakan pilih aplikasi : 
            if %pilih%==1 goto rok
            if %pilih%==2 goto xbox
            if %pilih%==0 goto :aplikasi

            rem SUBMENU APLIKASI GAME
                :rok
                cls
                echo.
                echo Menjalankan Rise Of Kingdom Code...
                "C:\Program Files (x86)\ROKLauncher\launcher.exe"
                echo.
                echo Aplikasi Berhasil dijalankan.
                echo.
                pause
                goto game
                :xbox
                cls
                echo.
                echo Menjalankan Aplikasi XBOX Code...
                start xboxc
                echo.
                echo Aplikasi Berhasil dijalankan.
                echo.
                pause
                goto game
        
        REM MENU APLIKASI PROGAMING
            :progaming
            cls
            echo ------- PROGAMING --------
            echo 1. Visual Studio Code
            echo 2. XAMPP
            echo 3. Anaconda
            echo 4. Postman
            echo 0) Kembali Ke Menu Aplikasi
            echo ---------------------------
            set /p pilih=Silakan pilih aplikasi: 

            if %pilih%==1 goto vscode
            if %pilih%==2 goto xampp
            if %pilih%==3 goto anaconda
            if %pilih%==4 goto postman
            if %pilih%==0 goto :aplikasi

            rem SUBMENU APLIKASI GAME
                :vscode
                cls
                echo.
                echo Menjalankan Aplikasi Visual Studio Code...
                echo.
                start "" "C:\Users\HP\AppData\Local\Programs\Microsoft VS Code\Code.exe"
                echo.
                echo Aplikasi Berhasil dijalankan.
                echo.
                pause
                goto progaming

                :xampp
                cls
                echo.
                echo Menjalankan Aplikasi XAMPP...
                echo.
                start "" "C:\xampp\xampp-control.exe"
                echo.
                echo Aplikasi Berhasil dijalankan.
                echo.
                pause
                goto progaming

                :anaconda
                cls
                echo.
                echo Menjalankan Aplikasi Anaconda...
                echo.
                start "" "C:\Users\HP\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Anaconda3 (64-bit)\Anaconda.exe"
                echo.
                echo Aplikasi Berhasil dijalankan.
                echo.
                pause
                goto progaming

                :postman
                cls
                echo.
                echo Menjalankan Aplikasi Postman...
                echo.
                start "" "C:\Users\HP\AppData\Local\Postman\Postman.exe"
                echo.
                echo Aplikasi Berhasil dijalankan.
                echo.
                pause
                goto progaming

        REM MENU WEB BROWSING
            :browser
            cls
            echo --------MENU WEB BROWSER-------
            echo 1. Google Chrome
            echo 2. Microsoft Edge
            echo 0) Kembali Ke Menu Utama
            echo -------------------------------
            set /p pilih=Pilih web browser yang ingin Anda jalankan: 
            if %pilih%==1 goto chorme
            if %pilih%==2 goto edge
            if %pilih%==0 goto :aplikasi

            rem SUBMENU WEB BROWSER
                :chrome
                cls
                echo.
                echo Menjalankan Chrome...
                echo.
                "C:\Program Files\Google\Chrome\Application\chrome.exe"
                echo.
                echo Aplikasi Berhasil dijalankan.
                echo.
                pause
                goto browser
                :edge
                cls
                echo.
                echo Menjalankan Microsoft Edge...
                echo.
                start msedge
                echo.
                echo Aplikasi Berhasil dijalankan.
                echo.
                pause
                goto browser

    REM SETTING
        :menu_setting
        cls
        echo ------------ MENU SETTING ------------
        echo 1. Setting Keyboard
        echo 2. Setting Language
        echo 3. Setting Date 
        echo 4. Add user
        echo 5. Sound Control
        echo 6. Open Startup
        echo 7. Registering
        echo 0) Kembali ke Menu Utama
        echo --------------------------------------
        set /p pilih=Masukkan Pilihan Menu :
        if %pilih%==1 goto keyboard 
        if %pilih%==2 goto Language
        if %pilih%==3 goto Date
        if %pilih%==4 goto User
        if %pilih%==5 goto sound
        if %pilih%==6 goto startup
        if %pilih%==7 goto regist
        if %pilih%==0 goto :menu_utama

        rem MENU SETTING
            :keyboard
            cls
            start control keyboard
            pause
            goto menu_setting
            :Language
            cls
            start intl.cpl
            pause
            goto menu_setting 
            :Date
            cls
            start timedate.cpl
            pause
            goto menu_setting
            :User
            cls
            start Netplwiz.exe
            pause
            goto menu_setting
            :sound
            cls
            start SndVol.exe
            pause
            goto menu_setting
            :startup
            cls
            start msconfig
            pause
            goto menu_setting
            :regist
            cls
            start regedit
            pause
            goto menu_setting

    REM kakanan nusantara
    :7
    cls
    echo 1) rendang
    echo 2) tepe
    echo 3) gudeg
    echo 4) tahu
    echo 0) Kembalike ke enu Utama

    set /p pilih=Masukkan Pilihan Menu :
        if %pilih%==1 goto 1 
        if %pilih%==2 goto 2
        if %pilih%==3 goto 3
        if %pilih%==4 goto 4
        if %pilih%==0 goto :menu_utama
             
        :1
        CLS 
        echo ini rendang
        pause
        goto 7

        :1
        CLS 
        echo ini tepe
        pause
        goto 7

        :1
        CLS 
        echo ini gudeg
        pause
        goto 7

        :1
        CLS 
        echo ini tahu
        pause
        goto 7

    REM EXIT
        :exit
        exit