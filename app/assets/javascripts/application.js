// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require turbolinks
//= require_tree .

function load_rating() {
    var month = document.getElementById("date_month");
    var year = document.getElementById("date_year");
    var selected_month = month.options[month.selectedIndex].value;
    var selected_year = year.options[year.selectedIndex].text;
    $.ajax({
        url: 'rating',
        data: {
            month: selected_month,
            year: selected_year
        }
    });
    return false;
}

function save_rating() {
    var month = document.getElementById("date_month");
    var selected_month = month.options[month.selectedIndex].value;

    var year = document.getElementById("date_year");
    var selected_year = year.options[year.selectedIndex].text;

    var verbal = $('#verbal').val();
    var written = $('#written').val();
    var leadership = $('#leadership').val();
    var ownership = $('#ownership').val();
    var involvement_in_discussions = $('#involvement_in_discussions').val();
    var responsiveness = $('#responsiveness').val();
    var presentation = $('#presentation').val();
    var discussions = $('#discussions').val();
    var assertiveness = $('#assertiveness').val();
    var discipline = $('#discipline').val();

    var rating_domain_knowledge = $('#domain_knowledge').val();
    var rating_technical_knowledge = $('#technical_knowledge').val();

    $.ajax({
        type: "POST",
        url: 'save_rating',
        data: {
            month: selected_month,
            year: selected_year,
            verbal: verbal,
            written: written,
            leadership: leadership,
            ownership: ownership,
            responsiveness: responsiveness,
            presentation: presentation,
            discussions: discussions,
            involvement_in_discussions: involvement_in_discussions,
            assertiveness: assertiveness,
            discipline: discipline,
            rating_domain_knowledge: rating_domain_knowledge,
            rating_technical_knowledge: rating_technical_knowledge
        }
    });
    return false;
}