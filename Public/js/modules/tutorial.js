(function() {

    /**
     * A type that represents a tutorial section. A section contains several steps.
     *
     */
    const Section = function (element) {

        /** The section itself. */
        this.element = element;

        /** The steps within the section. */
        this.steps = element.getElementsByClassName('step');

        /** The steps within the section. */
        this.scrollArea = element.getElementsByClassName('scroll')[0];

        /** The console output within the section. */
        this.consoles = element.getElementsByClassName('console');

        this.prepareView();
        this.initiateListener();
    };

    Section.prototype.initiateListener = function () {

        const self = this;

        for (let i = 0; i < this.steps.length; i++) {

            this.steps[i].addEventListener('click', function (event) {

                if (self.steps[i].contains(event.target)) {

                    const index = event.target.getAttribute('data-index');

                    self.showConsole(index);
                }
            });
        }
    };

    /**
     * ...
     *
     */
    Section.prototype.observeScrollArea = function () {

        const self = this;

        const observer = new IntersectionObserver(function (entries) {

            entries.forEach(function(entry) {

                if (entry.isIntersecting) {
                    self.observeSteps();
                }
            })
        })

        observer.observe(this.scrollArea);
    }

    /**
     * ...
     *
     */
    Section.prototype.observeSteps = function () {

        const self = this;

        const observer = new IntersectionObserver(function (entries) {

            entries.forEach(function(entry) {

                if (!entry.isIntersecting) {

                    const index = Number(entry.target.getAttribute('data-index'));

                    if (index === (self.steps.length -1)) {
                        self.element.removeAttribute('style');

                    } else {
                        self.showConsole(index + 1);
                    }

                } else {

                    self.stickSection();
                }


            }, { root: self.scrollArea.children[0] })
        })

        for (const step of this.steps) {
            observer.observe(step);
        }
    }

    /**
     * Prepares the initial state of the view.
     *
     */
    Section.prototype.prepareView = function () {
        this.consoles[0].classList.add('state:attached');
    }

    /**
     * ...
     *
     */
    Section.prototype.stickSection = function () {

        this.element.style.position = 'sticky';
        this.element.style.top = '100px';
    }


    /**
     * Shows the console.
     *
     */
    Section.prototype.showConsole = function (index) {

        for (const console of this.consoles) {
            console.classList.remove('state:attached');
        }

        this.consoles[index].classList.add('state:attached');
    }

    /**
     * A type that represents a tutorial. A tutorial contains several sections.
     */
    const Tutorial = function (element) {

        this.element = element;
        this.sections = element.getElementsByClassName('section');

        this.observeSections();
    };

    /**
     * Observes the intersection of the tutorial.
     */
    Tutorial.prototype.observeSections = function () {

        const observer = new IntersectionObserver(function (entries) {

            entries.forEach(function (entry) {

                if (entry.isIntersecting) {
                    new Section(entry.target);
                }
            })
        })

        for (const section of this.sections) {
            observer.observe(section);
        }
    };

    const tutorial = document.getElementById('tutorial');

    if (tutorial != null) {
        new Tutorial(tutorial);
    }

}());
