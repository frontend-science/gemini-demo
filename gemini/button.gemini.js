// var gemini = require('gemini');

gemini.suite('button', function(suite) {
    suite.setUrl('/index.html')
        .setCaptureElements('button')
        .before(function(actions, find) {
            this.button = find('button');
        })
        .capture('plain')
        .capture('hover', function(actions, find) {
            actions.mouseMove(this.button);
        })
        .capture('pressed', function(actions, find) {
            actions.mouseDown(this.button);
        });
});
