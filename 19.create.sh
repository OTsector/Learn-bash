#!/bin/bash

mkdir archive -p # "mkdir" დირექციის შექმნისთვის "-p" თუ არსებობს შექმნის ჩაშლის პროცესი არ აღიქვას შეცდომად
mkdir -p "archive/program logs"

# > ნიშნავს შექმნას და შეინახოს ფაილში
# >> ნიშნავს შექმნას თუ უკვე არ არის შექმნილი და დაამატოს სასრულში
echo "" > New text archive/document.txt
echo "Learn $BASH programming: https://github.com/OTsector/Learn-bash" > archive/links.txt
echo "OT's Github account: https://github.com/OTsector" >> archive/links.txt # დაემატოს ტექსტი ფაილში

# შემდეგის გამოყენება მხოლოდ "echo"_ში არ გამოიყენება, არამედ სხვა დანარჩენ ხელსაწყოებშიც
# ის ასრულებს პროგრამის შედეგის შენახვის ფუნქციას
# მაგალითად:

ifconfig >> "archive/program logs/ifconfig.log" # ">" და ">>" გამოყენების დროს ხდება პირდაპირ ფაილში შენახვა,
# რის გამოც ვიზუალური გამოსახულების გარჩევა ტერმინალში ვერ ხდება.
# ამის პრობლემის გადაწყვეტა შესძლებელია მარტივად "tee" ხელსაწყოს დახმარებით

# tee fileName # ასრულებს იგივე მოვალეობას რასაც ასრულებს ">"
# tee -a fileName # ასრულებს იგივე მოვალეობას რასაც ასრულებს ">>"
ping google.com -c 5 | tee -a "archive/program logs/pingGoogle.log"

# ფაილის წასაშლელად გამოიყენება "rm" ხელსაწყო
echo -en "\nგინდათ წაიშალოს ხელსაწყოს მიერ შექმნილი დირექცია სახელად \"archive\"? [Y/n] "; read delete
if [[ $delete == "y" ]] || [[ $delete == "Y" ]] && [[ -d "archive" ]]; then
	rm -rf archive # "-r" წაიშალოს მთელი დირექცია. "-f" წაიშალოს კითხვების გარეშე
	echo -e "\n\tდირექცია \"archive\" წაიშალა!\n"
else
	echo -e "\n\tდირექცია \"archive\" არ წაიშალა!\n"
fi
