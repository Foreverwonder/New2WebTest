/**
 *
 */
/**
 *
 */
function allcheck(checkbox) {

    if (checkbox.checked == true) {
        var oCheck = document.getElementsByName('check');

        for (var i = 0; i < oCheck.length; i++) {
            oCheck[i].checked = true;
        }
    } else {
        var oCheck = document.getElementsByName('check');
        for (var i = 0; i < oCheck.length; i++) {
            oCheck[i].checked = false;
        }
    }
    // alert("及拿来了哈哈哈")
}


function delall() {
    var allC_V = new Array();
    var flag = false;
    var oCheck = document.getElementsByName('check')
    for (var i = 0; i < oCheck.length; i++) {
        if (oCheck[i].checked) {
            allC_V.push(oCheck[i].value)
            flag = true
        }
    }
    if (flag == true) {
        if (confirm("您确定要删除这些记录吗?删除后将不能恢复哦!")) {
            location.href = "deleteC_V?flag=all&x1_x2="+allC_V;
            // alert(allC_V);//c02=v02,c02=v01
        }

    }else {
        confirm("至少要选择一条记录")
    }
}


