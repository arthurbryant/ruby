#/usr/bin/ruby

BCC_MAIL = "bcc@deploygate.com"
emails = ['cst.feng@gmail.com', 'feng.zhang@mixi.co.jp']
@emails = emails.tap{ |ary| ary.push BCC_MAIL }.tap{ |e| p e }


plist = {'CFBundleDisplayName' => 'Sample'}
@label = plist['CFBundleName'].tap{|o| break o.value if o } || plist['CFBundleDisplayName'].tap{|o| break o.value if o }
p @label
