#encoding: utf-8
$:.unshift(File.dirname(__FILE__))

#http://www.cdhrss.gov.cn/openALLCommonPage.jsp

# command line argument parsing
# mechanize lib
require 'rubygems'
require 'mechanize'
require 'hpricot'

# re-use Exception
class Exception
  attr_accessor :method_name
end

class ExtractException < Exception ; end

# define main class
class MechanizeExtractionCdhrss
  def print_and_exit(msg)
      puts
      puts '*** ERROR ***'
      puts msg
      puts
      exit
  end
  
  def initialize
    #invalid byte sequence in UTF-8
    @ic = Iconv.new("UTF-8//IGNORE", "GBK//IGNORE")

    @url = "http://www.cdhrss.gov.cn/openALLCommonPage.jsp"
    init_mechanize
  end
  
  def init_mechanize
    @agent = Mechanize.new {|m| m.log = Logger.new("data_extraction_1.log")}
    # @agent.set_proxy('localhost', '8118') if @proxy
    @agent.user_agent_alias = 'Linux Mozilla'
    @agent.open_timeout = 30
  end
  
  def run
    #open page  
    page = get_page(@url)
    print_and_exit('load page error, please check your giving url.') if page.nil?
    #extract search result page
    extract_news_list(page)
  end
  
  private
  # get page
  def get_page(url)
    begin
      return @agent.get(url)
    rescue ExtractException => ex
      puts ex.message
      return nil
    end
  end
  
  def extract_news_list(page)
    doc = Hpricot(page.body)
    results = doc.at("div[@class='right10']")
    index = 0
    list_arr = []
    
    results.search("table[@class='tb1 tbico1 f14px']/tr").each do |res|
      item_hash = {:title => nil, :url => nil, :date => nil, :body => nil}
      title = iconv(res.at("td"))
      item_hash[:title] = title
      puts "title: " + title
      puts "url:   " + item_hash[:url] = res.at("td").at("a").attributes['href'].to_s
      item_hash[:url] = 'http://www.cdhrss.gov.cn' + item_hash[:url]

      date = res.at("th").inner_html.to_s
      puts "date: " + date
      item_hash[:date] = date
      
      d_page = get_page(item_hash[:url])
      item_hash[:body] = extract_news_detail(d_page) unless d_page.nil?
      
      list_arr << item_hash
      index += 1
    end
    
    #r_file = File.new("result_list.html", "w")
    #r_file.write(list_arr.map{|r| "title: " + r[:title] + "\n <br>url: " + r[:url] + "\n <br>body: " + r[:body]}.join("\n<br><hr><br>\n"))
    #r_file.close
    puts "total: " + index.to_s
    return list_arr
  end
  
  #
  def extract_news_detail(page)
    doc = Hpricot(page.body)
    content = doc.at("div[@class='detail']")
    body = content.at("tr[@bgcolor='#FFFFFF']/td[@height='25']").to_s
    body
  end

  def iconv(file_contents)
    ic = Iconv.new('UTF-8', 'UTF-8//IGNORE')
    file_contents = ic.iconv(file_contents.class == 'String' ? file_contents : @ic.iconv(file_contents.inner_html))
  end

end
#  
#  
#  if $0 == __FILE__
#    MechanizeExtractionBase.new.run
#  end