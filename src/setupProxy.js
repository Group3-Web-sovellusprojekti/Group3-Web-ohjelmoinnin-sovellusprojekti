const { createProxyMiddleware } = require("http-proxy-middleware");

module.exports = app => {

    app.use(
        createProxyMiddleware('/src/Chart/V1.js', 
        {
            target: 'http://localhost:8080',
            changeOrigin: true
        })
    )
    app.use(
        createProxyMiddleware('/src/components/Signup.js', 
        {
            target: 'http://localhost:8080',
            changeOrigin: true
        })
    )
    app.use(
        createProxyMiddleware('/src/components/Login.js', 
        {
            target: 'http://localhost:8080',
            changeOrigin: true
        })
    )
 
}
  //"proxy":"http://localhost:8080",
  //"homepage": "http://localhost:3000",