function $(id){
	return typeof id==='string'?document.getElementById(id):id;
}

//‘开始测验’页面跳转
function turnToTest() {
	document.getElementById('first-level').style.display = 'none';
	document.getElementById('second-level').style.display = 'block';
}

//勾选复选框改变‘开始测试’按钮的类名
function startToTest() {
	var startBtn = document.getElementById("startToTest");
	if(document.getElementById("start-checkbox").checked == true) {
		startBtn.className = 'startTest-Btn';
		startBtn.disabled = false; 
		//alert("已选中复选框");        
		return true;
	} else {
		startBtn.className = 'undo-Btn';
		startBtn.disabled = true; 
		//alert("未选中复选框");        
		return false;
	}
}

//返回上一级页面
function returnPreLevel( previousID,currentID ){
	var preID = document.getElementById(previousID);
	var curID = document.getElementById(currentID);
	preID.style.display = 'block';
	curID.style.display = 'none';
}

//跳转观看视频
function turnToVideo() {
	alert(1);
	console.log(1);
	document.getElementById('course-first-level').style.display = 'none';
	document.getElementById('course-second-level').style.display = 'block';
}

//跳转去考试提示页面
function turnToExam() {
	document.getElementById('exam-first-level').style.display = 'none';
	document.getElementById('exam-second-level').style.display = 'block';
}

//开始考试
function startToExam() {
	var startBtn = document.getElementById("startToExam");
	if(document.getElementById("start-exam-checkbox").checked == true) {
		startBtn.className = 'startTest-Btn';
		startBtn.disabled = false; 
		//alert("已选中复选框");        
		return true;
	} else {
		startBtn.className = 'undo-Btn';
		startBtn.disabled = true; 
		//alert("未选中复选框");        
		return false;
	}
}

function  expanMenu() {
	var myMenu;
	myMenu = new SDMenu("my_menu");
	myMenu.init();
	var firstSubmenu = myMenu.submenus[0];
	myMenu.expandMenu(firstSubmenu);
}

window.onload = function() {
	// 标签的索引
	var timer = null;

	var lis = $('left2').getElementsByTagName('li'),
		divs = $('study-right').getElementsByClassName('mod');

	expanMenu();
	//var checkbox = document.getElementById('start-checkbox');//
	//alert(checkbox.checked);//是否被选中
	//if(checkbox.checked){
	//  //选中了
	//  document.getElementById('startToTest').className = 'startTest-Btn';
	//}else{
	//   //没选中
	//  document.getElementById('startToTest').className = 'undo-Btn';
	//}

	if(lis.length != divs.length) return;

	// 遍历所有的页签
	for(var i = 0; i < lis.length; i++) {
		lis[i].id = i;
		lis[i].onclick = function() { //若为onmouseover就是自动切换
			// 用that这个变量来引用当前滑过的li
			var that = this;
			// 如果存在准备执行的定时器，立刻清除，只有当前停留时间大于500ms时才开始执行
			if(timer) {
				clearTimeout(timer);
				timer = null;
			}
			// 延迟半秒执行
			timer = window.setTimeout(function() {
				for(var j = 0; j < lis.length; j++) {
					lis[j].className = '';
					divs[j].style.display = 'none';
				}
				lis[that.id].className = 'select';
				divs[that.id].style.display = 'block';
			}, 0);
		}
	}
}