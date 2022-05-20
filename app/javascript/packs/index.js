jQuery(document).ready(function(){
  $input = $('*[data-behavior="autocomplete"]')

  const options = {
    url: function(query) {
      return `/articles?article=${query}`;
    },
    getValue: "title",
  };

  $input.easyAutocomplete(options);
})
