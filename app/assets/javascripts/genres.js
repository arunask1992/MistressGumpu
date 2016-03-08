// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

initSearch = function() {
    var defaultOptions = {
        disable_search_threshold: 1,
        allow_single_deselect: true,
        no_results_text: 'No genres found',
        search_contains: true,
        width: "600px"
    };

    $('.chosen-select').chosen(defaultOptions);
}

$(document).ready(initSearch);
