$.getJSON 'css/style.json', (result) -> #Load the style list
	makeStyleList result.styles #Generate dropdown menu
	setStyle randomStyle result.styles #Choose a random style at start

randomStyle = (styles) ->
	currentStyle = styles[ Math.floor( Math.random() * styles.length ) ].file #Get style from list

	return currentStyle

setStyle = (style) ->
	$('head').append '<link id="page-style" rel="stylesheet/less" href="css/' + style + '.less"/>'

	less.sheets.push( $('#page-style')[0] )

	less.refresh()

makeStyleList = (styleList) ->
	for i in styleList
		console.log i
		# Add each style to the dropdown
		$('#style-chooser').append('<option value="' + i.file + '" >' + i.name + '</option>')

$('#style-chooser').change = () ->
	setStyle $(this).val()
