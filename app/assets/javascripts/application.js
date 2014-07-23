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

    var verbal = $('#rating_verbal').val();
    var written = $('#rating_written').val();
    var leadership = $('#rating_leadership').val();
    var ownership = $('#rating_ownership').val();
    var responsiveness = $('#rating_responsiveness').val();
    var presentation = $('#rating_presentation').val();
    var discussions = $('#rating_discussions').val();
    var assertiveness = $('#rating_assertiveness').val();
    var discipline = $('#rating_discipline').val();

    var rating_domain_knowledge = $('#rating_domain_knowledge').val();
    var rating_technical_knowledge = $('#rating_technical_knowledge').val();

    $.ajax({
        url: 'save_rating',
        data: {
            month: selected_month,
            year: selected_year,
            verbal: verbal,
            leadership: leadership,
            ownership: ownership,
            responsiveness: responsiveness,
            presentation: presentation,
            discussions: discussions,
            assertiveness: assertiveness,
            discipline: discipline,
            rating_domain_knowledge: rating_domain_knowledge,
            rating_technical_knowledge: rating_technical_knowledge
        }
    });
    return false;
}