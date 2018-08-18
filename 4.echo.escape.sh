#!/bin/bash

# escape არის დეფინიცია სხვადასხვა ტექსტური თუ სისტემური მნიშვნელი რომელიც გამოიყენება "\"_ის მნიშვნელით
# იმისთვის რომ "echo"_მ მიიღოს escape სიმბოლოს მნიშვნელი საჭიროა დაემატოს " -e". მაგალითად: echo -e "ტექსტი\nტექსტი\n"
echo -e "alert\a"
echo -e "backspace \bbackspace"
echo -e "form feed\fform feed"
echo -e "new line\nnew line"
echo -e "carriage return\rcarriage return"
echo -e "horizontal tab\thorizontal tab"
echo -e "vertical tab\tvertical tab"
echo -e "backslash\\backslash"
echo -e "double quotes\"double quotes"
echo -e Single quotes\'ingle quotes

echo -e "\n\nმაგალითისთვის:"
echo -e "\t\t _\n\t07\t[|] 0ffensive 7ester\n" # ASCII Art
