function $(id){
	return typeof id==='string'?document.getElementById(id):id;
}
window.onload = function() {
	// 标签的索引
	var timer = null;
	var lis = $("register-tag").getElementsByTagName("li"),
		divs = $("register-content").getElementsByClassName("mod");	
		
	if(lis.length != divs.length) return;
	// 遍历所有的页签
	for(var i = 0; i < lis.length; i++) {
		lis[i].id = i;
		lis[i].onclick = function() { 
			// 用that这个变量来引用当前点击的li
			var that = this;
			// 如果存在准备执行的定时器，立刻清除，只有当前停留时间大于0ms时才开始执行
			if(timer) {
				clearTimeout(timer);
				timer = null;
			}
			// 延迟0ms执行
			timer = window.setTimeout(function() {
				for(var j = 0; j < lis.length; j++) {
					lis[j].className = '';
					divs[j].style.display = "none";
				}
				lis[that.id].className ="select";
				divs[that.id].style.display = "block";
			}, 0);
		}
	}
}

