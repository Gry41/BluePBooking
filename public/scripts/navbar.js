
//$(document).ready(function(){
    
  function Update1(i){
    var btnContainer = document.getElementById("myDIV");
    var btns = btnContainer.getElementsByTagName("a");
      
    // alert("Update");
      //var current = document.getElementsByClassName("actived");
      //current[0].className = "";
    //   alert(btns);
      for (let j = 0; j < btns.length; j++) {
        // alert(btns[j].innerHTML);  
        btns[j].className = "colors a ";
      }
      btns[i].className += "actived";
  }
  function Update(i){
      
    var btnContainer = document.getElementById("myDIV");
    var btns = btnContainer.getElementsByTagName("a");
      
    var title = document.getElementsByTagName("title");
    title[0].innerHTML = btns[i].innerHTML; 
  }
$(document).ready(function(){
    // alert("navbar");
    var title = document.getElementsByTagName("title");
    if(title[0].innerHTML == 'Home')
        Update1(0);
    if(title[0].innerHTML == 'Houses')
        Update1(1);
    if(title[0].innerHTML == 'Taxis')
        Update1(2);
    if(title[0].innerHTML == 'Tours')
        Update1(3);
    if(title[0].innerHTML == 'Rules')
        Update1(4);
    if(title[0].innerHTML == 'Contact')
        Update1(5);
});
//});
