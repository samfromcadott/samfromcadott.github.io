$.getJSON 'css/style.json', (result) ->
	setStyle randomStyle result.styles

randomStyle = (styles) ->
	currentStyle = styles[ Math.floor( Math.random() * styles.length ) ] #Get style from list

	return currentStyle

setStyle = (style) ->
	$('head').append '<link id="page-style" rel="stylesheet/less" href="css/' + style + '.less"/>'

	less.sheets.push( $('#page-style')[0] )

	less.refresh()
