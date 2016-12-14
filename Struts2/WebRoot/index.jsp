<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<META content="text/HTMl; charset=utf-8" http-equiv=Content-Type>
<title>上网出错导航</title>
<meta name="description" content="上网出错导航" />
<meta name="keywords" content="出错,导航" />
<link rel="stylesheet" type="text/css" href="/go/css/pc/default/main.css"/>
<script type="text/javascript" src="/go/js/pc/xwui.js"></script>
<script type="text/javascript" src="/go/js/pc/jquery.pack.js"></script>
<script type="text/javascript" src="/go/js/pc/jquery.SuperSlide.js"></script>
</head>
<body>
<div class="error" style="text-align:center;">
	<span>友情提醒：您刚访问的网站暂时无法访问，建议您<a href="http://rd.go.10086.cn/go/awstats.do?g3url=http%3A%2F%2Fwww.baidu.com%2Fs%3Ffrom%3D1000950r%26amp%3Bword%3D%25e7%2583%25ad%25e7%2582%25b9%25e6%2596%25b0%25e9%2597%25bb%26amp%3BotherWord%3D&amp;key=46B98E3A37B05BF7D4AFB38EFC0403A4&amp;logType=19&amp;posIndex=1&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212">百度一下</a>。</span>
</div>
<div class="boxwarp">
	<div class="boxleft">
		<div class="cbox">
				<h3 class="h3tit">移动相关业务办理</h3>
				<ul class="businss">
				  <li  ><span>办理</span>
				        	<a href="http://rd.go.10086.cn/go/awstats.do?logType=87&amp;linkId=102447&amp;categoryId=379883&amp;posIndex=1&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">网上营业厅</font></a>
				        		<a href="http://rd.go.10086.cn/go/awstats.do?logType=87&amp;linkId=102490&amp;categoryId=379883&amp;posIndex=2&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">资费专区</font></a>
				        		<a href="http://rd.go.10086.cn/go/awstats.do?logType=87&amp;linkId=102491&amp;categoryId=379883&amp;posIndex=3&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">积分兑换</font></a>
				        		</li>
				        <li  class="libg"  ><span>娱乐</span>
				        	<a href="http://rd.go.10086.cn/go/awstats.do?logType=88&amp;linkId=105213&amp;categoryId=379885&amp;posIndex=1&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">移动阅读</font></a>
				        		<a href="http://rd.go.10086.cn/go/awstats.do?logType=88&amp;linkId=102448&amp;categoryId=379885&amp;posIndex=2&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">移动游戏</font></a>
				        		<a href="http://rd.go.10086.cn/go/awstats.do?logType=88&amp;linkId=102492&amp;categoryId=379885&amp;posIndex=3&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">无线音乐</font></a>
				        		</li>
				        <li  ><span>生活</span>
				        	<a href="http://rd.go.10086.cn/go/awstats.do?logType=93&amp;linkId=102495&amp;categoryId=379887&amp;posIndex=1&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">MM</font></a>
				        		<a href="http://rd.go.10086.cn/go/awstats.do?logType=93&amp;linkId=102496&amp;categoryId=379887&amp;posIndex=2&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">12580</font></a>
				        		<a href="http://rd.go.10086.cn/go/awstats.do?logType=93&amp;linkId=102449&amp;categoryId=379887&amp;posIndex=3&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">网上商城</font></a>
				        		</li>
				        <li  class="libg"  ><span>沟通</span>
				        	<a href="http://rd.go.10086.cn/go/awstats.do?logType=89&amp;linkId=105214&amp;categoryId=379886&amp;posIndex=1&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">微博</font></a>
				        		<a href="http://rd.go.10086.cn/go/awstats.do?logType=89&amp;linkId=102493&amp;categoryId=379886&amp;posIndex=2&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">飞信</font></a>
				        		<a href="http://rd.go.10086.cn/go/awstats.do?logType=89&amp;linkId=102494&amp;categoryId=379886&amp;posIndex=3&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">139邮箱</font></a>
				        		</li>
				        </ul>
			</div>
		<div class="cbox"> 
			  <h3 class="h3tit">焦点新闻</h3>
			  <ul class="newslist">
			  	<li><a href="http://rd.go.10086.cn/go/awstats.do?logType=73&amp;linkId=28465195&amp;categoryId=362222&amp;posIndex=1&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">江西电厂事故遇难者升至74人 其中68人确认身份</font></a></li>
					<li><a href="http://rd.go.10086.cn/go/awstats.do?logType=73&amp;linkId=28465224&amp;categoryId=362222&amp;posIndex=2&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">云南一小学百余名学生仅一名教师 网民求助获回应</font></a></li>
					<li><a href="http://rd.go.10086.cn/go/awstats.do?logType=73&amp;linkId=28465312&amp;categoryId=362222&amp;posIndex=3&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">“双十一”猛刷抢到包 订单莫名被取消</font></a></li>
					<li><a href="http://rd.go.10086.cn/go/awstats.do?logType=73&amp;linkId=28465210&amp;categoryId=362222&amp;posIndex=4&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">戴姆勒辱华高管被连夜免职 对此事反思却刚刚开始</font></a></li>
					<li><a href="http://rd.go.10086.cn/go/awstats.do?logType=73&amp;linkId=28465285&amp;categoryId=362222&amp;posIndex=5&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">国务院安委办：各地立即开展预防坍塌事故检查</font></a></li>
					<li><a href="http://rd.go.10086.cn/go/awstats.do?logType=73&amp;linkId=28465225&amp;categoryId=362222&amp;posIndex=6&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">北大医院一妇产科医生辞职到阿富汗接生</font></a></li>
					<li><a href="http://rd.go.10086.cn/go/awstats.do?logType=73&amp;linkId=28465334&amp;categoryId=362222&amp;posIndex=7&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">网红直播淫秽视频 被判刑4年罚金10万</font></a></li>
					</ul>
			</div>
		  <div class="cbox">
			  <h3 class="h3tit">实用工具</h3>
				<ul class="newslist2">
				  <li><a href="http://rd.go.10086.cn/go/awstats.do?logType=24&amp;linkId=64567&amp;categoryId=24&amp;posIndex=1&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">天气预报</font></a></li>
					  <li><a href="http://rd.go.10086.cn/go/awstats.do?logType=24&amp;linkId=64566&amp;categoryId=24&amp;posIndex=2&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">股票行情</font></a></li>
					  <li><a href="http://rd.go.10086.cn/go/awstats.do?logType=24&amp;linkId=21165&amp;categoryId=24&amp;posIndex=3&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">酒店预定</font></a></li>
					  <li><a href="http://rd.go.10086.cn/go/awstats.do?logType=24&amp;linkId=64565&amp;categoryId=24&amp;posIndex=4&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">彩票开奖</font></a></li>
					  <li><a href="http://rd.go.10086.cn/go/awstats.do?logType=24&amp;linkId=102521&amp;categoryId=24&amp;posIndex=5&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">快递查询</font></a></li>
					  <li><a href="http://rd.go.10086.cn/go/awstats.do?logType=24&amp;linkId=102497&amp;categoryId=24&amp;posIndex=6&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">机票查询</font></a></li>
					  </ul>
			  </div>
            <div class="cbox adimg">
	      	<a href="http://rd.go.10086.cn/go/awstats.do?logType=82&amp;linkId=102357&amp;categoryId=379845&amp;posIndex=1&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><img src="/go/img/201307/08/20130708101810.jpg" alt="中国好资讯" /></a><br/>
                  </div>
	    </div>
	<div class="boxright">
		<div class="br-w">
		  <div class="ad">
				<div id="slideBox" class="slideBox">
					<div class="hd" >
					  <ul>
					    <li>1</li>
						  </ul>
					</div>
					<div class="bd">
						<ul>
						  <li><a href="http://rd.go.10086.cn/go/awstats.do?logType=83&amp;linkId=102355&amp;categoryId=379846&amp;posIndex=1&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><img src="/go/img/201401/26/20140126144037.jpg" alt="冲浪快讯" /></a></li>
						    </ul>
					</div>
				</div>
				<script type="text/javascript">jQuery(".slideBox").slide( { mainCell:".bd ul",effect:"left",autoPlay:true} );</script>
			</div>
		  <div class="wea">
			<h3 class="h3tit">2016年11月25</h3>
			<p><img src="/go/images/weather/pc/02.png" height="60px" weight="60px"/></p>
			  <p>成都</p>
			  <p>阴/多云</p>
			  <p>4-11℃</p>
			  <p>北</p>
			</div>
		</div>
		<div class="br-site">
		<h3 class="h3tit2">
		  网站推荐<span class="bdspan">
			  <form name="searchForm" action="http://rd.go.10086.cn/go/search.do" method="post">
			    <input type="hidden" name="se" value="http://m.baidu.com/s?from=1000950r&amp;bd_page_type=1"/>
			    <input type="text" class="baidutxt" id="bt" name="keyword" style="background:url(/go/img/201302/21/20130221174444.jpg) #fff no-repeat left center;"/>
				<input type="hidden" name="wapX" value="0"/>
				<input type="hidden" name="logId" value="5ffde555dc954d75a6f44d6cf758b212"/>
				<input type="hidden" name="betaFlag" value="0"/>
				<input type="hidden" name="gwType" value="0" />
				<input class="bdtn" type="submit" value="" >
              </form>
			  <script>
			    iVal("bt","请输入你要搜索的站点");
			  </script>
			</span> 
			</h3>
		<ul class="siteall">
			  <li  ><span>热站</span><a href="http://rd.go.10086.cn/go/awstats.do?logType=78&amp;linkId=71203&amp;categoryId=362229&amp;posIndex=1&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">新浪</font></a><a href="http://rd.go.10086.cn/go/awstats.do?logType=78&amp;linkId=71208&amp;categoryId=362229&amp;posIndex=2&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">搜狐</font></a><a href="http://rd.go.10086.cn/go/awstats.do?logType=78&amp;linkId=71205&amp;categoryId=362229&amp;posIndex=3&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">凤凰网</font></a><a href="http://rd.go.10086.cn/go/awstats.do?logType=78&amp;linkId=26624729&amp;categoryId=362229&amp;posIndex=4&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">百度</font></a><a href="http://rd.go.10086.cn/go/awstats.do?logType=78&amp;linkId=71204&amp;categoryId=362229&amp;posIndex=5&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">网易</font></a><a href="http://rd.go.10086.cn/go/awstats.do?logType=78&amp;linkId=71207&amp;categoryId=362229&amp;posIndex=6&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">12306</font></a><a href="http://rd.go.10086.cn/go/awstats.do?logType=78&amp;linkId=71206&amp;categoryId=362229&amp;posIndex=7&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">腾讯</font></a><a href="http://rd.go.10086.cn/go/awstats.do?logType=78&amp;linkId=71280&amp;categoryId=362229&amp;posIndex=8&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">智联招聘</font></a><a href="http://rd.go.10086.cn/go/awstats.do?logType=78&amp;linkId=71279&amp;categoryId=362229&amp;posIndex=9&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">携程网</font></a></li>
				    <li  class="libg"  ><span>新闻</span><a href="http://rd.go.10086.cn/go/awstats.do?logType=76&amp;linkId=71178&amp;categoryId=362227&amp;posIndex=1&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">百度新闻</font></a><a href="http://rd.go.10086.cn/go/awstats.do?logType=76&amp;linkId=71277&amp;categoryId=362227&amp;posIndex=2&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">中华网</font></a><a href="http://rd.go.10086.cn/go/awstats.do?logType=76&amp;linkId=71276&amp;categoryId=362227&amp;posIndex=3&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">网易新闻</font></a><a href="http://rd.go.10086.cn/go/awstats.do?logType=76&amp;linkId=71275&amp;categoryId=362227&amp;posIndex=4&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">人民网</font></a><a href="http://rd.go.10086.cn/go/awstats.do?logType=76&amp;linkId=71274&amp;categoryId=362227&amp;posIndex=5&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">环球网</font></a><a href="http://rd.go.10086.cn/go/awstats.do?logType=76&amp;linkId=71195&amp;categoryId=362227&amp;posIndex=6&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">腾讯新闻</font></a><a href="http://rd.go.10086.cn/go/awstats.do?logType=76&amp;linkId=71194&amp;categoryId=362227&amp;posIndex=7&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">新华网</font></a><a href="http://rd.go.10086.cn/go/awstats.do?logType=76&amp;linkId=71177&amp;categoryId=362227&amp;posIndex=8&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">搜狐新闻</font></a></li>
				    <li  ><span>视频</span><a href="http://rd.go.10086.cn/go/awstats.do?logType=77&amp;linkId=71200&amp;categoryId=362228&amp;posIndex=1&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">优酷网</font></a><a href="http://rd.go.10086.cn/go/awstats.do?logType=77&amp;linkId=71272&amp;categoryId=362228&amp;posIndex=2&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">酷6</font></a><a href="http://rd.go.10086.cn/go/awstats.do?logType=77&amp;linkId=71271&amp;categoryId=362228&amp;posIndex=3&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">激动网</font></a><a href="http://rd.go.10086.cn/go/awstats.do?logType=77&amp;linkId=71270&amp;categoryId=362228&amp;posIndex=4&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">乐视网</font></a><a href="http://rd.go.10086.cn/go/awstats.do?logType=77&amp;linkId=71202&amp;categoryId=362228&amp;posIndex=5&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">56网</font></a><a href="http://rd.go.10086.cn/go/awstats.do?logType=77&amp;linkId=71201&amp;categoryId=362228&amp;posIndex=6&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">搜狐视频</font></a><a href="http://rd.go.10086.cn/go/awstats.do?logType=77&amp;linkId=71199&amp;categoryId=362228&amp;posIndex=7&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">土豆网</font></a><a href="http://rd.go.10086.cn/go/awstats.do?logType=77&amp;linkId=71198&amp;categoryId=362228&amp;posIndex=8&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="#FF0000">奇艺高清</font></a><a href="http://rd.go.10086.cn/go/awstats.do?logType=77&amp;linkId=71197&amp;categoryId=362228&amp;posIndex=9&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">CNTV</font></a></li>
				    <li  class="libg"  ><span>体育</span><a href="http://rd.go.10086.cn/go/awstats.do?logType=79&amp;linkId=71233&amp;categoryId=362230&amp;posIndex=1&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">新浪体育</font></a><a href="http://rd.go.10086.cn/go/awstats.do?logType=79&amp;linkId=71307&amp;categoryId=362230&amp;posIndex=2&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">凤凰体育</font></a><a href="http://rd.go.10086.cn/go/awstats.do?logType=79&amp;linkId=26329041&amp;categoryId=362230&amp;posIndex=3&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">腾讯体育</font></a><a href="http://rd.go.10086.cn/go/awstats.do?logType=79&amp;linkId=71212&amp;categoryId=362230&amp;posIndex=4&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">网易体育</font></a><a href="http://rd.go.10086.cn/go/awstats.do?logType=79&amp;linkId=71234&amp;categoryId=362230&amp;posIndex=5&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="#FF0000">搜狐体育</font></a><a href="http://rd.go.10086.cn/go/awstats.do?logType=79&amp;linkId=71235&amp;categoryId=362230&amp;posIndex=6&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">直播吧</font></a><a href="http://rd.go.10086.cn/go/awstats.do?logType=79&amp;linkId=71232&amp;categoryId=362230&amp;posIndex=7&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">虎扑体育</font></a><a href="http://rd.go.10086.cn/go/awstats.do?logType=79&amp;linkId=71231&amp;categoryId=362230&amp;posIndex=8&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">CCTV5</font></a></li>
				    <li  ><span>购物</span><a href="http://rd.go.10086.cn/go/awstats.do?logType=80&amp;linkId=71335&amp;categoryId=362231&amp;posIndex=1&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="#FF0000">12306订票</font></a><a href="http://rd.go.10086.cn/go/awstats.do?logType=80&amp;linkId=71259&amp;categoryId=362231&amp;posIndex=2&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">淘宝网</font></a><a href="http://rd.go.10086.cn/go/awstats.do?logType=80&amp;linkId=71336&amp;categoryId=362231&amp;posIndex=3&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">易迅网</font></a><a href="http://rd.go.10086.cn/go/awstats.do?logType=80&amp;linkId=71334&amp;categoryId=362231&amp;posIndex=4&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">美团团购</font></a><a href="http://rd.go.10086.cn/go/awstats.do?logType=80&amp;linkId=71333&amp;categoryId=362231&amp;posIndex=5&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">乐蜂网</font></a><a href="http://rd.go.10086.cn/go/awstats.do?logType=80&amp;linkId=71257&amp;categoryId=362231&amp;posIndex=6&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">当当网</font></a><a href="http://rd.go.10086.cn/go/awstats.do?logType=80&amp;linkId=71258&amp;categoryId=362231&amp;posIndex=7&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">凡客诚品</font></a><a href="http://rd.go.10086.cn/go/awstats.do?logType=80&amp;linkId=71256&amp;categoryId=362231&amp;posIndex=8&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">亚马逊</font></a></li>
				    <li  class="libg"  ><span>社区</span><a href="http://rd.go.10086.cn/go/awstats.do?logType=91&amp;linkId=24731286&amp;categoryId=379888&amp;posIndex=1&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">新浪微博</font></a><a href="http://rd.go.10086.cn/go/awstats.do?logType=91&amp;linkId=24731287&amp;categoryId=379888&amp;posIndex=2&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">腾讯微博</font></a><a href="http://rd.go.10086.cn/go/awstats.do?logType=91&amp;linkId=24731288&amp;categoryId=379888&amp;posIndex=3&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">豆瓣</font></a><a href="http://rd.go.10086.cn/go/awstats.do?logType=91&amp;linkId=24731289&amp;categoryId=379888&amp;posIndex=4&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">天涯</font></a><a href="http://rd.go.10086.cn/go/awstats.do?logType=91&amp;linkId=24731290&amp;categoryId=379888&amp;posIndex=5&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">人人网</font></a><a href="http://rd.go.10086.cn/go/awstats.do?logType=91&amp;linkId=24731291&amp;categoryId=379888&amp;posIndex=6&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">开心网</font></a><a href="http://rd.go.10086.cn/go/awstats.do?logType=91&amp;linkId=24731312&amp;categoryId=379888&amp;posIndex=7&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">58同城</font></a><a href="http://rd.go.10086.cn/go/awstats.do?logType=91&amp;linkId=24731313&amp;categoryId=379888&amp;posIndex=8&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">赶集网</font></a></li>
				    <li  ><span>美图</span><a href="http://rd.go.10086.cn/go/awstats.do?logType=92&amp;linkId=102489&amp;categoryId=379889&amp;posIndex=1&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">美空</font></a><a href="http://rd.go.10086.cn/go/awstats.do?logType=92&amp;linkId=102488&amp;categoryId=379889&amp;posIndex=2&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">POCO</font></a><a href="http://rd.go.10086.cn/go/awstats.do?logType=92&amp;linkId=24737147&amp;categoryId=379889&amp;posIndex=3&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">明星图库</font></a><a href="http://rd.go.10086.cn/go/awstats.do?logType=92&amp;linkId=102486&amp;categoryId=379889&amp;posIndex=4&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">美丽说</font></a><a href="http://rd.go.10086.cn/go/awstats.do?logType=92&amp;linkId=102485&amp;categoryId=379889&amp;posIndex=5&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">蘑菇街</font></a><a href="http://rd.go.10086.cn/go/awstats.do?logType=92&amp;linkId=102484&amp;categoryId=379889&amp;posIndex=6&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><font color="">COS美女</font></a></li>
				    </ul>	
		  <h4 class="h4tit">常用软件下载</h4>
			<ul class="softlist">
			  <li>
                        <a href="http://rd.go.10086.cn/go/awstats.do?logType=75&amp;linkId=28329243&amp;categoryId=362224&amp;posIndex=1&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><img src="/go/img/201610/31/20161031162647.png" alt="冲浪导航" /></a>
                        <h5><span><font color="">冲浪导航</font></span><a href="http://rd.go.10086.cn/go/awstats.do?logType=75&amp;linkId=28329243&amp;categoryId=362224&amp;posIndex=1&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212">下载</a></h5>
				      </li>
                    <li>
                        <a href="http://rd.go.10086.cn/go/awstats.do?logType=75&amp;linkId=28329014&amp;categoryId=362224&amp;posIndex=2&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><img src="/go/img/201610/31/20161031170253.png" alt="百度助手" /></a>
                        <h5><span><font color="">百度助手</font></span><a href="http://rd.go.10086.cn/go/awstats.do?logType=75&amp;linkId=28329014&amp;categoryId=362224&amp;posIndex=2&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212">下载</a></h5>
				      </li>
                    <li>
                        <a href="http://rd.go.10086.cn/go/awstats.do?logType=75&amp;linkId=26635711&amp;categoryId=362224&amp;posIndex=3&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><img src="/go/img/201302/21/20130221201708.png" alt="手机游戏" /></a>
                        <h5><span><font color="">手机游戏</font></span><a href="http://rd.go.10086.cn/go/awstats.do?logType=75&amp;linkId=26635711&amp;categoryId=362224&amp;posIndex=3&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212">下载</a></h5>
				      </li>
                    <li>
                        <a href="http://rd.go.10086.cn/go/awstats.do?logType=75&amp;linkId=71267&amp;categoryId=362224&amp;posIndex=4&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><img src="/go/img/201303/21/20130321181711.png" alt="飞信" /></a>
                        <h5><span><font color="">飞信</font></span><a href="http://rd.go.10086.cn/go/awstats.do?logType=75&amp;linkId=71267&amp;categoryId=362224&amp;posIndex=4&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212">下载</a></h5>
				      </li>
                    <li>
                        <a href="http://rd.go.10086.cn/go/awstats.do?logType=75&amp;linkId=28329244&amp;categoryId=362224&amp;posIndex=5&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><img src="/go/img/201610/31/20161031170509.png" alt="掌阅" /></a>
                        <h5><span><font color="">掌阅</font></span><a href="http://rd.go.10086.cn/go/awstats.do?logType=75&amp;linkId=28329244&amp;categoryId=362224&amp;posIndex=5&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212">下载</a></h5>
				      </li>
                    <li>
                        <a href="http://rd.go.10086.cn/go/awstats.do?logType=75&amp;linkId=25598834&amp;categoryId=362224&amp;posIndex=6&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><img src="/go/img/201302/21/20130221201556.png" alt="360手机卫士" /></a>
                        <h5><span><font color="">360手机卫士</font></span><a href="http://rd.go.10086.cn/go/awstats.do?logType=75&amp;linkId=25598834&amp;categoryId=362224&amp;posIndex=6&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212">下载</a></h5>
				      </li>
                    <li>
                        <a href="http://rd.go.10086.cn/go/awstats.do?logType=75&amp;linkId=71264&amp;categoryId=362224&amp;posIndex=7&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><img src="/go/img/201302/21/20130221202437.jpg" alt="腾讯手机管家" /></a>
                        <h5><span><font color="">腾讯手机管家</font></span><a href="http://rd.go.10086.cn/go/awstats.do?logType=75&amp;linkId=71264&amp;categoryId=362224&amp;posIndex=7&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212">下载</a></h5>
				      </li>
                    <li>
                        <a href="http://rd.go.10086.cn/go/awstats.do?logType=75&amp;linkId=71265&amp;categoryId=362224&amp;posIndex=8&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><img src="/go/img/201309/13/20130913104527.png" alt="苏宁易购" /></a>
                        <h5><span><font color="">苏宁易购</font></span><a href="http://rd.go.10086.cn/go/awstats.do?logType=75&amp;linkId=71265&amp;categoryId=362224&amp;posIndex=8&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212">下载</a></h5>
				      </li>
                    </ul>
		</div>
	</div>
