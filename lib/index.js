// Generated by CoffeeScript 1.12.4
(function() {
  var makeStyleList, randomStyle, setStyle;

  $.getJSON('css/style.json', function(result) {
    makeStyleList(result.styles);
    return setStyle(randomStyle(result.styles));
  });

  randomStyle = function(styles) {
    var currentStyle;
    currentStyle = styles[Math.floor(Math.random() * styles.length)].file;
    return currentStyle;
  };

  setStyle = function(style) {
    $('head').append('<link id="page-style" rel="stylesheet/css" href="css/lib/' + style + '.css"/>');
    less.sheets.push($('#page-style')[0]);
    return less.refresh();
  };

  makeStyleList = function(styleList) {
    var i, j, len, results;
    results = [];
    for (j = 0, len = styleList.length; j < len; j++) {
      i = styleList[j];
      console.log(i);
      results.push($('#style-chooser').append('<option value="' + i.file + '" >' + i.name + '</option>'));
    }
    return results;
  };

  $('#style-chooser').change = function() {
    return setStyle($(this).val());
  };

}).call(this);