function count(){


  const text = document.getElementById("intro-text");
  const count = document.getElementById("count");
  
  text.addEventListener("keyup", (e)=>{
    const value = text.value;
    const counter=value.length;
    if (counter>100){
      count.style.color='#ff0000';
    }else{
      count.style.color='#fce3e5';
    };
    count.textContent = `${counter}字`;
    }
    );
  
  }
  
  
  
  window.addEventListener("load", count);