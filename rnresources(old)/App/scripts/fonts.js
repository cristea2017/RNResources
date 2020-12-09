const fs = require('fs');
const fontFileNames = () => {
  const array = fs.readdirSync('App/assets/fonts').map(file => {
    return file.replace('.ttf', '').replace('.otf', '');
  });

  return Array.from(new Set(array));
};

const generate = () => {
  const properties = fontFileNames()
    .map(name => {
      const key = name.replace(/\s/g, '');
      return `${key.replace(/-+?/g, '_').toLowerCase()}: '${name}'`;
    })
    .join(',\n  ');

  const string = `const fonts = {
  ${properties}
}

export default fonts
`;

  fs.writeFileSync('App/assets/fonts.js', string, 'utf8');
};

generate();
