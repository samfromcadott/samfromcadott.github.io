$ = require 'jquery'
{styles} = require '../css/style.json'

randomStyle = (styles) ->
	currentStyle = styles[ Math.floor( Math.random() * styles.length ) ].file #Get style from list

	return currentStyle

setStyle = (style) ->
	# $('head').append '<link id="page-style" rel="stylesheet" href="./css/lib/' + style + '.css"/>'
	require '../css/src/' + style + '.less'
	$('#style-chooser').val(style)

makeStyleList = (styles) ->
	for i in styles
		# Add each style to the dropdown
		$('#style-chooser').append '<option value="' + i.file + '">' + i.name + '</option>'

$('#style-chooser').change( () ->
	console.log $('#style-chooser').val()
	setStyle $('#style-chooser').val()
)

makeStyleList styles #Generate dropdown menu
setStyle randomStyle styles #Choose a random style at start
