#encoding: utf-8
class Testa

	def initialize
		@html = []
		@html << %{<!DOCTYPE html> }
		@html << %{<html> }
		@html << %{<head>}
		@html << %{  <script src="http://siteapp.baidu.com/static/webappservice/uaredirect.js" type="text/javascript"></script>}
		@html << %{  <script type="text/javascript">uaredirect("http://m.baoxian028.com");</script>}
		@html << %{  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />}
		@html << %{  <meta http-equiv="Content-Language" content="ZH-cn" />}
		@html << %{  <meta name="robots" content="all" />}
		@html << %{  <meta name="author" content="baoxian028.com" />}
		@html << %{  <title>成都保险咨询网，保险、成都保险咨询、保险购买、保险咨询</title>}
		@html << %{  <meta name="keywords" content="保险,保险网,买保险,网上买保险,在线投保,成都保险咨询网,成都保险,商业保险,人寿保险" />}
		@html << %{  <meta name="description" content="成都保险咨询网是成都地区最专业的保险网." />}
		@html << %{  <meta name="baidu-tc-verification" content="5a77e927775101d376dc8b9a6660a78d" />}
		@html << %{  <link href="http://www.baoxian028.com/assets/application.css" media="screen" rel="stylesheet" type="text/css" />}
		@html << %{  <link href="http://www.baoxian028.com/insurance_base/css.css" media="screen" rel="stylesheet" type="text/css" />}
		@html << %{</head> }
		@html << %{<body> }
		@html << %{<div class="page_margins" id="page_margins">}
		@html << %{<div class="container">}
		#@html = @html.map{|line| line.force_encoding("utf-8")}.join("\n")
	end

	def run
		files = File.join("./insurance_base/*.html")
		Dir.glob(files).each_with_index do |file, index|
			the_html = []
			lines = File.open(file,"r").readlines.map{|line| line.force_encoding("UTF-8").strip}
			start_line = lines.index("<!-- begin: main content area #main -->")
			end_line   = lines.index("<!-- end: #main -->")
			lines.each_with_index do |line, index|
				next if index < start_line
				next if index > end_line
				if line == %{<div id="main" class="detail">}
					the_html << %{<div id="main" class="row">}
				elsif line == %{<div id="col1" role="complementary">}
					the_html << %{<div id="col1" class="span9">}
				elsif line == %{<div id="col3" role="main">}
					the_html << %{<div id="col3" class="span3">}
				else
					the_html << line
				end		
			end
			all_html = @html + the_html
			all_html << "</div></div></body></html>"
			all_html = all_html.map{|line| line.force_encoding("utf-8")}.join("\n")
			File.open(file.sub(/\.\/insurance_base\//, './insurance_base4/'), "w+"){|f| f.write(all_html)}

			puts file
			all_html = nil

		end
	end

end

if __FILE__ == $0
	Testa.new.run
end

