$.ajaxSetup({
    dataType: 'json'
});

$(document).ajaxError(function (event, jqXHR, ajaxSettings, thrownError) {
    if (jqXHR.statusText == 'abort') {
        console.log('[AJAX] 요청취소');
        return;
    }

    var data;

    try {
        data = JSON.parse(jqXHR.responseText);
    } catch (e) {
        console.log('[AJAX] 결과를 json으로 변환하는데 실패하였습니다.');
    }

    alert(data == null ? "오류가 발생했습니다. 다시 시도하세요." : data.message);
});