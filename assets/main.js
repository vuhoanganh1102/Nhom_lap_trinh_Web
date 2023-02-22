
let SlideIndex = 1;
show();
function show() {
    let i;
    let slides = document.getElementsByClassName("myslider");
    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    }
    if (SlideIndex > slides.length) SlideIndex = 1;
    slides[SlideIndex - 1].style.display = "block";
    SlideIndex++;
    setTimeout(show, 7000);
}
showSlides(SlideIndex);
function plusSlides(n) {
    showSlides(SlideIndex += n);
}
function currentSlide(n) {
    showSlides(SlideIndex = n);
}
function showSlides(n) {
    let i;
    let slides = document.getElementsByClassName("myslider");
    if (n < 1) SlideIndex = slides.length;
    if (n > slides.length) SlideIndex = 1;
    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    }
    slides[SlideIndex - 1].style.display = "block";
}