jQuery(document).ready(function(){
  // const options = {
  //   data: ["Hi", "Hey", "Cool", "Okay"]
  // };
  // $('*[data-behavior="autocomplete"]').easyAutocomplete(options);
  $input = $('*[data-behavior="autocomplete"]')

  const options = {
    url: function(query) {
      return `/articles?article=${query}`;
    },
    getValue: "title",
  };

  $input.easyAutocomplete(options);
})
