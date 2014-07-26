require 'rubygems'
require 'mysql2'
require 'active_record'

class Dbtest
  def initialize
    ActiveRecord::Base.establish_connection(
        :adapter => "mysql2",
        :host => "112.124.60.115",
        :database => "e9",
        :username => "root",
        :password => "guavaguava00"
    )

  end
end
dbt=Dbtest.new
class Goods<ActiveRecord::Base

end

goods=Goods.find(453)
puts goods.title