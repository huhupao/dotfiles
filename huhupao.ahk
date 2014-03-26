; google
!space:: 
url := RegExReplace(Clipboard, "^\s+|\s+$")  ; Trim whitespace
if RegExMatch(url, "^(http|ftp|telnet)") {
    ; Do nothing if it already looks like a URL
} else {
    ; Escape the query string. Could escape more, but this seems sufficient for Chrome
    StringReplace, url, url, `%, `%25, All
    StringReplace, url, url,  &, `%26, All
    StringReplace, url, url,  +, `%2B, All
    url := "https://www.google.com/search?q=" . url
}
Run %url%
return

; baidu 
#space::
url := RegExReplace(Clipboard, "^\s+|\s+$")  ; Trim whitespace
if RegExMatch(url, "^(http|ftp|telnet)") {
    ; Do nothing if it already looks like a URL
} else {
    ; Escape the query string. Could escape more, but this seems sufficient for Chrome
    StringReplace, url, url, `%, `%25, All
    StringReplace, url, url,  &, `%26, All
    StringReplace, url, url,  +, `%2B, All
    url := "http://www.baidu.com/s?wd=" . url
}
Run %url%
return

; open url 
!Capslock:: Run "C:\Program Files\Google\Chrome\Application\chrome.exe" %Clipboard%

^!c:: Run calc.exe

#F12::
Run "C:\Program Files\Microsoft Office\Office12\OUTLOOK.EXE"
Run "C:\Program Files\baidu\Baidu Hi\baiduhi.exe"
Run "C:\Program Files\NetSarang\Xshell 4\Xshell.exe"
return
#F11::Run "C:\Program Files\Tencent\QQ\Bin\QQ.exe"
