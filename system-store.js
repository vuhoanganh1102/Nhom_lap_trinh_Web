// Lấy danh sách các quận huyện của các tỉnh thành phố trong Việt Nam
const districts = {
    "Hà Nội": ["Hà Đông", "Cầu Giấy", "Đống Đa"],
    "Hồ Chí Minh": ["Bình Thạnh"],
    "Hải Phòng": ["Quận Ngô Quyền"],
    "Quảng Ninh": ["TP. Hạ Long"],
    "Bắc Ninh": ["Phường Tiền An"],
    "Thanh Hoá": ["Thành Phố Thanh Hoá"],
    "Cần Thơ": ["Ninh Kiều"]
};

// Danh sách các chi nhánh của từng quận huyện
const branches = {
    "Hà Đông": ["Chi nhánh Nguyễn Trãi", "Chi nhánh Quang Trung"],
    "Cầu Giấy": ["Chi nhánh Nguyễn Phong Sắc", "Chi nhánh Cầu Giấy 1", "Chi nhánh Cầu Giấy 2"],
    "Đống Đa": ["Chi nhánh Chùa Láng", "Chi nhánh Chùa Bộc", "Chi nhánh Phạm Ngọc Thạch"],
    "Bình Thạnh": ["Chi nhánh Nguyễn Gia Trí, HCM"],
    "Quận Ngô Quyền": ["Chi nhánh Hải Phòng"],
    "TP. Hạ Long": ["Chi nhánh Vincom Hạ Long"],
    "Phường Tiền An": ["Ninh Kiều"],
    "Thành Phố Thanh Hoá": ["Chi nhánh Thanh Hoá"],
    "Ninh Kiều": ["Chi nhánh Vincom Hùng Vương"]
};

// Function để render danh sách quận huyện theo tỉnh thành phố
function renderDistricts(city) {
    const districtSelect = document.querySelector("#district");
    districtSelect.innerHTML = ""; // Reset danh sách quận huyện

    // Render danh sách quận huyện
    districts[city].forEach((district) => {
        const option = document.createElement("option");
        option.value = district;
        option.innerHTML = district;
        districtSelect.appendChild(option);
    });
}

// Function để render danh sách các chi nhánh theo quận huyện
function renderBranches(district) {
    const branchSelect = document.querySelector("#shop");
    branchSelect.innerHTML = "" // Reset danh sách chi nhánh

    // Render danh sách chi nhánh
    branches[district].forEach((branch) => {
        const option = document.createElement("option");
        option.value = branch;
        option.innerHTML = branch;
        branchSelect.appendChild(option);
    });
}

// Lắng nghe sự kiện khi tỉnh thành phố được chọn
document.querySelector("#city").addEventListener("change", (event) => {
    const city = event.target.value;
    renderDistricts(city);
    renderBranches(districts[city][0]);
    mapChange();
});


// Lắng nghe sự kiện khi quận huyện được chọn
document.querySelector("#district").addEventListener("change", (event) => {
    const district = event.target.value;
    renderBranches(district);
    mapChange();
});

//trả về thành phố được chọn
function validateSelectCity() {
    var options = document.getElementById("city");
    var html = '';
    for (var i = 0; i < options.length; i++) {
        if (options[i].selected) {
            html += options[i].value;
            break;
        }
    }
    return html;
}

//trả về quận, huyện được chọn
function validateSelectDistrict() {
    var options = document.getElementById("district");
    var html = '';
    for (var i = 0; i < options.length; i++) {
        if (options[i].selected) {
            html += options[i].value;
            break;
        }
    }
    return html;
}

//trả về chi nhánh được chọn
function validateSelectShop() {
    var options = document.getElementById("shop");
    var html = '';
    for (var i = 0; i < options.length; i++) {
        if (options[i].selected) {
            html += options[i].value;
            break;
        }
    }
    return html;
}

