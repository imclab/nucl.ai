module.exports = {
  'Check Basic': function(browser) {
    browser
      .url(browser.globals.domain)
      .assert.containsText("h1", "nucl.ai", "It's nucl.ai!")
      .end();
  }
};