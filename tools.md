# Screenshot Testing Tools

* [SiteEffect](http://siteeffect.io/)
  * No public source code is yet available; [GitHub repo](https://github.com/ti2m/siteeffect) is a stub
* [Bugsnag's unnamed Selenium-based tool](https://bugsnag.com/blog/implementing-a-visual-css-testing-framework)
  * Not currently publicly available at all
* [Huxley](https://github.com/facebookarchive/huxley)
  * Has been abandoned by Facebook; is no longer maintained
  * Was geared towards testing interactions with JavaScript widgets, as opposed to testing of static webpages
* [Hardy](http://hardy.io)
  * Offers "CSS property X of element Y has value Z" testing, rather than screenshot comparison
  * Writing/updating this type of test seems prohibitively tedious
* [DalekJS](http://dalekjs.com)
  * Seems geared more towards functional testing
  * Doesn't seem to have any integrated workflow for management of reference/baseline/norm screenshots
* [CSS Critic](https://github.com/cburgmer/csscritic)
  * Supports Firefox and PhantomJS
  * Has a review workflow
* [Needle](https://github.com/bfirsh/needle)
  * Somewhat promising. Offers unit tests with screenshot equality assertions.
  * Supports remote Selenium.
  * Supports setting viewport size.
  * Has some tooling around setting reference/baseline/norm screenshots
    * Not clear whether it supports updating a single reference screenshot at a time, rather than everything at once.
    * Reference/baseline/norm screenshot update workflow doesn't seem quite suited to Bootstrap's particular situation
  * Visual diffs require [Perceptual Image Diff](http://sourceforge.net/p/pdiff/code/HEAD/tree/) tool whose maintenance status is unclear
* [Browsershots](http://browsershots.org)
  * Uses virtual cluster of volunteers' computers to take screenshots in various browsers/OSes
  * Throughput/capacity level is unclear, and we'd be asking for a \*lot\* of screenshots
  * No workflow or higher-level tooling, but it exposes an API which might allow building such workflow tooling
* [CrossBrowserTesting.com](http://crossbrowsertesting.com)
  * Hosted solution with integrated review workflow
  * Pay per minute of test
* [Depicted / dpxdt](https://github.com/bslatkin/dpxdt)
  * PhantomJS-based, *but* also offers "Diff My Images" option to import images taken from other tools
  * Offers web-based test result viewer and reference/baseline/norm management workflow
  * No explicit cross-browser support in its data model
* [Applitools Eyes](http://applitools.com)
  * Smart visual diff algorithm
  * You provide it the images yourself
* [WebdriverCSS](https://github.com/webdriverio/webdrivercss)
  * Supports Selenium
  * Supports setting viewport dimensions
  * [WebdriverCSS Adminpanel](https://github.com/webdriverio/webdrivercss-adminpanel)
    * Web UI to view test results and manage reference/baseline/norm screenshots
* [Gemini](https://github.com/bem/gemini)
  * Supports Selenium
  * Blocks screenshots
  * Flexible configs
  * Offers experimental CSS code coverage feature
  * [Gemini GUI](https://github.com/bem/gemini-gui)
    * Web UI to view test results
* [Wraith-Selenium](https://github.com/andrewccadman/wraith-selenium)
  * A Wraith fork that supports Selenium instead of CasperJS
* [Screenbeacon](https://www.screenbeacon.com)
  * Paid service
  * Has GitHub integration
  * Supports responsive testing
  * No cross-browser support. Doesn't even say which browser they're using. Probably Phantom or Chrome.
* [Percy](https://percy.io)
  * Paid service
  * Currently Firefox-only
  * Currently no responsive testing support
  * They plan to implement these in the future
* [Gatling](https://github.com/gabrielrotbart/gatling)
  * Supports Selenium
  * Supports cross-browser testing
* [Shoov](http://shoov.io)
  * Supports Selenium
  * Supports cross-browser testing
  * Offers a web UI (in PHP...)
  * Not sure whether this supports responsive testing
* [PhantomJS](http://phantomjs.org)-related tools
  * Included for completeness, but these fail our cross-browser + cross-OS requirements
  * [CasperJS](http://casperjs.org)
    * Wrapper for PhantomJS & SlimerJS
    * No higher level tooling around screenshots, just a "take a screenshot" API
  * [SlimerJS](http://slimerjs.org)
    * Firefox/Gecko equivalent of PhantomJS
  * [TrifleJS](https://github.com/sdesalas/trifleJS)
    * Internet Explorer equivalent of PhantomJS
  * [PhantomCSS](https://github.com/Huddle/PhantomCSS)
    * CasperJS-based CSS regression testing
  * [Wraith](https://github.com/bbc-news/wraith)
    * CasperJS-based CSS regression testing
  * [BackstopJS](http://garris.github.io/BackstopJS/)
    * CasperJS-based CSS regression testing of "responsive" webpages
    * Includes web app to review test results (and manage reference/baseline/norm screenshots?) 
  * [grunt-photobox](https://github.com/stefanjudis/grunt-photobox)
    * PhantomJS-based screenshot-taker and web-based visual diff review tool
