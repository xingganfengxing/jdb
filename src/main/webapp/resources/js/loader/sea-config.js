seajs.config({
    base: getRootPath() + "/js/",
    alias: {
        'jquery': 'lib/jquery/1.11.3/jquery.min.js',
        'jquery/jquery-validate': "lib/jquery/1.11.3/jquery.validate.min.js"
    }
});

function getRootPath() {
    var curWwwPath = window.document.location.href;
    var pathName = window.document.location.pathname;
    var pos = curWwwPath.indexOf(pathName);
    var localhostPaht = curWwwPath.substring(0, pos);
    var projectName = pathName.substring(0, pathName.substr(1).indexOf('/') + 1);
    return (localhostPaht + projectName);
}