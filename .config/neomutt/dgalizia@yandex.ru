## Receive options
#
unmailboxes *
source "gpg -dq ~/.config/neomutt/pass_dgalizia@yandex.ru.gpg |"
set imap_pass=$my_pass
#set imap_pass = "domenico64"
set folder = "imaps://dgalizia@yandex.ru@imap.yandex.ru:993/"
set spoolfile = "+INBOX"
set record = "+Sent"
set trash= "+Trash"
set postponed = "+Drafts"
set imap_check_subscribed
mailboxes =INBOX =Sent =Trash =Drafts

## Send options
#
set smtp_url = "smtps://dgalizia@yandex.ru@smtp.yandex.ru:465/"
set realname="Galizia Domenico"
set from=dgalizia@yandex.ru
#set signature="Domenico Galizia"
set signature="~/.config/neomutt/dgalizia@yandex.ru.signature"
#set smtp_pass = "domenico64"
set smtp_pass = $my_pass

#account-hook . 'unset imap_user ; unset imap_pass ; unset tunnel'
#account-hook imaps://dgalizia@yandex.ru@imap.yandex.ru:993/ 'set imap_user=dgalizia imap_pass=domenico64 smtp_pass=domenico64'

account-hook imaps://dgalizia@yandex.ru@imap.yandex.ru:993/ 'set imap_user=dgalizia imap_pass=$my_pass smtp_pass=$my_pass'

