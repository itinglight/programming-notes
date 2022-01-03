Python



Python 包管理器：pip3



爬虫

```python
from bs4 import BeautifulSoup
import re
import urllib.request,urllib.error,urllib.parse
from urllib.parse import quote
import string
import xlwt
# import _sqlite3
import random

# confinden
# url = "Https://news.sogou.com"
url = "https://www.sogou.com/sogou?query="
# url = "https://www.baidu.com/s?wd="

#定义要搜索的关键词
keys=["阿里巴巴","京东","万科集团","腾讯","小米","新东方","比特币"]

#匹配标题
find_title = re.compile(r'<a.*?>(.*?)<em>(.*?)<!--red_beg-->(.*?)<!--red_end-->(.*?)</em>(.*?)</a >') 
#匹配链接
# find_link = re.compile(r'*') 
#匹配时间
# find_time 
#匹配来源
# find_source


# 伪装
my_headers = [
	"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36"
   	# "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1 Safari/605.1.15"


   	  # 'Opera/9.25 (Windows NT 5.1; U; en)',

]


	#返回网页link的源代码
def getData(link):
		#伪装请求 
	response = urllib.request.Request(link) # 创建请求对象
	response.add_header('User-Agent', random.choice(my_headers)) # 伪装请求头

	data = urllib.request.urlopen(response) #打开


	#直接请求
	# get_response = urllib.request.urlopen("https://www.baidu.com")

	return data


	#将str字符数组合并为一个字符串，并返回
def mergeString(str):
	strs = ""
	# for i in range(0,len(str)):
	# 	strs=f"{strs}{str[i]}"
	
	return strs.join(str)




	# 对每个关键词进行爬取
for key in keys:
	# link = f"{url}{key}"
	# link = str(url+key)
	
		#爬10页
	for i in range(0,10):
		page=i+1
		page=str(page)
		link = quote(url+key+"&interation=1728053249&page="+page,safe=string.printable)
		print(link)

		html = getData(link)

		htmls = html.read().decode("utf-8")
		soup =BeautifulSoup(htmls,"html.parser")


		#计算页面中class="news200616"的个数
		
		length =len(soup.find_all(class_="news200616"))
		if length ==0:
			print("爬取的网页没有所需元素！！！")
			exit()
		for i in range(0,length):
		

			html_data = soup.find_all(class_="news200616")[i]
			html_data = str(html_data) #将网页数据强制转换为字符串

			strs =re.findall(find_title,html_data)
			try:
				print(mergeString(strs[0]),end="\n\n")
			except IndexError:
				print("IndexError")
```

