(function() {
     
     var Example = function (element) {
         
         this.element = element;
         this.button = element.getElementsByClassName('tool-scheme')[0];
         
         this.initiateListener();
     };
  

     Example.prototype.initiateListener = function () {
         
         var self = this;
         
         this.button.addEventListener('click', function () {
             self.toggleScheme();
         });
     };
     
     Example.prototype.toggleScheme = function () {
         this.element.classList.toggle('scheme:dark');
     }
     
     var examples = document.getElementsByClassName('example');
    
    for (const example of examples) {
        new Example(example);
    }
    
}());
 
(function() {
     
    var Snippet = function(element) {
        
        this.element = element;
         
        this.initiateListener();
    }
     
    Snippet.prototype.initiateListener = function () {
        
        for (const child of this.element.children) {
            child.innerHTML = hljs.highlight(child.innerText, {language: 'swift', ignoreIllegals: true}).value;
        }
         
    };
     
    var snippets = document.getElementsByClassName('snippet');
    
    for (const snippet of snippets) {
        new Snippet(snippet);
    }
    
}());

 (function() {
      
     var Code = function(element) {
         
         this.element = element;
          
         this.initiateListener();
     }
    
    Code.prototype.initiateListener = function () {
         
         for (const child of this.element.children) {
             child.innerHTML = hljs.highlight(child.innerText, {language: 'swift', ignoreIllegals: true}).value;
         }
          
     };
      
     var codes = document.getElementsByClassName('code');
     
     for (const code of codes) {
         new Code(code);
     }
     
 }());
 
 var ready = (callback) => {
   if (document.readyState != "loading") callback();
   else document.addEventListener("DOMContentLoaded", callback);
 }

 ready(() => {
   
    const source = document.getElementById('filter');
    const results = document.getElementById('results');
    
    async function loadResults() {
        
        const response = await fetch('http://localhost:8080/assets/search.json')
        .then(function (response) {
            return response.json();
        })
        .then(function (objects) {
            
            const filters = objects.filter(function (object) { return object.keyword.includes(source.value.toLowerCase()) });
            
            filters.map(function(filter) {
                
                let anchor = document.createElement('a');
                anchor.setAttribute('class', 'link width:twelve')
                anchor.setAttribute('href', filter.reference);
                
                let hstack = document.createElement('div');
                hstack.setAttribute('class', 'hstack alignment:center spacing:small')
                
                let icon = document.createElement('span');
                icon.setAttribute('class', 'test');
                
                switch (filter.type) {
                  case 'structure':
                        
                        icon.innerHTML = 'S';
                        
                        break;
                        
                  case 'method':
                        
                        icon.innerHTML = 'M';
                        
                        break;
                        
                  case 'enumeration':
                        
                        icon.innerHTML = 'E';
                        
                        break;
                }
                
                let text = document.createElement('p');
                text.setAttribute('class', 'text');
                text.innerHTML = `${filter.title}`;
                
                hstack.appendChild(icon);
                hstack.appendChild(text);
                anchor.appendChild(hstack);
                results.appendChild(anchor);
            });
        })
        .catch(console.error);
    }
    
    source.addEventListener('input', function() {
        
        // Reset textfield content
        results.textContent = '';
        
        loadResults();
    });
    
 });
