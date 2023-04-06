function on_taskbar(){
    var getTask=document.getElementsByClassName("box");
    var getPrev=document.getElementsByClassName("prev");
    var getNext=document.getElementsByClassName("next");
    getTask[0].style.display='block';
    getPrev[0].style.display='none';
    getNext[0].style.display='none';
}
function off_taskbar(){
    var putOff= document.getElementsByClassName("box");
    var getPrev=document.getElementsByClassName("prev");
    var getNext=document.getElementsByClassName("next");
    putOff[0].style.display='none';
    getPrev[0].style.display='block';
    getNext[0].style.display='block';
}