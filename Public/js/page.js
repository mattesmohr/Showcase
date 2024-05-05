(function() {

    const Documentation = function (element) {

        this.element = element;
        this.searchField = element.getElementsByClassName('textfield')[0];
        this.searchList = element.getElementsByClassName('vstack')[0];
        this.entries = [];

        this.initiateListener();
        this.loadEntries();
    };

    /**
     * Initiates the listener. E.g. to listen for a text input.
     */
    Documentation.prototype.initiateListener = function () {

        const self = this;

        this.searchField.addEventListener('input', function () {

            const keyword = self.searchField.value.trim();

            self.filterResult(keyword);
        });
    };

    /**
     * Reads the JSON file.
     */
    Documentation.prototype.loadEntries = function () {
        
        const self = this;

        fetch('http://localhost:8080/assets/entries.json')
        .then(function (response) {
            return response.json();
        })
        .then(function (data) {
            
            self.entries = data;

            self.createList(data);

        })
        .catch(function (error) {
            console.warn('Something went wrong.', error);
        });
    };

    /**
     *  Creates the search list.
     */
    Documentation.prototype.createList = function (entries) {

        for (const entry of entries) {

            let anchor = document.createElement('a');
            anchor.setAttribute('class', 'link width:twelve');
            anchor.setAttribute('href', entry.reference);

            let hstack = document.createElement('div');
            hstack.setAttribute('class', 'hstack vertical-alignment:center spacing:small padding:small');

            let icon = document.createElement('span');

            switch (entry.type) {
                case 'structure':

                    icon.setAttribute('class', 'icon color:blue');
                    icon.innerHTML = 'S';

                    break;

                case 'method':

                    icon.setAttribute('class', 'icon color:red');
                    icon.innerHTML = 'M';

                    break;

                case 'enumeration':

                    icon.setAttribute('class', 'icon color:orange');
                    icon.innerHTML = 'E';

                    break;

                case 'article':

                    icon.setAttribute('class', 'icon color:green');
                    icon.innerHTML = 'A';

                    break;

                default:

                    icon.innerHTML = 'U'

                    break;
            }

            let text = document.createElement('p');
            text.setAttribute('class', 'text');
            text.innerHTML = entry.title;

            hstack.appendChild(icon);
            hstack.appendChild(text);
            anchor.appendChild(hstack);

            this.searchList.appendChild(anchor);
        }
    };

    /**
     * Filters the entries by the given keyword.
     */
    Documentation.prototype.filterResult = function (keyword) {

        this.searchList.textContent = '';

        const entries = this.entries.filter(function (entry) {
            return entry.keyword.includes(keyword.toLowerCase());
        });

        this.createList(entries);
    };

    const documentation = document.getElementById('documentation');

    if (documentation != null) {
        new Documentation(documentation);
    }

}());

(function() {

    const Section = function (element) {

        this.element = element;
        this.steps = element.getElementsByClassName('step');
        this.consoles = element.getElementsByClassName('console');

        this.prepareView();
        this.observeSteps();
    };

    Section.prototype.observeSteps = function () {

        const self = this;

        const observer = new IntersectionObserver(function (entries) {

            entries.forEach(function (entry) {

                if (!entry.isIntersecting) {

                    for (const step of self.steps) {
                        step.classList.remove('state:focused');
                    }

                    entry.target.classList.add('state:focused');

                    self.showConsole(entry.target.dataset.index);
                }

            });
        }, {root: null, rootMargin: '-500px', threshold: 0})

        for (const step of this.steps) {
            observer.observe(step);
        }
    };

    Section.prototype.prepareView = function () {

        this.consoles[0].classList.add('state:attached');
        this.steps[0].classList.add('state:focused');
    }

    Section.prototype.showConsole = function (index) {

        for (const console of this.consoles) {
            console.classList.remove('state:attached');
        }

        this.consoles[index].classList.add('state:attached');
    }

    const Tutorial = function (element) {

        this.element = element;
        this.sections = element.getElementsByClassName('section');

        this.observeSections();
    };

    Tutorial.prototype.observeSections = function () {

        const observer = new IntersectionObserver(function (entries) {

            entries.forEach(function (entry) {

                if (entry.intersectionRatio >= 0.3) {
                    new Section(entry.target);
                }

                if (entry.intersectionRatio >= 0.8) {

                    let zstack = entry.target.getElementsByClassName("zstack")[0];
                    zstack.style.position = 'sticky';
                    zstack.style.top = '25px';
                }

            });
        }, {root: null, rootMargin: '300px', threshold: [0.3, 0.8]})

        for (const section of this.sections) {
            observer.observe(section);
        }
    };

    const tutorial = document.getElementById('tutorial');

    if (tutorial != null) {
        new Tutorial(tutorial);
    }

}());

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
