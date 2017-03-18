#!/usr/bin/env ruby

def token_validate?(token)
  token =~ /\Atok_[0-9a-z]+\z/
end

if token_validate?('tok_5ca06b51685e001723a2c3b4aeb4')
  p 'valid token'
else
  p 'invalid token'
end

if token_validate?('tok_A5ca06b51685e001723a2c3b4aeb4')
  p 'valid token'
else
  p 'invalid token'
end
