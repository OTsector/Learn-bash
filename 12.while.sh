#!/bin/bash

i=0
j=0

while [ $i -le 10 ]; do # სანამ "$i" იქნება ათი ან მასზე ნაკლები აღსრულდეს
	echo $i
	let i=$i+1 # "let" გამოიყენება მთელ რიცხვთა მათემატიკური მოქმედებების შესასრულებლად. ნაჩვენებია ცვლადის ერთით გაზრდა
done # პირობის სასრული

# ასევე შესაძლებელი დებულების შემოწმება მის ტანში "if"_ის და "break"_ის გამოყენებით

while [ true ]; do # სანამ ჭეშმარიტია, გამოიყენება მუდმივასთვის
	echo $j
	let j=$j+1
	if ! [[ $j -le 10 ]]; then # შემოწმება თუ ვარიაცია არ არის "$j" ნაკლები ან ტოლი ათის
		break # შეაჩეროს
	fi
done
