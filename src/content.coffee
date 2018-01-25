$ = require 'jquery'
articles = require '../data/articles.json'

parseArticles = () ->
	for key, value of articles
		$('#web').append makeArticle(key, './data/html/'+value.description)

makeArticle = (name, file) ->
	article = $('<div />', {
		class: 'article'
	})

	header = $('<h3 />', {
		html: name,
		class: 'article-header',
		appendTo: article
	})

	content = $('<div />', {
		class: 'article-content',
		appendTo: article
	})

	content.load(file)

	return article

parseArticles()
