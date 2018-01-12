
// Change style of navbar on scroll
window.onscroll = function() {
    var navbar = document.getElementById("nav_bar");
    if (document.body.scrollTop > 50 || document.documentElement.scrollTop > 50) {
        navbar.className = "v1-top v1-card-2 v1-animate-top v1-white";
    } else {
        navbar.className = "v1-top";
    }
}

// Toggle the menu on small screens when clicking on the menu button
function menu_toggle() {
    var navbar = document.getElementById("nav_bar_mobile");
    if (navbar.className.indexOf("v1-show") == -1) {
        navbar.className += " v1-show";
    } else {
        navbar.className = navbar.className.replace(" v1-show", "");
    }
}

// Open the image fullscreen when clicked
function image_pop_up(image) {
    var figcaption = image.parentNode.getElementsByTagName("figcaption")[0];

    // get modal or create it if it does not exists

    var modal = document.getElementById("image_pop_up_modal");
    if (!modal)
    {
        document.body.innerHTML += ' ' +
            '<div id="image_pop_up_modal" class="v1-modal v1-black" onclick="this.style.display=\'none\'">' +
                '<span class="v1-button v1-large v1-white v1-display-topright" title="Close"><i class="fa fa-remove"></i></span>' +
                '<div class="v1-modal-content v1-animate-zoom v1-center v1-transparent v1-padding-64">' +
                    '<img class="v1-image" />' +
                    '<figcaption class="v1-opacity v1-large"></figcaption>' +
                '</div>' +
            '</div>' +
        '';

        modal = document.getElementById("image_pop_up_modal");
    }

    // set the properties (image src and legend) and show the modal

    var modal_img = modal.getElementsByTagName("img")[0];
    var modal_figcaption = modal.getElementsByTagName("figcaption")[0];

    modal_img.src = image.src;
    modal_figcaption.innerHTML = figcaption.innerHTML;

    modal.style.display = "block";
}
