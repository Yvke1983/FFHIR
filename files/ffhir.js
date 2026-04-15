function initFixFixedHeader(){

    if ($(".a-IRR-controls-item--pivot").length > 0) {
        fixFixedHeader(".a-IRR-header--pivotColumn");
        $(".a-IRR-header--null").addClass('makeSticky');   
    }
    else {
        $(".a-IRR-controlsCheckbox").each(function checkFixFixed() { 
            var $filter = $(this);                                                  
            if ($filter.data("setting") === 'break'){ 
                if($filter.prop("checked")){ 
                    fixFixedHeader("th");
                    return false;      
                }
        }}); 
    }
}

function fixFixedHeader(selector){
    $(selector).not(".a-IRR-header--group").each( function makeItStick(){
    var $this = $(this);
    if($this.not(".a-IRR-header--pivotRow").find(".a-IRR-header")){
        $(this).addClass('makeSticky');                          
    }});
    
    $('tr').parents().each(function setOverflow() { var $that = $(this); 
        var overflowValue = $that.css("overflow");
        if (overflowValue !== "visible"){
                $that.css("overflow","visible");
        }
    });

        //Check if browser is Internet Explorer.
        if(navigator.userAgent.indexOf('IE')!==-1|| navigator.appVersion.indexOf('Trident/') > -1){
            $('.makeSticky:first').parent().children().each(function getWidth(){ var $thisIE = $(this); var aWidth = $thisIE.css("width"); $thisIE.css('width',aWidth);})

            // Scroll event check
            $(window).scroll(function (event) {
                var scroll = $(window).scrollTop();

                // Activate sticky for IE if scrolltop is more than 20px
                if ( scroll > 70) {
                    $('.makeSticky:first').parent().addClass( "sticky-top-ie" );
                }else{
                    $('.makeSticky:first').parent().removeClass( "sticky-top-ie" );        
                }

            });
        }
}

    