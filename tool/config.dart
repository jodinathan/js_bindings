

// 'http://localhost:$mdnWebPort/en-US/docs/Web/API/'
final mdnWeb = Uri(
  host: 'localhost',
  port: 5042,
  path: 'en-US/docs/Web/API/',
  scheme: 'http'
);

const mdnWebZipUrl = 'https://github.com/mdn/content/archive/refs/heads/main.zip';

const w3cTreeUrl = 'https://api.github.com/repos/w3c/webref/git/trees/main?recursive=1';
