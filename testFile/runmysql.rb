class Mysql
  def run
    require "mysql"
    dbc = Mysql.real_connect('112.124.60.115','root','guavaguava00','e9')
    res = dbc.query('select * from goods')
    while row = res.fetch_row do
      puts "#{row[0]},#{row[1]}"
    end
  end
end

m=Mysql.new
m.run