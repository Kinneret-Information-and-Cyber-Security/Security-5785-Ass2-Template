#!/bin/bash

plaindir="decryptedfiles"

if [ ! -d "$plaindir" ]; then
    # Create the decrypted files directory if it doesn't exist
    mkdir "$plaindir"
else
    # If the directory exists, check if it's empty
    if [ "$(ls -A "$plaindir")" ]; then
        # If the directory is not empty, clear its contents
        rm -rf "$plaindir"/*
    fi
fi

echo Test 1
java -jar AES-Hashing-Server-5785.jar -ip=127.0.0.1 -port=5000 -outfile=decryptedfiles/Test1-AES-CBC-decrypted-test-doc.docx -cipher=AES/CBC/PKCS5Padding -key=66B52DE97FA36AFC713DF1B9B33A9753 -hashalg=MD5 > Test1-server-output.txt &
test1_receiver_pid=$!
sleep 3
java -jar AES-Hashing-Client-5785.jar -dest=127.0.0.1 -port=5000 -infile=tests/test-doc.docx -cipher=AES/CBC/PKCS5Padding -iv=7374726F6E676261646D616473616473 -key=66B52DE97FA36AFC713DF1B9B33A9753 -hashalg=MD5 > Test1-client-output.txt
sleep 5

if ps -p $test1_receiver_pid > /dev/null; then
	kill "$test1_receiver_pid"
fi


echo Test 2
java -jar AES-Hashing-Server-5785.jar -ip=127.0.0.2 -port=5001 -outfile=decryptedfiles/Test2-AES-CBC-decrypted-Chicago.pdf -cipher=AES/CBC/PKCS5Padding -key=36DDEA1CD9A920E3E5EA0BFC1D83B90B -hashalg=SHA256 > Test2-server-output.txt &
test2_receiver_pid=$!
sleep 3
java -jar AES-Hashing-Client-5785.jar -dest=127.0.0.2 -port=5001 -infile=tests/Chicago.pdf -cipher=AES/CBC/PKCS5Padding -iv=7374726F6E676261646D616473616473 -key=36DDEA1CD9A920E3E5EA0BFC1D83B90B -hashalg=SHA256 > Test2-client-output.txt
sleep 5

if ps -p $test2_receiver_pid > /dev/null; then
	kill "$test2_receiver_pid"
fi

echo Test 3
java -jar AES-Hashing-Server-5785.jar -ip=127.0.0.3 -port=5002 -outfile=decryptedfiles/Test3-AES-CBC-decrypted-test-doc.docx -cipher=AES/CBC/PKCS5Padding -key=CE178FFD3838B427B688CCF619E337F5 -hashalg=MD5 > Test3-server-output.txt &
test3_receiver_pid=$!
sleep 3
java -jar AES-Hashing-Client-5785.jar -dest=127.0.0.3 -port=5002 -infile=tests/test-doc.docx -cipher=AES/CBC/PKCS5Padding -iv=7374726F6E676261646D616473616473 -key=CE178FFD3838B427B688CCF619E337F5 -hashalg=MD5 > Test3-client-output.txt
sleep 5

if ps -p $test3_receiver_pid > /dev/null; then
	kill "$test3_receiver_pid"
fi

echo Test 4
java -jar AES-Hashing-Server-5785.jar -ip=127.0.0.4 -port=5003 -outfile=decryptedfiles/Test4-AES-CBC-decrypted-test-doc.docx -cipher=AES/CBC/PKCS5Padding -key=17F28536BDDC903DEAEF3A0DA6867BCCF0EB8A369BF40794 -hashalg=SHA1 > Test4-server-output.txt &
test4_receiver_pid=$!
sleep 3
java -jar AES-Hashing-Client-5785.jar -dest=127.0.0.4 -port=5003 -infile=tests/test-doc.docx -cipher=AES/CBC/PKCS5Padding -iv=736576656E6A756E696F726D696E7473 -key=17F28536BDDC903DEAEF3A0DA6867BCCF0EB8A369BF40794 -hashalg=SHA1 > Test4-client-output.txt
sleep 5

if ps -p $test4_receiver_pid > /dev/null; then
	kill "$test4_receiver_pid"
fi

echo Test 5
java -jar AES-Hashing-Server-5785.jar -ip=127.0.0.5 -port=5004 -outfile=decryptedfiles/Test5-AES-CBC-decrypted-Chicago.pdf -cipher=AES/CBC/PKCS5Padding -key=78DA8C0E14C7519E235F18C39E940AECD73390094BC658C8 -hashalg=SHA1 > Test5-server-output.txt &
test5_receiver_pid=$!
sleep 3
java -jar AES-Hashing-Client-5785.jar -dest=127.0.0.5 -port=5004 -infile=tests/Chicago.pdf -cipher=AES/CBC/PKCS5Padding -iv=736576656E6A756E696F726D696E7473 -key=78DA8C0E14C7519E235F18C39E940AECD73390094BC658C8 -hashalg=SHA1 > Test5-client-output.txt
sleep 5

if ps -p $test5_receiver_pid > /dev/null; then
	kill "$test5_receiver_pid"
fi

echo Test 6
java -jar AES-Hashing-Server-5785.jar -ip=127.0.0.6 -port=5005 -outfile=decryptedfiles/Test6-AES-CBC-decrypted-Chicago.pdf -cipher=AES/CBC/PKCS5Padding -key=20F3519914DD21D39A44F8DAB171B559CCDEBEBEB6BD8AFEBF2B3E5A4EAF960B -hashalg=SHA256 > Test6-server-output.txt &
test6_receiver_pid=$!
sleep 3
java -jar AES-Hashing-Client-5785.jar -dest=127.0.0.6 -port=5005 -infile=tests/Chicago.pdf -cipher=AES/CBC/PKCS5Padding -iv=736576656E6A756E696F726D696E7473 -key=20F3519914DD21D39A44F8DAB171B559CCDEBEBEB6BD8AFEBF2B3E5A4EAF960B -hashalg=SHA256 > Test6-client-output.txt
sleep 5

if ps -p $test6_receiver_pid > /dev/null; then
	kill "$test6_receiver_pid"
fi

echo Test 7
java -jar AES-Hashing-Server-5785.jar -ip=127.0.0.7 -port=5006 -outfile=decryptedfiles/Test7-AES-CBC-decrypted-test-doc.docx -cipher=AES/CBC/PKCS5Padding -key=22BA0AD25F26BBC5F7D358B9D14BE4655928452EE5FB0C30E9023418FC7A0DF4 -hashalg=SHA256 > Test7-server-output.txt &
test7_receiver_pid=$!
sleep 3
java -jar AES-Hashing-Client-5785.jar -dest=127.0.0.7 -port=5006 -infile=tests/test-doc.docx -cipher=AES/CBC/PKCS5Padding -iv=736576656E6A756E696F726D696E7473 -key=22BA0AD25F26BBC5F7D358B9D14BE4655928452EE5FB0C30E9023418FC7A0DF4 -hashalg=SHA256 > Test7-client-output.txt
sleep 5

if ps -p $test7_receiver_pid > /dev/null; then
	kill "$test7_receiver_pid"
fi

echo Test 8
java -jar AES-Hashing-Server-5785.jar -ip=127.0.0.8 -port=5007 -outfile=decryptedfiles/Test8-AES-CTR-decrypted-Chicago.pdf -cipher=AES/CTR/NoPadding -key=418A63A385C877DD9AB7ECBD11521476 -hashalg=SHA256 > Test8-server-output.txt &
test8_receiver_pid=$!
sleep 3
java -jar AES-Hashing-Client-5785.jar -dest=127.0.0.8 -port=5007 -infile=tests/Chicago.pdf -cipher=AES/CTR/NoPadding -iv=7374726F6E676261646D616473616473 -key=418A63A385C877DD9AB7ECBD11521476 -hashalg=SHA256 > Test8-client-output.txt
sleep 5

if ps -p $test8_receiver_pid > /dev/null; then
	kill "$test8_receiver_pid"
fi

echo Test 9
java -jar AES-Hashing-Server-5785.jar -ip=127.0.0.9 -port=5008 -outfile=decryptedfiles/Test9-AES-CTR-decrypted-test-doc.docx -cipher=AES/CTR/NoPadding -key=4C9B48A0DC8E0512DE866F1946D7F2204CD6C35FC95A539DB9A1AD6348DE266B -hashalg=SHA512 > Test9-server-output.txt &
test9_receiver_pid=$!
sleep 3
java -jar AES-Hashing-Client-5785.jar -dest=127.0.0.9 -port=5008 -infile=tests/test-doc.docx -cipher=AES/CTR/NoPadding -iv=6974776173746865626573746F666D65 -key=4C9B48A0DC8E0512DE866F1946D7F2204CD6C35FC95A539DB9A1AD6348DE266B -hashalg=SHA512 > Test9-client-output.txt
sleep 5

if ps -p $test9_receiver_pid > /dev/null; then
	kill "$test9_receiver_pid"
fi

echo Test 10
java -jar AES-Hashing-Server-5785.jar -ip=127.0.0.10 -port=5009 -outfile=decryptedfiles/Test10-AES-GCM-decrypted-Chicago.pdf -cipher=AES/GCM/NoPadding -key=7767FC39C396B557DE45CA675BB1850D -hashalg=SHA512 -taglength=128 > Test10-server-output.txt &
test10_receiver_pid=$!
sleep 3
java -jar AES-Hashing-Client-5785.jar -dest=127.0.0.10 -port=5009 -infile=tests/Chicago.pdf -cipher=AES/GCM/NoPadding -iv=7374726F6E676261646D616473616473 -key=7767FC39C396B557DE45CA675BB1850D -hashalg=SHA512 -taglength=128 > Test10-client-output.txt
sleep 5

if ps -p $test10_receiver_pid > /dev/null; then
	kill "$test10_receiver_pid"
fi

echo Test 11
java -jar AES-Hashing-Server-5785.jar -ip=127.0.0.11 -port=5010 -outfile=decryptedfiles/Test11-AES-GCM-decrypted-test-doc.docx -cipher=AES/GCM/NoPadding -key=149B71889F1961699676255D4548BA8A -hashalg=SHA512 -taglength=128 > Test11-server-output.txt &
test11_receiver_pid=$!
sleep 3
java -jar AES-Hashing-Client-5785.jar -dest=127.0.0.11 -port=5010 -infile=tests/test-doc.docx -cipher=AES/GCM/NoPadding -iv=7374726F6E676261646D616473616473 -key=149B71889F1961699676255D4548BA8A -hashalg=SHA512 -taglength=128 > Test11-client-output.txt
sleep 5

if ps -p $test11_receiver_pid > /dev/null; then
	kill "$test11_receiver_pid"
fi

echo Test 12
java -jar AES-Hashing-Server-5785.jar -ip=127.0.0.12 -port=5011 -outfile=decryptedfiles/Test12-AES-GCM-decrypted-Chicago.pdf -cipher=AES/GCM/NoPadding -key=F326373282A3A2250B509FDD377634BB -hashalg=SHA512 -taglength=96 > Test12-server-output.txt &
test12_receiver_pid=$!
sleep 3
java -jar AES-Hashing-Client-5785.jar -dest=127.0.0.12 -port=5011 -infile=tests/Chicago.pdf -cipher=AES/GCM/NoPadding -iv=7374726F6E676261646D616473616473 -key=F326373282A3A2250B509FDD377634BB -hashalg=SHA512 -taglength=96 > Test12-client-output.txt
sleep 5

if ps -p $test12_receiver_pid > /dev/null; then
	kill "$test12_receiver_pid"
fi

echo Test 13
java -jar AES-Hashing-Server-5785.jar -ip=127.0.0.13 -port=5012 -outfile=decryptedfiles/Test13-AES-GCM-decrypted-Chicago.pdf -cipher=AES/GCM/NoPadding -key=1FCA79010000ED602D175553F7922AF9E540737488D0CD26 -hashalg=MD5 -taglength=96 > Test13-server-output.txt &
test13_receiver_pid=$!
sleep 3
java -jar AES-Hashing-Client-5785.jar -dest=127.0.0.13 -port=5012 -infile=tests/Chicago.pdf -cipher=AES/GCM/NoPadding -iv=736576656E6A756E696F726D696E7473 -key=1FCA79010000ED602D175553F7922AF9E540737488D0CD26 -hashalg=MD5 -taglength=96 > Test13-client-output.txt
sleep 5

if ps -p $test13_receiver_pid > /dev/null; then
	kill "$test13_receiver_pid"
fi

echo Test 14
java -jar AES-Hashing-Server-5785.jar -ip=127.0.0.14 -port=5013 -outfile=decryptedfiles/Test14-AES-GCM-decrypted-test-doc.docx -cipher=AES/GCM/NoPadding -key=4105E50847674C2363A72138F95AA0DE64BC1F60879685747C5EFAD3CAC9AC9F -hashalg=SHA1 -taglength=96 > Test14-server-output.txt &
test14_receiver_pid=$!
sleep 3
java -jar AES-Hashing-Client-5785.jar -dest=127.0.0.14 -port=5013 -infile=tests/test-doc.docx -cipher=AES/GCM/NoPadding -iv=6974776173746865626573746F666D65 -key=4105E50847674C2363A72138F95AA0DE64BC1F60879685747C5EFAD3CAC9AC9F -hashalg=SHA1 -taglength=96 > Test14-client-output.txt
sleep 5

if ps -p $test14_receiver_pid > /dev/null; then
	kill "$test14_receiver_pid"
fi

echo Test 15
java -jar AES-Hashing-Server-5785.jar -ip=127.0.0.15 -port=5014 -outfile=decryptedfiles/Test15-AES-GCM-decrypted-test-doc.docx -cipher=AES/GCM/NoPadding -key=0C0C49D48155947815CF4A49F72C86F4C3D40D97D4113DD1 -hashalg=SHA256 -taglength=128 > Test15-server-output.txt &
test15_receiver_pid=$!
sleep 3
java -jar AES-Hashing-Client-5785.jar -dest=127.0.0.15 -port=5014 -infile=tests/test-doc.docx -cipher=AES/GCM/NoPadding -iv=736576656E6A756E696F726D696E7473 -key=0C0C49D48155947815CF4A49F72C86F4C3D40D97D4113DD1 -hashalg=SHA256 -taglength=128 > Test15-client-output.txt
sleep 5

if ps -p $test15_receiver_pid > /dev/null; then
	kill "$test15_receiver_pid"
fi

echo Test 16
java -jar AES-Hashing-Server-5785.jar -ip=127.0.0.16 -port=5015 -outfile=decryptedfiles/Test16-AES-GCM-decrypted-test-doc.docx -cipher=AES/GCM/NoPadding -key=AF418405B33CEC1564112D9C0825FA60988BE820E01922E28AF41BB1E40E8185 -hashalg=SHA512 -taglength=128 > Test16-server-output.txt &
test16_receiver_pid=$!
sleep 3
java -jar AES-Hashing-Client-5785.jar -dest=127.0.0.16 -port=5015 -infile=tests/test-doc.docx -cipher=AES/GCM/NoPadding -iv=6974776173746865626573746F666D65 -key=AF418405B33CEC1564112D9C0825FA60988BE820E01922E28AF41BB1E40E8185 -hashalg=SHA512 -taglength=128 > Test16-client-output.txt
sleep 5

if ps -p $test16_receiver_pid > /dev/null; then
	kill "$test16_receiver_pid"
fi

echo Test 17
java -jar AES-Hashing-Server-5785.jar -ip=127.0.0.17 -port=5016 -outfile=decryptedfiles/Test17-AES-CBC-decrypted-Chicago.pdf -hmackey=ababababab -cipher=AES/CBC/PKCS5Padding -key=48C0850E47F1043D542D00EF28AFA7FF4D1FE19A5E94442C -hashalg=HmacSHA256 > Test17-server-output.txt &
test17_receiver_pid=$!
sleep 3
java -jar AES-Hashing-Client-5785.jar -dest=127.0.0.17 -port=5016 -infile=tests/Chicago.pdf -hmackey=ababababab -cipher=AES/CBC/PKCS5Padding -iv=736576656E6A756E696F726D696E7473 -key=48C0850E47F1043D542D00EF28AFA7FF4D1FE19A5E94442C -hashalg=HmacSHA256 > Test17-client-output.txt
sleep 5

if ps -p $test17_receiver_pid > /dev/null; then
	kill "$test17_receiver_pid"
fi

echo Test 18
java -jar AES-Hashing-Server-5785.jar -ip=127.0.0.18 -port=5017 -outfile=decryptedfiles/Test18-AES-CBC-decrypted-test-doc.docx -hmackey=ababababab -cipher=AES/CBC/PKCS5Padding -key=7A696C6C6F77777377696E7377617273696E746F68656172 -hashalg=HmacSHA256 > Test18-server-output.txt &
test18_receiver_pid=$!
sleep 3
java -jar AES-Hashing-Client-5785.jar -dest=127.0.0.18 -port=5017 -infile=tests/test-doc.docx -hmackey=ababababab -cipher=AES/CBC/PKCS5Padding -iv=736576656E6A756E696F726D696E7473 -key=7A696C6C6F77777377696E7377617273696E746F68656172 -hashalg=HmacSHA256 > Test18-client-output.txt
sleep 5

if ps -p $test18_receiver_pid > /dev/null; then
	kill "$test18_receiver_pid"
fi

echo Test 19
java -jar AES-Hashing-Server-5785.jar -ip=127.0.0.19 -port=5018 -outfile=decryptedfiles/Test19-AES-CBC-decrypted-Chicago.pdf -hmackey=26C4920B8FD20E59136383E82FB639C39A82590B970ACFC21C58057F35D1E121 -cipher=AES/CBC/PKCS5Padding -key=7A696C6C6F77777377696E7377617273696E746F6865617271756F746171696B -hashalg=HmacSHA256 > Test19-server-output.txt &
test19_receiver_pid=$!
sleep 3
java -jar AES-Hashing-Client-5785.jar -dest=127.0.0.19 -port=5018 -infile=tests/Chicago.pdf -hmackey=26C4920B8FD20E59136383E82FB639C39A82590B970ACFC21C58057F35D1E121 -cipher=AES/CBC/PKCS5Padding -iv=736576656E6A756E696F726D696E7473 -key=7A696C6C6F77777377696E7377617273696E746F6865617271756F746171696B -hashalg=HmacSHA256 > Test19-client-output.txt
sleep 5

if ps -p $test19_receiver_pid > /dev/null; then
	kill "$test19_receiver_pid"
fi

echo Test 20
java -jar AES-Hashing-Server-5785.jar -ip=127.0.0.20 -port=5019 -outfile=decryptedfiles/Test20-AES-CBC-decrypted-Chicago.pdf -hmackey=AF7F5DA6B75DAB8207CB680897CD914D63F1CC664D3ECC6A8D368A4F7773CF73 -cipher=AES/CBC/PKCS5Padding -key=7A696C6C6F77777377696E7377617273696E746F6865617271756F746171696B -hashalg=HmacSHA512 > Test20-server-output.txt &
test20_receiver_pid=$!
sleep 3
java -jar AES-Hashing-Client-5785.jar -dest=127.0.0.20 -port=5019 -infile=tests/Chicago.pdf -hmackey=AF7F5DA6B75DAB8207CB680897CD914D63F1CC664D3ECC6A8D368A4F7773CF73 -cipher=AES/CBC/PKCS5Padding -iv=736576656E6A756E696F726D696E7473 -key=7A696C6C6F77777377696E7377617273696E746F6865617271756F746171696B -hashalg=HmacSHA512 > Test20-client-output.txt
sleep 5

if ps -p $test20_receiver_pid > /dev/null; then
	kill "$test20_receiver_pid"
fi

echo Test 21
java -jar AES-Hashing-Server-5785.jar -ip=127.0.0.21 -port=5020 -outfile=decryptedfiles/Test21-AES-CTR-decrypted-test-doc.docx -hmackey=0D91B579BD89C553C7009D5326471C972DB84CAEDB3D0981106B1D5E4A9959AB -cipher=AES/CTR/NoPadding -key=6B696C6C696E67796F756775796A6F6E -hashalg=HmacSHA512 > Test21-server-output.txt &
test21_receiver_pid=$!
sleep 3
java -jar AES-Hashing-Client-5785.jar -dest=127.0.0.21 -port=5020 -infile=tests/test-doc.docx -hmackey=0D91B579BD89C553C7009D5326471C972DB84CAEDB3D0981106B1D5E4A9959AB -cipher=AES/CTR/NoPadding -iv=7374726F6E676261646D616473616473 -key=6B696C6C696E67796F756775796A6F6E -hashalg=HmacSHA512 > Test21-client-output.txt
sleep 5

if ps -p $test21_receiver_pid > /dev/null; then
	kill "$test21_receiver_pid"
fi

echo Test 22
java -jar AES-Hashing-Server-5785.jar -ip=127.0.0.22 -port=5021 -outfile=decryptedfiles/Test22-AES-CTR-decrypted-Chicago.pdf -hmackey=CEA0C88B386518FA330EB442BF864C1AC63E0BF6D9A165CFA32A36D7DF6A026D2F114E7166112E6D1CC11676BF8A01018408738417335D58277DC0004005BCAC -cipher=AES/CTR/NoPadding -key=7A696C6C6F77777377696E7377617273696E746F68656172 -hashalg=HmacSHA512 > Test22-server-output.txt &
test22_receiver_pid=$!
sleep 3
java -jar AES-Hashing-Client-5785.jar -dest=127.0.0.22 -port=5021 -infile=tests/Chicago.pdf -hmackey=CEA0C88B386518FA330EB442BF864C1AC63E0BF6D9A165CFA32A36D7DF6A026D2F114E7166112E6D1CC11676BF8A01018408738417335D58277DC0004005BCAC -cipher=AES/CTR/NoPadding -iv=736576656E6A756E696F726D696E7473 -key=7A696C6C6F77777377696E7377617273696E746F68656172 -hashalg=HmacSHA512 > Test22-client-output.txt
sleep 5

if ps -p $test22_receiver_pid > /dev/null; then
	kill "$test22_receiver_pid"
fi

echo Test 23
java -jar AES-Hashing-Server-5785.jar -ip=127.0.0.23 -port=5022 -outfile=decryptedfiles/Test23-AES-CTR-decrypted-test-doc.docx -hmackey=13DF2168796BE40CE9E79144AAD9F95D44D76CE4CF1F094737C97950518D8807EE2D0B6F1192BE154ED736959AFA4CE6A056A2AF58A7E2F46A6C0DED6DC765D2 -cipher=AES/CTR/NoPadding -key=7A696C6C6F77777377696E7377617273696E746F68656172 -hashalg=HmacSHA3-256 > Test23-server-output.txt &
test23_receiver_pid=$!
sleep 3
java -jar AES-Hashing-Client-5785.jar -dest=127.0.0.23 -port=5022 -infile=tests/test-doc.docx -hmackey=13DF2168796BE40CE9E79144AAD9F95D44D76CE4CF1F094737C97950518D8807EE2D0B6F1192BE154ED736959AFA4CE6A056A2AF58A7E2F46A6C0DED6DC765D2 -cipher=AES/CTR/NoPadding -iv=736576656E6A756E696F726D696E7473 -key=7A696C6C6F77777377696E7377617273696E746F68656172 -hashalg=HmacSHA3-256 > Test23-client-output.txt
sleep 5

if ps -p $test23_receiver_pid > /dev/null; then
	kill "$test23_receiver_pid"
fi

echo Test 24
java -jar AES-Hashing-Server-5785.jar -ip=127.0.0.24 -port=5023 -outfile=decryptedfiles/Test24-AES-CTR-decrypted-Chicago.pdf -hmackey=2FD49D345A88D9624C3E28811F0388B5A71A025C60DEEEACECEC82721FCAEDB183D83B8000614BE8FA46ADF22EDB056EEA712CF0E649FE69D658D20CDCEF1437 -cipher=AES/CTR/NoPadding -key=68756E647265647965617273776172696E74726F64756374696F6E696E746865 -hashalg=HmacSHA3-256 > Test24-server-output.txt &
test24_receiver_pid=$!
sleep 3
java -jar AES-Hashing-Client-5785.jar -dest=127.0.0.24 -port=5023 -infile=tests/Chicago.pdf -hmackey=2FD49D345A88D9624C3E28811F0388B5A71A025C60DEEEACECEC82721FCAEDB183D83B8000614BE8FA46ADF22EDB056EEA712CF0E649FE69D658D20CDCEF1437 -cipher=AES/CTR/NoPadding -iv=6974776173746865626573746F666D65 -key=68756E647265647965617273776172696E74726F64756374696F6E696E746865 -hashalg=HmacSHA3-256 > Test24-client-output.txt
sleep 5

if ps -p $test24_receiver_pid > /dev/null; then
	kill "$test24_receiver_pid"
fi

echo Test 25
java -jar AES-Hashing-Server-5785.jar -ip=127.0.0.25 -port=5024 -outfile=decryptedfiles/Test25-AES-GCM-decrypted-test-doc.docx -hmackey=441FA7B63DB6A157E99DCAB7C3D92A5E8C12D8791CE4B49B12830CD507D8793E530C121AAE1CC1410EF958926D9606D0CA16CC8355CBF32D56FE1812210F0768 -cipher=AES/GCM/NoPadding -key=6B696C6C696E67796F756775796A6F6E -hashalg=HmacSHA3-256 -taglength=96 > Test25-server-output.txt &
test25_receiver_pid=$!
sleep 3
java -jar AES-Hashing-Client-5785.jar -dest=127.0.0.25 -port=5024 -infile=tests/test-doc.docx -hmackey=441FA7B63DB6A157E99DCAB7C3D92A5E8C12D8791CE4B49B12830CD507D8793E530C121AAE1CC1410EF958926D9606D0CA16CC8355CBF32D56FE1812210F0768 -cipher=AES/GCM/NoPadding -iv=7374726F6E676261646D616473616473 -key=6B696C6C696E67796F756775796A6F6E -hashalg=HmacSHA3-256 -taglength=96 > Test25-client-output.txt
sleep 5

if ps -p $test25_receiver_pid > /dev/null; then
	kill "$test25_receiver_pid"
fi

echo Test 26
java -jar AES-Hashing-Server-5785.jar -ip=127.0.0.26 -port=5025 -outfile=decryptedfiles/Test26-AES-GCM-decrypted-test-doc.docx -hmackey=8ACA31E1CC7BAF0AF0ACF029FBBA8D22BBCED4F9312A05358DFB6FCC3B42ACE444D1CAE9D373033435C90F2C0D22AFFD072A54868D319F7C47A75321E7061351 -cipher=AES/GCM/NoPadding -key=6B696C6C696E67796F756775796A6F6E -hashalg=HmacSHA3-256 -taglength=96 > Test26-server-output.txt &
test26_receiver_pid=$!
sleep 3
java -jar AES-Hashing-Client-5785.jar -dest=127.0.0.26 -port=5025 -infile=tests/test-doc.docx -hmackey=8ACA31E1CC7BAF0AF0ACF029FBBA8D22BBCED4F9312A05358DFB6FCC3B42ACE444D1CAE9D373033435C90F2C0D22AFFD072A54868D319F7C47A75321E7061351 -cipher=AES/GCM/NoPadding -iv=7374726F6E676261646D616473616473 -key=6B696C6C696E67796F756775796A6F6E -hashalg=HmacSHA3-256 -taglength=96 > Test26-client-output.txt
sleep 5

if ps -p $test26_receiver_pid > /dev/null; then
	kill "$test26_receiver_pid"
fi

echo Test 27
java -jar AES-Hashing-Server-5785.jar -ip=127.0.0.27 -port=5026 -outfile=decryptedfiles/Test27-AES-GCM-decrypted-test-doc.docx -hmackey=51E09F40EA350D2B3BAF53CD8039CA84528B57B301E66BEC8CE818F7EAACF7286B03212836087E43B253FDFB3FD545B5CF15795FB6B25934214149E4002A23B8 -cipher=AES/GCM/NoPadding -key=7A696C6C6F77777377696E7377617273696E746F68656172 -hashalg=HmacSHA3-512 -taglength=96 > Test27-server-output.txt &
test27_receiver_pid=$!
sleep 3
java -jar AES-Hashing-Client-5785.jar -dest=127.0.0.27 -port=5026 -infile=tests/test-doc.docx -hmackey=51E09F40EA350D2B3BAF53CD8039CA84528B57B301E66BEC8CE818F7EAACF7286B03212836087E43B253FDFB3FD545B5CF15795FB6B25934214149E4002A23B8 -cipher=AES/GCM/NoPadding -iv=736576656E6A756E696F726D696E7473 -key=7A696C6C6F77777377696E7377617273696E746F68656172 -hashalg=HmacSHA3-512 -taglength=96 > Test27-client-output.txt
sleep 5

if ps -p $test27_receiver_pid > /dev/null; then
	kill "$test27_receiver_pid"
fi

echo Test 28
java -jar AES-Hashing-Server-5785.jar -ip=127.0.0.28 -port=5027 -outfile=decryptedfiles/Test28-AES-GCM-decrypted-test-doc.docx -hmackey=cdcdcdcdcd -cipher=AES/GCM/NoPadding -key=6B696C6C696E67796F756775796A6F6E -hashalg=HmacSHA3-512 -taglength=128 > Test28-server-output.txt &
test28_receiver_pid=$!
sleep 3
java -jar AES-Hashing-Client-5785.jar -dest=127.0.0.28 -port=5027 -infile=tests/test-doc.docx -hmackey=cdcdcdcdcd -cipher=AES/GCM/NoPadding -iv=7374726F6E676261646D616473616473 -key=6B696C6C696E67796F756775796A6F6E -hashalg=HmacSHA3-512 -taglength=128 > Test28-client-output.txt
sleep 5

if ps -p $test28_receiver_pid > /dev/null; then
	kill "$test28_receiver_pid"
fi

echo Test 29
java -jar AES-Hashing-Server-5785.jar -ip=127.0.0.29 -port=5028 -outfile=decryptedfiles/Test29-AES-GCM-decrypted-test-doc.docx -hmackey=E07DF86DECB8F7B236839699E9085540487C39FE95AB5B60B91E61067FC62FF4D12AD302B1884DE6AF7E1986B207D2945A8E3C5BF5A628488EA754FF4D4BA1BD -cipher=AES/GCM/NoPadding -key=7A696C6C6F77777377696E7377617273696E746F68656172 -hashalg=HmacSHA3-512 -taglength=128 > Test29-server-output.txt &
test29_receiver_pid=$!
sleep 3
java -jar AES-Hashing-Client-5785.jar -dest=127.0.0.29 -port=5028 -infile=tests/test-doc.docx -hmackey=E07DF86DECB8F7B236839699E9085540487C39FE95AB5B60B91E61067FC62FF4D12AD302B1884DE6AF7E1986B207D2945A8E3C5BF5A628488EA754FF4D4BA1BD -cipher=AES/GCM/NoPadding -iv=736576656E6A756E696F726D696E7473 -key=7A696C6C6F77777377696E7377617273696E746F68656172 -hashalg=HmacSHA3-512 -taglength=128 > Test29-client-output.txt
sleep 5

if ps -p $test29_receiver_pid > /dev/null; then
	kill "$test29_receiver_pid"
fi

echo Test 30
java -jar AES-Hashing-Client-5785.jar -dest=127.0.0.30 -port=5029 -hmackey=E07DF86DECB8F7B236839699E9085540487C39FE95AB5B60B91E61067FC62FF4D12AD302B1884DE6AF7E1986B207D2945A8E3C5BF5A628488EA754FF4D4BA1BD -cipher=AES/CBC/PKCS5Padding -iv=7374726F6E676261646D616473616473 -key=6B696C6C696E67796F756775796A6F6E -hashalg=HmacSHA512 > Test30-client-output.txt
test30_sender_pid=$!

if ps -p $test30_sender_pid > /dev/null; then
	kill "$test30_sender_pid"
fi

echo Test 31
java -jar AES-Hashing-Client-5785.jar -dest=127.0.0.31 -port=5030 -infile=tests/Chicago.pdf -cipher=ADG/CTR/NoPadding -iv=7374726F6E676261646D616473616473 -key=6B696C6C696E67796F756775796A6F6E -hashalg=SHA256 > Test31-client-output.txt
test31_sender_pid=$!

if ps -p $test31_sender_pid > /dev/null; then
	kill "$test31_sender_pid"
fi

echo Test 32
java -jar AES-Hashing-Client-5785.jar -dest=127.0.0.32 -port=5031 -infile=tests/test-doc.docx -cipher=AES/GCM/NoPadding -iv=7374726F6E676261646D616473616473 -key=6B696C6C696E67796F756775796A6F6E -hashalg=SAD512 -taglength=128 > Test32-client-output.txt
test32_sender_pid=$!

if ps -p $test32_sender_pid > /dev/null; then
	kill "$test32_sender_pid"
fi

echo Test 33
java -jar AES-Hashing-Server-5785.jar -ip=a.b.c.d -port=5032 -outfile=decryptedfiles/Test33-AES-CBC-decrypted-Chicago.pdf -hmackey=E07DF86DECB8F7B236839699E9085540487C39FE95AB5B60B91E61067FC62FF4D12AD302B1884DE6AF7E1986B207D2945A8E3C5BF5A628488EA754FF4D4BA1BD -cipher=AES/CBC/PKCS5Padding -key=7A696C6C6F77777377696E7377617273696E746F6865617271756F746171696B -hashalg=HmacSHA256 > Test33-server-output.txt &
test33_receiver_pid=$!
sleep 2

if ps -p $test33_receiver_pid > /dev/null; then
	kill "$test33_receiver_pid"
fi

echo Test 34
java -jar AES-Hashing-Server-5785.jar -ip=127.0.0.34 -port=5033 -outfile=decryptedfiles/Test34-AES-CTR-decrypted-test-doc.docx -hmackey=F17DF86DECB8F7B236839699E9085540487C39FE95AB5B60B91E61067FC62FF4D12AD302B1884DE6AF7E1986B207D2945A8E3C5BF5A628488EA754FF4D4BA1BD -cipher=AES/CTR/NoPadding -key=6B696C6C696E67796F756775796A6F6E -hashalg=HmacSHA512 > Test34-server-output.txt &
test34_receiver_pid=$!
sleep 2
java -jar AES-Hashing-Client-5785.jar -dest=127.0.0.34 -port=5033 -infile=tests/test-doc.docx -hmackey=E07DF86DECB8F7B236839699E9085540487C39FE95AB5B60B91E61067FC62FF4D12AD302B1884DE6AF7E1986B207D2945A8E3C5BF5A628488EA754FF4D4BA1BD -cipher=AES/CTR/NoPadding -iv=7374726F6E676261646D616473616473 -key=6B696C6C696E67796F756775796A6F6E -hashalg=HmacSHA512 > Test34-client-output.txt
sleep 3

if ps -p $test34_receiver_pid > /dev/null; then
	kill "$test34_receiver_pid"
fi

echo Test 35
java -jar AES-Hashing-Server-5785.jar -ip=127.0.0.35 -port=5034 -outfile=decryptedfiles/Test35-AES-GCM-decrypted-Chicago.pdf -hmackey=E07DF86DECB8F7B236839699E9085540487C39FE95AB5B60B91E61067FC62FF4D12AD302B1884DE6AF7E1986B207D2945A8E3C5BF5A628488EA754FF4D4BA1BD -cipher=AES/GCM/NoPadding -key=7A696C6C6F77777377696E7377617273696E746F68656172 -hashalg=HmacSHA512 -taglength=128 > Test35-server-output.txt &
test35_receiver_pid=$!
sleep 2
java -jar AES-Hashing-Client-5785.jar -dest=127.0.0.35 -port=5034 -infile=tests/Chicago.pdf -hmackey=E07DF86DECB8F7B236839699E9085540487C39FE95AB5B60B91E61067FC62FF4D12AD302B1884DE6AF7E1986B207D2945A8E3C5BF5A628488EA754FF4D4BA1BD -cipher=AES/GCM/NoPadding -iv=736576656E6A756E696F726D696E7473 -key=7A696C6C6F77777377696E7377617273696E746F68656172 -hashalg=HmacSHA3-512 -taglength=128 > Test35-client-output.txt
sleep 3

if ps -p $test35_receiver_pid > /dev/null; then
	kill "$test35_receiver_pid"
fi

echo Test 36
java -jar AES-Hashing-Server-5785.jar -ip=127.0.0.36 -port=5035 -outfile=decryptedfiles/Test36-AES-GCM-decrypted-Chicago.pdf -hmackey=E07DF86DECB8F7B236839699E9085540487C39FE95AB5B60B91E61067FC62FF4D12AD302B1884DE6AF7E1986B207D2945A8E3C5BF5A628488EA754FF4D4BA1BD -cipher=AES/GCM/NoPadding -key=89296C6C6F77777377696E7377617273696E746F68656172 -hashalg=HmacSHA3-512 -taglength=128 > Test36-server-output.txt &
test36_receiver_pid=$!
sleep 2
java -jar AES-Hashing-Client-5785.jar -dest=127.0.0.36 -port=5035 -infile=tests/Chicago.pdf -hmackey=E07DF86DECB8F7B236839699E9085540487C39FE95AB5B60B91E61067FC62FF4D12AD302B1884DE6AF7E1986B207D2945A8E3C5BF5A628488EA754FF4D4BA1BD -cipher=AES/GCM/NoPadding -iv=736576656E6A756E696F726D696E7473 -key=7A696C6C6F77777377696E7377617273696E746F68656172 -hashalg=HmacSHA3-512 -taglength=128 > Test36-client-output.txt
sleep 3

if ps -p $test36_receiver_pid > /dev/null; then
	kill "$test36_receiver_pid"
fi

sha256sum "$plaindir"/* > "$plaindir"/decryptedfiles.sha256

sha256sum -c ./decryptedfiles.sha256
