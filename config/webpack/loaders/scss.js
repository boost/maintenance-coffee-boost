module.exports = {
  test: /\.scss(\.erb)?$/,
  use: [
    'style-loader',
    'css-loader',
    'sass-loader'
  ]
}
