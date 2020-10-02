const { environment } = require('@rails/webpacker')

const sass = require('./loaders/sass')
const scss = require('./loaders/scss')

environment.loaders.prepend('sass', sass)
environment.loaders.prepend('scss', scss)

module.exports = environment
