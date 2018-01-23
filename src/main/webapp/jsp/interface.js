	$.ajax({
					type : "GET",
					url : "weather/res",
					async : true,
					//contentType:"application/json",
					//data : data,
					success : function(msg) {
						//console.info(msg);
						var json = JSON.parse(msg);
						//$("#myp").text(msg);
						var type = json.data.forecast[0].type;//获取天气状况
						var date = new Date();
						var hh = date.getHours();
						if (hh < 10) {
							hh = "0" + hh;
						}
						var currenttime = hh + ':' + date.getMinutes();//获取当前时间
						var sunset = json.data.forecast[0].sunset;//获取当天的日落时间
						var sunrise = json.data.forecast[0].sunrise;//获取日出时间
						var notice = json.data.forecast[0].ganmao;
						if (currenttime<sunset&&currenttime>sunrise) {//判断是否是白天
							if (type == "晴") {
								$("#weatherpic").attr("src",
										"static/images/sunny.PNG");
							}
							if (type == "雨") {
								$("#weatherpic").attr("src",
										"static/images/raining.PNG");
							}
							if (type == "阴") {
								$("#weatherpic").attr("src",
										"static/images/gloomy.PNG");
							}
							if (type == "多云") {
								$("#weatherpic").attr("src",
										"static/images/cloudy.PNG");
							}
						} else {
							//console.info("是夜间");
							if (type == "晴") {
								$("#weatherpic").attr("src",
										"static/images/sunnynight.PNG");
							}
							if (type == "雨") {
								$("#weatherpic").attr("src",
										"static/images/rainingnight.PNG");
							}
							if (type == "阴") {
								$("#weatherpic").attr("src",
										"static/images/gloomynight.PNG");
							}
							if (type == "多云") {
								$("#weatherpic").attr("src",
										"static/images/cloudynight.PNG");
							}
						}
						var high = json.data.forecast[0].high;
						var low = json.data.forecast[0].low;
						var pm25 = json.data.pm25;
						var humidity = json.data.shidu;
						var quality = json.data.quality;
						var weather = json.data.forecast[0].type;
						$("#low").text(low);
						$("#high").text(high);
						$("#pm25").text(pm25);
						$("#humidity").text(humidity);
						$("#quality").text(quality);
						$("#weather").text(weather);
						//$("#note").text(note);
						//$("notice").text(notice);
					}
				});
	
		/* */
		/* jQuery 定时局部刷新(setInterval)
		 */
		$(document).ready(function() {
			setInterval("startRequest()", 1000);
			setInterval("setWeather()", 1000000);//半个小时刷新一次天气信息
		});

		//发送ajax请求，获取天气信息
		function setWeather() {

			$.ajax({
				type : "GET",
				url : "/autoloan/weather/res",
				async : true,
				//contentType:"application/json",
				//data : data,
				success : function(msg) {
					var json = JSON.parse(msg);
					//$("#myp").text(msg);
					var type = json.data.forecast[0].type;//获取天气状况
					var currenttime = (new Date().toLocaleString()).toString();//获取当前时间
					var sunset = json.data.forecast[0].sunset;//获取当天的日落时间
					var sunrise = json.data.forecast[0].sunrise;//获取日出时间

					//console.info(currenttime);
					//console.info(sunset);
					if (currenttime > sunrise || currenttime < sunset) {//判断是否是白天
						if (type == "晴") {
							$("#weatherpic").attr("src",
									"static/images/sunny.PNG");
						}
						if (type == "雨") {
							$("#weatherpic").attr("src",
									"static/images/raining.PNG");
						}
						if (type == "阴") {
							$("#weatherpic").attr("src",
									"static/images/gloomy.PNG");
						}
						if (type == "多云") {
							$("#weatherpic").attr("src",
									"static/images/cloudy.PNG");
						}
					} else {
						if (type == "晴") {
							$("#weatherpic").attr("src",
									"static/images/sunnynight.PNG");
						}
						if (type == "雨") {
							$("#weatherpic").attr("src",
									"static/images/rainingnight.PNG");
						}
						if (type == "阴") {
							$("#weatherpic").attr("src",
									"static/images/gloomynight.PNG");
						}
						if (type == "多云") {
							$("#weatherpic").attr("src",
									"static/images/cloudynight.PNG");
						}
					}
					var notice = json.data.forecast[0].ganmao;
					var high = json.data.forecast[0].high;
					var low = json.data.forecast[0].low;
					var pm25 = json.data.pm25;
					var humidity = json.data.shidu;
					var quality = json.data.quality;
					var weather = json.data.forecast[0].type;
					$("#low").text(low);
					$("#high").text(high);
					$("#pm25").text(pm25);
					$("#humidity").text(humidity);
					$("#quality").text(quality);
					$("#weather").text(weather);
					$("#notice").text(notice);
				}
			});
		}
		
		Date.prototype.Format  = function (fmt) {
		    var o = {
		        "M+": this.getMonth() + 1, // 月份
		        "d+": this.getDate(), // 日
		        "h+": this.getHours(), // 小时
		        "m+": this.getMinutes(), // 分
		        "s+": this.getSeconds(), // 秒
		        "q+": Math.floor((this.getMonth() + 3) / 3), 
		        "S": this.getMilliseconds() // 毫秒
		    };
		    if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
		    for (var k in o)
		    if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
		    return fmt;
		}
		
		
		function startRequest() {
			/*获取日期与时间 */
			$("#date").text((new Date().toLocaleString()).toString());
		}

		function loan() {
			$("#viewDiv").panel({
				iconCls : "icon-add",
				collapsible : true,
				minimizable : true,
				maximizable : true,
				closable : true,
				href : "jsp/TrustManagement/loan/loanMoney.jsp"
			});
		}

		function TheLetter() {
			$("#viewDiv").panel({
				iconCls : "icon-add",
				collapsible : true,
				minimizable : true,
				maximizable : true,
				closable : true,
				href : "jsp/TrustManagement/TheLetter/TheLetter.jsp"
			});
		}
		function CustomerInformation() {
			$("#viewDiv")
					.panel(
							{
								iconCls : "icon-add",
								collapsible : true,
								minimizable : true,
								maximizable : true,
								closable : true,
								href : "jsp/customService/informationEntry/vehicleLoanManagement.jsp"
							});
		}
		function sign() {
			$("#viewDiv").panel({
				iconCls : "icon-add",
				collapsible : true,
				minimizable : true,
				maximizable : true,
				closable : true,
				href : "jsp/CarLoan/signList/sign.jsp"
			});
		}
		function chuchaxun() {
			$("#viewDiv").panel({
				iconCls : "icon-add",
				collapsible : true,
				minimizable : true,
				maximizable : true,
				closable : true,
				href : "jsp/CarLoan/branchOffice/chuchaxun.jsp"
			});
		}
		function submenu() {
			$("#viewDiv").panel({
				iconCls : "icon-add",
				collapsible : true,
				minimizable : true,
				maximizable : true,
				closable : true,
				href : "jsp/CarLoan/submenu/submenu.jsp"
			});
		}

		function ranback() {
			window.location.href = "static/html/login.html";
		}

		function progress(url) {
			$("#viewDiv").panel({
				iconCls : "icon-add",
				collapsible : true,
				minimizable : true,
				maximizable : true,
				closable : true,
				href : "jsp/customService/progressQuery/progress.jsp"
			});
		}

		function IDinfoReadnig(url) {
			$("#viewDiv").panel({
				iconCls : "icon-add",
				collapsible : true,
				minimizable : true,
				maximizable : true,
				closable : true,
				href :url
			});
		}

		function contractReview() {
			$("#viewDiv").panel({
				iconCls : "icon-add",
				collapsible : true,
				minimizable : true,
				maximizable : true,
				closable : true,
				href : "jsp/TrustManagement/contractReview/contractReview.jsp"
			});
		}

		function loanInput() {
			$("#viewDiv").panel({
				iconCls : "icon-add",
				collapsible : true,
				minimizable : true,
				maximizable : true,
				closable : true,
				href : "jsp/CarLoan/loanInput/loanInput.jsp"
			});
		}
