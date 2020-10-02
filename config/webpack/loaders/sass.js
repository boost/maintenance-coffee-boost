module.exports = {
  test: /\.sass(\.erb)?$/,
  use: [
    'style-loader',
    'css-loader',
    {
      loader: 'sass-loader',
      options: {
        sassOptions: {
          indentedSyntax: true
        }
      }
    }
  ]
}
