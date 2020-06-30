    $(document).ready(function (e) {

        $(".navhover").hover(function () {
            $(this).find(".dropdown-menu").toggleClass("show");
        });

        const navbar = document.querySelector("nav"); 
        let previousScroll = 0;
        $(window).scroll(function handleNav() {
          let currentScroll = $(window).scrollTop(); 
              //Distance scrolled down the page
              let navHeight = $(navbar).height(); //Height of navbar
              //When scrolling down AND you've scrolled past navHeight * 2.25,add Class
              if (currentScroll > previousScroll && currentScroll > navHeight * 1) {
                $(navbar).removeClass("fixed-top");
                //When scrolling up AND you've scrolled less than navHeight, remove Class
            } else if (previousScroll > currentScroll && !(currentScroll <= navHeight)) {
                $(navbar).addClass("fixed-top");
            }
            previousScroll = currentScroll;
        });
    });