const maps = [
    [1, 'Hà Nội', 'Hà Đông', 'Chi nhánh Nguyễn Trãi', '244 - 252 Nguyễn Trãi, Hà Đông, Hà Nội', '☎ 1900 2631 - Nhánh 107'],
    [2, 'Hà Nội', 'Hà Đông', 'Chi nhánh Quang Trung', '391 Quang Trung, Hà Đông, Hà Nội', '☎ 1900 2631 - Nhánh 126'],
    [3, 'Hà Nội', 'Cầu Giấy', 'Chi nhánh Nguyễn Phong Sắc', '65 Nguyễn Phong Sắc, Cầu Giấy, Hà Nội', '☎ 1900 2631 - Nhánh 101'],
    [4, 'Hà Nội', 'Cầu Giấy', 'Chi nhánh Cầu Giấy 1', '126 Cầu Giấy, Quan Hoa, Cầu Giấy, Hà Nội', '☎ 1900 2631 - Nhánh 106'],
    [5, 'Hà Nội', 'Cầu Giấy', 'Chi nhánh Cầu Giấy 2', '228 Cầu Giấy, Quan Hoa, Cầu Giấy, Hà Nội', '☎ 1900 2631 - Nhánh 105'],
    [6, 'Hà Nội', 'Đống Đa', 'Chi nhánh Chùa Láng', '48 Chùa Láng, Đống Đa, Hà Nội', '☎ 1900 2631 - Nhánh 104'],
    [7, 'Hà Nội', 'Đống Đa', 'Chi nhánh Chùa Bộc', '127 Chùa Bộc, Đống Đa, Hà Nội', '☎ 1900 2631 - Nhánh 110'],
    [8, 'Hà Nội', 'Đống Đa', 'Chi nhánh Phạm Ngọc Thạch', '116B6 Phạm Ngọc Thạch, Đống Đa, Hà Nội', '☎ 1900 2631 - Nhánh 123'],
    [9, 'Hồ Chí Minh', 'Bình Thạnh', 'Chi nhánh Nguyễn Gia Trí, HCM', '151 Nguyễn Gia Trí, phường 25, Bình Thạnh, Thành phố Hồ Chí Minh', '☎ 1900 2631 - Nhánh 201'],
    [10, 'Hải Phòng', 'Quận Ngô Quyền', 'Chi nhánh Hải Phòng', '95 - 97A - 97B Lê Lợi, Phường Gia Viên, Quận Ngô Quyền, TP. Hải Phòng', '☎ 1900 2631 - Nhánh 133'],
    [11, 'Quảng Ninh', 'TP. Hạ Long', 'Chi nhánh Vincom Hạ Long', 'Khu Cột Đồng Hồ, Trần Hưng Đạo, Phường Bạch Đằng, TP. Hạ Long, Quảng Ninh', '☎ 1900 2631 - Nhánh 121'],
    [12, 'Bắc Ninh', 'Phường Tiền An', 'Chi nhánh Bắc Ninh', '265-267 Nguyễn Gia Thiều, Phường Tiền An, Bắc Ninh', '☎ 1900 2631 - Nhánh 131'],
    [13, 'Thanh Hoá', 'Thành Phố Thanh Hoá', 'Chi nhánh Thanh Hoá', '32-34 Nguyễn Trãi, Phường Ba Đình, Thành Phố Thanh Hóa, Tỉnh Thanh Hóa', '☎ 1900 2631 - Nhánh 132'],
    [14, 'Cần Thơ', 'Ninh Kiều', 'Chi nhánh Vincom Hùng Vương', '32-34 Nguyễn Trãi, Phường Ba Đình, Thành Phố Thanh Hóa, Tỉnh Thanh Hóa', '☎ 1900 2631 - Nhánh 205']
];

