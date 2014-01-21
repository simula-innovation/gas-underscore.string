/**
 * Underscore.string for Google Apps Script - Test suite
 *
 * Read the <a href="https://github.com/simula-innovation/gas-underscore.string">README</a> for more information.
 */

QUnit.helpers(this);

function tests() {
  _ = UnderscoreString.load(Underscore.load());
  testString();
}

function doGet(e) {
  QUnit.urlParams(e.parameter);
  QUnit.config({
    title: "Underscore.string for Google Apps Script - Test suite"
  });
  QUnit.load(tests);
  return QUnit.getHtml();
}
