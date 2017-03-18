#!/usr/bin/env ruby
options = %w[アイドルネッサンス つりビット GEM 夢みるアドレセンス アップアップガールズ(仮)  PASSPO☆]
questions = [1, 2, 3]
url = " http://localhost:3000/events/1/enquetes/answers"
cmd = %Q[curl -F "event_id=1" -F "enquete_id=1"]
3.times do |i|
  ans = options.sample
  cmd += " -F \"items[#{i}][question_id]=#{questions[i]}\" -F \"items[#{i}][answer]=#{ans}\" "
end

cmd += url

system(cmd)
