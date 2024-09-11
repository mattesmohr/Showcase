import('./modules/tutorial.js');
import('./modules/documentation.js');

(function() {

    const Example = function (element) {

        this.element = element;
        this.button = element.getElementsByClassName('tool-scheme')[0];

        this.initiateListener();
    };

    /**
     * Initiates the listener.
     */
    Example.prototype.initiateListener = function () {

        const self = this;

        this.button.addEventListener('click', function () {
            self.toggleScheme();
        });
    };

    /**
     * Toggles the color scheme.
     */
    Example.prototype.toggleScheme = function () {
        this.element.classList.toggle('scheme:dark');
    };

    const examples= document.getElementsByClassName('example');

    for (const example of examples) {
        new Example(example);
    }

}());

(function() {

    const Snippet = function (element) {

        this.element = element;

        this.initiateHighlight();
    };

    /**
     * Highlight code.
     */
    Snippet.prototype.initiateHighlight = function () {

        for (const child of this.element.children) {
            child.innerHTML = hljs.highlight(child.innerText, {language: 'swift', ignoreIllegals: true}).value;
        }
    };

    const snippets = document.getElementsByClassName('snippet');

    for (const snippet of snippets) {
        new Snippet(snippet);
    }

}());

(function() {

    const Code = function (element) {

        this.element = element;

        this.initiateHighlight();
    };

    Code.prototype.initiateHighlight = function () {

        for (const child of this.element.children) {
            child.innerHTML = hljs.highlight(child.innerText, {language: 'swift', ignoreIllegals: true}).value;
        }
    };

    const codes= document.getElementsByClassName('code');

    for (const code of codes) {
        new Code(code);
    }

}());


/**
 * Cares about the code highlighting in the documentation.
 */
(function() {

    /**
     * ...
     */
    const XCode = function (element) {

        this.element = element;

        this.initiateHighlight();
    };

    XCode.prototype.initiateHighlight = function () {

        for (const child of this.element.children) {
            child.innerHTML = hljs.highlight(child.innerText, {language: 'swift', ignoreIllegals: true}).value;
        }
    };

    const codes= document.getElementsByClassName('code-code');

    for (const code of codes) {
        new XCode(code);
    }

}());
