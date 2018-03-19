const path = require('path')
const webpack = require('webpack')

module.exports = {
	entry: './src/index.js',
	output: {
		filename: 'bundle.js',
		path: path.resolve(__dirname, 'dist')
	},
	devServer: {
		contentBase: './dist',
		hot: true
	},
	module: {
		rules: [
			{ test: /\.coffee$/, use: 'coffee-loader' },
			{
				test: /\.less$/,
				use: [{
					loader: "style-loader" // creates style nodes from JS strings
				}, {
					loader: "css-loader" // translates CSS into CommonJS
				}, {
					loader: "less-loader" // compiles Less to CSS
				}]
			}

		]

	},
	plugins: [
		new webpack.HotModuleReplacementPlugin()
	]

}
