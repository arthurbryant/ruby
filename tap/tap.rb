#/usr/bin/ruby

BCC_MAIL = "bcc@deploygate.com"
emails = ['cst.feng@gmail.com', 'feng.zhang@mixi.co.jp']
@emails = emails.tap{ |ary| ary.push BCC_MAIL }
p @emails
