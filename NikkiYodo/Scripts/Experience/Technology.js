var TechnologyJS = {
    filter: function (text) {
        $('.TechnologyContainer').each(function (i) {
            var c = $(this);
            var tech = c.children('.TechnologyTitle').val().toLowerCase();
            
            if (tech.indexOf(text.toLowerCase()) > -1) {
                c.show();
            } else {
                c.hide();
            }
        });
    }
};