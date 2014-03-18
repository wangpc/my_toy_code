# test file for my_toy_code
# try to upload it


puts "Hello World."

host_list = [
	{"passport" => 
		[{"10.36.7.203" => "passport.baidu.com"},]
	},
	{"ibase221" =>[
		{"10.48.31.102" => "www.baifubao.com"},
		{"10.48.31.102"	=> "baifubao.baidu.com"},
		{"10.48.31.102" => "life.baifubao.com"},
		{"10.48.31.102"	=> "life.baidu.com"},]
	},
	{"finance" =>
		[{"10.48.29.131"	=> "miracle.sys.baidu.com"}]
	},
	{"vip" => 
		[{"10.48.29.130" => "vip.baifubao.com"},]
	},
	{"pre_online" =>[	
		{"10.65.26.77" => "www.baifubao.com"},
		{"10.65.26.77" => "life.baifubao.com"},
		{"10.65.26.77" => "baifubao.baidu.com"},
		{"10.65.26.77" => "vip.baifubao.com"},
		{"10.65.26.77" => "co.baifubao.com"}
	]}
]

puts "* now what u want: 1: clear all host; 2: enable some host;"
get = gets.strip

File.open("C:/Windows/System32/drivers/etc/hosts","w+") do |host|
	if get == '1' then 
		# do nothing
	elsif get == '2' then
		host_list.each_with_index do |ha, index|
			puts "* #{index}: #{ha.keys[0].to_s}"
		end
		puts "* plz input the host u want to enable: "
		arrGet = gets.strip
		arrGet.split("").each do |tar|
			if tar.to_i.to_s != tar.to_s then 
				puts "* wrong input, pls input number below. "
			end
			if tar.to_i > host_list.length then 
				puts "* wrong input, pls input number below. "
			end
		end
		arrGet.split("").each do |tar|
		host_list[tar.to_i].values[0].each do |arr|
			arr.each do |k,v|
				host.puts "#{k}      #{v}"
			end
		end
	end 
end
	