//thay đổi địa chỉ, số điện thoại
function mapChange() {
    const map = document.getElementById("store-map");
    const shopAdress = document.getElementById("adress");
    const shopPhone = document.getElementById("phone");

    let city = validateSelectCity();
    let district = validateSelectDistrict();
    let shop = validateSelectShop();
    let id = 0;
    
    for (let i = 0; i < maps.length; i++) {
        if (maps[i][1] === city && maps[i][2] === district && maps[i][3] === shop) {
            shopAdress.textContent = maps[i][4]; // thay đổi nội dung địa chỉ
            shopPhone.textContent = maps[i][5]; // thay đổi nội dung số điện thoại
            id = i + 1;
            break;
        }
    }
    
    //thay đổi địa chỉ hiện trên google map
    if (id == 1) {
        map.innerHTML = '<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3725.130907933317!2d105.797005!3d20.987389!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135acbf6b1cd94f%3A0xd6475d5913232d95!2sSammi%20Shop!5e0!3m2!1sen!2sus!4v1680954139151!5m2!1sen!2sus"  style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>';
    }
    else if (id == 2) {
        map.innerHTML = '<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d29805.5544427379!2d105.768422!3d20.964788!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313453bb61519349%3A0x218ea7c1015467ef!2sSammi%20Shop%20Quang%20Trung!5e0!3m2!1sen!2sus!4v1680954686506!5m2!1sen!2sus"  style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>';
    }
    else if (id == 3) {
        map.innerHTML = '<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3723.8717751324366!2d105.790013!3d21.037816000000003!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab363abfce37%3A0x96d57ac540b97c1c!2sSammi%20Shop!5e0!3m2!1sen!2sus!4v1680958596072!5m2!1sen!2sus" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>';
    }
    else if (id == 4) {
        map.innerHTML = '<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d29792.0159954303!2d105.798811!3d21.032606!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135abf326dbc933%3A0x53ef81df713915d2!2sSammi%20Shop!5e0!3m2!1sen!2sus!4v1680958656960!5m2!1sen!2sus" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>';
    }
    else if (id == 5) {
        map.innerHTML = '<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3723.9590613072914!2d105.79676!3d21.034324!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135abdb5c2fc9b7%3A0x43f2322131a77f4e!2sSammi%20Shop!5e0!3m2!1sen!2sus!4v1680958716085!5m2!1sen!2sus" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>';
    }
    else if (id == 6) {
        map.innerHTML = '<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d29793.868221065648!2d105.807405!3d21.02334!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab3427bef0cf%3A0x6ae44ec0a27780c8!2sSammi%20Shop!5e0!3m2!1sen!2sus!4v1680958779005!5m2!1sen!2sus" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>';
    }
    else if (id == 7) {
        map.innerHTML = '<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d29797.01597518196!2d105.827894!3d21.007584!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac7fd708ac17%3A0x51b8b368767ded6a!2zU2FtbWkgU2hvcCBDaMO5YSBC4buZYw!5e0!3m2!1sen!2sus!4v1680958848510!5m2!1sen!2sus" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>';
    }
    else if (id == 8) {
        map.innerHTML = '<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3723.8717751324366!2d105.790013!3d21.037816000000003!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab363abfce37%3A0x96d57ac540b97c1c!2sSammi%20Shop!5e0!3m2!1sen!2sus!4v1680959111462!5m2!1sen!2sus" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>';
    }
    else if (id == 9) {
        map.innerHTML = '<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3919.080936798201!2d106.716016!3d10.805113!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317528a38db764f3%3A0x1a46941b85cfc86e!2sSammishop%20Cosmetic%20%26%20Accessories!5e0!3m2!1sen!2sus!4v1680959172281!5m2!1sen!2sus" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>';
    }
    else if (id == 10) {
        map.innerHTML = '<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14913.388833971861!2d106.692295!3d20.858051!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x314a7b403b15b8a1%3A0x5f9e9922962634d!2sSammi%20Shop!5e0!3m2!1sen!2sus!4v1680959239798!5m2!1sen!2sus" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>';
    }
    else if (id == 11) {
        map.innerHTML = '<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d1863.029470839762!2d107.084568!3d20.950148!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x314a59c3861bba2d%3A0x8f81e6b3771d62a3!2sSammi%20Shop!5e0!3m2!1sen!2sus!4v1680959298308!5m2!1sen!2sus" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>';
    }
    else if (id == 12) {
        map.innerHTML = '<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3720.2878789183824!2d106.065731!3d21.180720000000004!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31350dba536371b7%3A0x8161d0f2602430ed!2sSammi%20Shop!5e0!3m2!1sen!2sus!4v1680959566835!5m2!1sen!2sus" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>';
    }
    else if (id == 13) {
        map.innerHTML = '<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3753.8578145917472!2d105.777293!3d19.803625!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3136f9097105c57f%3A0xd0e5545f129961cd!2sSammi%20Shop!5e0!3m2!1sen!2sus!4v1680959608168!5m2!1sen!2sus" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>';
    }
    else if (id == 14) {
        map.innerHTML = '<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3928.6552104511047!2d105.779609!3d10.045284!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a089e9bfdcac6b%3A0x5ffb47b9e9734481!2sSammi%20Shop!5e0!3m2!1sen!2sus!4v1680959643695!5m2!1sen!2sus" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>';
    }
}
