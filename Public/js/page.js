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
     
     var example = document.getElementsByClassName('example');
     
     if(example.length > 0) {
         
         for(var i = 0; i < example.length; i++) {
             
             (function(i) {
                 new Example(example[i]);
             })(i);
         }
     }
 }());
