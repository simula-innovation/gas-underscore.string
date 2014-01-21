Underscore.string
=================
Underscore.string for Google Apps Script is a library that enables the
use of the
[underscore.string](https://github.com/epeli/underscore.string/#underscorestring-)
library in
[Google Apps Script](https://developers.google.com/google-apps/). API
docs are available
[here](https://script.google.com/macros/library/versions/d/MgrAm34sxMTTeOlfoFv8DT-Bao7QLBR4j).

Adding the library to your project
----------------------------------
Underscore.string for Google Apps Script is made available as a script
library. This is how you add it to your project:

1. Select "Resources" > "Libraries..." in the Google Apps Script
editor.
2. Enter the project key (`MgrAm34sxMTTeOlfoFv8DT-Bao7QLBR4j`) in the
"Find a Library" field, and choose "Select". (If you have copied the
library, enter instead the project key of your copy.)
3. Select the highest version number, and choose UnderscoreString as
the identifier. (Do not turn on Development Mode unless you know what
you are doing. The development version may not work.)
4. Press Save. You can now use the Underscore.string library in your
code.

If you want to combine Underscore.string with
[Underscore for Google Apps Script](https://github.com/simula-innovation/gas-underscore),
then also add its project key by following
[these instructions](https://github.com/simula-innovation/gas-underscore#adding-the-library-to-your-project).

Loading the library
-------------------
To load Underscore.string as a standalone library:

```
var _s = UnderscoreString.load();
```

To extend an
[Underscore for Google Apps Script](https://github.com/simula-innovation/gas-underscore)
library object with underscore.string functions:

```
var _ = UnderscoreString.load(Underscore.load());
```

The underscore object can also be extended with non-conflicting
underscore.string functions mixed in:

```
var _ = UnderscoreString.load(Underscore.load(), true);
```

which is equivalent to:

```
var _ = UnderscoreString.load(Underscore.load());
_.mixin(_.str.exports());
```

Copying the library
-------------------
A Google Apps Script project for Underscore.string is available
[here](https://script.google.com/d/1079zoOjHTmZlFVUqIE_OTd_uvqvqsO3iXxzGrlIc3DRtlBDKc0guJL9I/edit).

To copy the library, Select "File" > "Make a copy..." in the Google
Apps Script editor.

Testing the library
-------------------
Underscore.string can partially be tested with
[QUnit for Google Apps Script](https://github.com/simula-innovation/qunit/tree/gas/gas).

Click
[here](https://script.google.com/macros/s/AKfycbwd2C677Dp13-5TeS7xhoXCYH3PC1OATd8RESJF2bCF1LaySyQ/exec)
to run the tests (and wait for the test results to show up.)

There is also a
[Google Apps Script project for the Underscore.string test suite](https://script.google.com/d/1eF4-Xk3mQFGuTIIRRPWj2KU5gfm-ANsgcPfGGHmPOBg09WMtOokJHN3B/edit)
available.

License
-------
Underscore.string for Google Apps Script is released under the MIT license.
