/**
 * Underscore.string for Google Apps Script
 *
 * Based on Underscore.string (https://github.com/epeli/underscore.string)
 *
 * Read the <a href="https://github.com/simula-innovation/gas-underscore.string">README</a> for more information.
 */

/**
 * Returns the underscore.string library object, or, extends an underscore.js
 * (_) object with functions from the underscore.string library.
 *
 * <h3>Example:</h3>
 * <pre>
 * var _s = UnderscoreString.load();
 * </pre>
 *
 * The underscore.string library object is documented <a href="https://github.com/epeli/underscore.string/#underscorestring-">here</a>.
 *
 * @param {Object} [obj] Optional underscore object to extend with
 *        string functions.
 * @param {Boolean} [mixin] Optional boolean indicating whether to mix
 *        in non-conflicting string functions to the underscore.js
 *        object.
 * @return {Object} The root object of the underscore.string library, or an
 *                  underscore root object extended with string functions.
 */
function load(obj, mixin) {
  if (typeof obj !== 'undefined') {
    obj.string = obj.str = _.str;
    if (mixin && typeof obj.mixin == 'function') {
      obj.mixin(_.str.exports());
    }
    return obj;
  } else {
    return _.str;
  }
}
