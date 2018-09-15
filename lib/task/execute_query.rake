#!/usr/bin/env ruby

require 'awesome_print'

namespace :execute_query do
  task :file, %w[sql_file] => :environment do |_task, args|
    sql = File.open(args['sql_file']) { |f| f.read }
    # split multiple queries
    queries = sql.split(/;$/)
    # remove last blank line if exists
    queries.pop if queries[-1] =~ /^\s+$/
    ap queries

    ActiveRecord::Base.transaction do
      queries.each do |q|
        result = ActiveRecord::Base.connection.execute(q)
        result.each { |r| ap r }
        # TODO: deal with the query result
      end
    end
  end
end
