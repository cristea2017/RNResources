const fs = require('fs')
const imageFileNames = () => {
  const array = fs
    .readdirSync('App/assets/images')
    .filter((file) => {
      return file.endsWith('.png')
    })
    .map((file) => {
      return file.replace('@2x.png', '').replace('@3x.png', '').replace('.png', '')
    })
  return Array.from(new Set(array))
}
const generate = () => {
  let properties = imageFileNames()
    .map((name) => {
      return `${name.replace(/-+?/g, '_')}: require('./images/${name}.png')`
    })
    .join(',\n  ')

  const string = `const images = {
  ${properties}
}
export default images
`
  fs.writeFileSync('App/assets/images.js', string, 'utf8')
}
generate()

// node App/scripts/imgGenerator.js
// create react-native.config.js file
// react native likn 