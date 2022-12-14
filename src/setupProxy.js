//"proxy":"http://localhost:8080",
//"homepage": "http://localhost:3000",

const { createProxyMiddleware } = require("http-proxy-middleware");

module.exports = (app) => {
  app.use(
    createProxyMiddleware(
      "/src/components/Signup.js", //uus proxy uudelle chartille eli muuten sama mutta vaihtaa oikian reitin filee ja laittaa sen tuohon module.exportin  sisää
      {
        target: "http://localhost:8080",
        changeOrigin: true,
      }
    )
  );
  app.use(
    createProxyMiddleware(
      "/src/components/Login.js", //uus proxy uudelle chartille eli muuten sama mutta vaihtaa oikian reitin filee ja laittaa sen tuohon module.exportin  sisää
      {
        target: "http://localhost:8080",
        changeOrigin: true,
      }
    )
  );
  app.use(
    createProxyMiddleware("/src/Chart/V1.js", {
      target: "http://localhost:8080",
      changeOrigin: true,
    })
  );
};
