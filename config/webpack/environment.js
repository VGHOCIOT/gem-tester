const { environment } = require('@rails/webpacker')

// environment.loaders.prepend('sass', {
//         test: /\.s[ac]ss$/i,
//         use: [{
//           // Creates `style` nodes from JS strings
//           loader:"style-loader",
//         }, {          // Translates CSS into CommonJS
//           loader: "css-loader",
//         }, {
//           // Compiles Sass to CSS
//           loader:"sass-loader",
//           options: {
//             includePaths: ['node_modules'],
//           }
//         }],
//       },
// )
// environment.loaders.get('sass').use
//    .find(item => item.loader === 'sass-loader').options.includePaths.push(...['node_modules'])

module.exports = environment
