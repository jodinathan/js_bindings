const fs = require("fs");
const path = require("path");

console.log('CURRENTPATH', __filename);

fs.writeFileSync(path.resolve(__dirname, 'foo.bar'), 'fooooo', 'utf8');

console.log('CURRENTPATHDONE', __filename);