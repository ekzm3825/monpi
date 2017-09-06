/**
 * Created by DK on 2017. 5. 11..
 */
$(function() {
    //bindLoginSubmit();
});
/*
function bindLoginSubmit() {
    $("#form_login").submit(function(e) {
        e.preventDefault();
        var form = this;
        var options = {
            method : form.method
            , data : $(form).serialize()
        };

        $.ajax(form.action, options)
            .success(function(data, textStatus, jqXHR) {
                location.href = data.returnUrl;
            })
    });
}


function fnLogo() {
    location.href = ic.static.contextPath + '/test/list.do/';
}

function fnCorpusDelete(id) {
    if (!confirm('질의응답을 삭제하시겠습니까?'))
        return false;

    location.href = ic.static.contextPath + '/corpus/qna/register/delete.do?id=' + id;
}
*/


/*

function fnStatus() {
    ic.popup.open(ic.static.contextPath + '/deeplearning/relation/status.do');
}

function fnLearn() {
    var groupName = $("#sel_groupName option:selected").text();
    $.ajax({
        type: "POST",
        url: ic.static.contextPath + '/deeplearning/relation/start-learn.do?_format=json',
        data: {"groupName": groupName},
        success: function (data) {
            alert(data);
        }
    });
}*/
