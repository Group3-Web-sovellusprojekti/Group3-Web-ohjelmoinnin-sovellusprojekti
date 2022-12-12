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
};