</div>
<div class="friendlink">
  <h3 class="h3tit">友情链接</h3>
	<p>
	  <a href="http://rd.go.10086.cn/go/awstats.do?logType=86&amp;linkId=102941&amp;categoryId=379848&amp;posIndex=1&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><img src="/go/img/201302/22/20130222143831.jpg" alt="手机支付" /></a>   
           <a href="http://rd.go.10086.cn/go/awstats.do?logType=86&amp;linkId=102939&amp;categoryId=379848&amp;posIndex=2&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><img src="/go/img/201302/22/20130222143655.jpg" alt="MM" /></a>   
           <a href="http://rd.go.10086.cn/go/awstats.do?logType=86&amp;linkId=102938&amp;categoryId=379848&amp;posIndex=3&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><img src="/go/img/201302/22/20130222143208.jpg" alt="139邮箱" /></a>   
           <a href="http://rd.go.10086.cn/go/awstats.do?logType=86&amp;linkId=102937&amp;categoryId=379848&amp;posIndex=4&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><img src="/go/img/201302/22/20130222143135.jpg" alt="移动微博" /></a>   
           <a href="http://rd.go.10086.cn/go/awstats.do?logType=86&amp;linkId=102444&amp;categoryId=379848&amp;posIndex=5&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><img src="/go/img/201302/21/20130221184052.jpg" alt="飞信" /></a>   
           <a href="http://rd.go.10086.cn/go/awstats.do?logType=86&amp;linkId=102446&amp;categoryId=379848&amp;posIndex=6&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><img src="/go/img/201302/21/20130221184037.jpg" alt="移动游戏" /></a>   
           <a href="http://rd.go.10086.cn/go/awstats.do?logType=86&amp;linkId=102445&amp;categoryId=379848&amp;posIndex=7&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212"><img src="/go/img/201302/21/20130221184106.jpg" alt="无线音乐" /></a>   
           </p>
  </div>
