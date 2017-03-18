#!/usr/bin/ruby

def make_alert(err_message, err_source=nil, options = {})
  p err_message
  p err_source
  p options
end

make_alert(:err_message => 'error message')
make_alert('error message')

make_alert('error message', nil, :status => 'status')
make_alert('error message', nil, {:status => 'status'})
#make_alert('error message', :status => 'status')
#make_alert('error message', {:status => 'status'})
