const addBtn = document.querySelector("#add--product");
const inputPro = document.querySelector("#number--product");

function addProduct() {
    let currentVal = parseInt(inputPro.value);
    inputPro.value = currentVal + 1;
}

function subProduct() {
    let currentVal = parseInt(inputPro.value);
    if (currentVal <= 1) {
        inputPro.value = 1;
    }
    else
        inputPro.value = currentVal - 1;
}