var ic = {};

(function (ic) {

    ic.static = {
        contextPath: ''
    };

    ic.popup = {

        open: function (url, name, width, height) {
            return qusi.popup.open({
                url: url
                , name: name
                , width: width
                , height: height
                , left: 0
                , top: 0
            });
        }

    };

    return ic;
})(ic || window.ic || (ic = {}));