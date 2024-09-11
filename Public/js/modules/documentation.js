/**
 * ...
 */
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

        fetch('/assets/entries.json')
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
     *  Creates the result list.
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