<div class="footer">
<!-- 上网出错导航服务由中国移动 --><a href="http://rd.go.10086.cn/go/awstats.do?g3url=http%3A%2F%2Fgo.10086.cn&amp;key=23CF06AB081AAB2EBD11FE1D80AE82F0&amp;logType=14&amp;posIndex=1&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212">手机冲浪</a>提供&nbsp;|&nbsp;<a href="http://rd.go.10086.cn/go/awstats.do?g3url=http%3A%2F%2Frd.go.10086.cn%2Fpc%2Fclose.jsp%3Fx-error-code%3D730%26x-original-url%3Dhttp%253A%252F%252Fcd-ctfs.ftn.qq.com%252Fftn_handler%252Fde4574ce78d9561e20b294b86d23a758c5b86e0430ffbfa4cc4f380d0053916d7f58f06cb1a13fa142a521f2037ec07b2e7a48a0a5969468caf059e7815d5279&amp;key=EEDAD84012CF7564799B8DDBF5D83323&amp;logType=13&amp;posIndex=1&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212">取消服务</a>&nbsp;|&nbsp;<a href="http://rd.go.10086.cn/go/awstats.do?g3url=http%3A%2F%2Frd.go.10086.cn%2Fpc%2Ffeedback.jsp%3Fx-error-code%3D730%26x-original-url%3Dhttp%253A%252F%252Fcd-ctfs.ftn.qq.com%252Fftn_handler%252Fde4574ce78d9561e20b294b86d23a758c5b86e0430ffbfa4cc4f380d0053916d7f58f06cb1a13fa142a521f2037ec07b2e7a48a0a5969468caf059e7815d5279&amp;key=66367F9A4B6AB6472C8F61987E33F646&amp;logType=12&amp;posIndex=1&amp;wapX=0&amp;betaFlag=0&amp;gwType=0&amp;logId=5ffde555dc954d75a6f44d6cf758b212">意见反馈</a>&nbsp;|&nbsp;京ICP备05002571
</div>
<img alt="" src="http://rd.go.10086.cn/awstat/730/0/5ffde555dc954d75a6f44d6cf758b212/show.jpg" />
</body>
</html>
