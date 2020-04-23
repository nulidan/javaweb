let zbg = document.getElementById("zbg");
zbg.onclick = function(event) {
	let zgbt = event.target;

	if (zgbt.value == "细节") {
		let arry = zgbt.parentElement.parentElement.children;
		console.log(arry)
		document.getElementById("na").innerHTML = arry[0].innerHTML;
		document.getElementById("con").innerHTML = arry[1].innerHTML;
		document.getElementById("te").innerHTML = arry[2].innerHTML;
		document.getElementById("ji").innerHTML = arry[3].innerHTML;
		let tbg = document.getElementById("tbg");
		tbg.style.display = "block";
	}else if(zgbt.value == "删除"){
	let del = zgbt.parentElement.parentElement;
	del.remove();
}
}
let cancel = document.getElementById("cancel");
cancel.onclick = function() {
	let tbg = document.getElementById("tbg");
	tbg.style.display = "none";
}


let ays = [{
		"_name": "孙悟空/卡卡罗特",
		"_sex": "男",
		"_state": "中国/日本",
		"_ability": "ssr"
	},
	{
		"_name": "夏尔",
		"_sex": "男",
		"_state": "英国",
		"_ability": "ssr"
	},
	{
		"_name": "漩涡鸣人",
		"_sex": "男",
		"_state": "日本",
		"_ability": "ssr"
	},
	{
		"_name": "尼尔律内",
		"_sex":"男",
		"_state": "中国",
		"_ability": "r"
	}
];

function getDel() {
	let zgb = document.getElementById("zbg");
	let tah = document.getElementsByClassName("tab_item");
	for (let i = tah.lenght - 1; i >= 0; i--) {
		tah[i].remove();
		console.log(tah);
	}
	for(let i = 0; i< ays.length; i++){
		let tr = document.createElement("tr");
		tr.className = "tab_item";
		
		let tdo = document.createElement("td");
		tdo.align = "center";
		tdo.innerHTML = ays[i]._name;
		
		let tdt = document.createElement("td");
		tdt.align = "center";
		tdt.innerHTML = ays[i]._sex;
		
		let tdth = document.createElement("td");
		tdth.align = "center";
		tdth.innerHTML = ays[i]._state;
		
		let tdf = document.createElement("td");
		tdf.align = "center";
		tdf.innerHTML = ays[i]._ability;
		
		let tdin = document.createElement("td");
		tdt.align = "center";
		let ipt = document.createElement("input");
		ipt.value = "细节";
		ipt.type = "button";
		
		let ipt1 = document.createElement("input");
		ipt1.value = "删除";
		ipt1.type = "button";
		
		tdin.appendChild(ipt);
		tdin.appendChild(ipt1);
		tr.appendChild(tdo);
		tr.appendChild(tdt);
		tr.appendChild(tdth);
		tr.appendChild(tdf);
		tr.appendChild(tdin);
		zbg.appendChild(tr);
	}
}
getDel();


