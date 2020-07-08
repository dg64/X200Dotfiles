## Receive options
#
unmailboxes *
source "gpg -dq ~/.config/neomutt/pass_domenico@integration21.ru.gpg |"
set imap_pass=$my_pass
#set imap_pass = "Int21ru"
set folder = "imaps://domenico@integration21.ru@imap.yandex.ru:993/"
set spoolfile = "+INBOX"
set record = "+Отправленные"
set trash= "+Удаленные" 
set postponed = "+Черновики"
set imap_check_subscribed
mailboxes =INBOX =Отправленные =Удаленные =Черновики =Спам

## Send options
#
set smtp_url = "smtps://domenico@integration21.ru@smtp.yandex.ru:465/"
set realname="Galizia Domenico"
set from=domenico@integration21.ru
#set signature="Domenico Galizia"
set signature="~/.config/neomutt/domenico@integration21.ru.signature
set smtp_pass = $my_pass
#set smtp_pass="Int21ru"

#account-hook . 'unset imap_user ; unset imap_pass ; unset tunnel'
#account-hook imaps://domenico@integration21.ru@imap.yandex.ru:993/ 'set imap_user=domenico@integration21.ru imap_pass=Int21ru smtp_pass=Int21ru'

account-hook imaps://domenico@integration21.ru@imap.yandex.ru:993/ 'set imap_user=domenico@integration21.ru imap_pass=$my_pass smtp_pass=$my_pass'


