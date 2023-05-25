function moveToNext(current, last){
    if(current.value.length === current.maxLength){
      document.getElementById(last).focus();
    }
  }
