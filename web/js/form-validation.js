"use strict";

function isFilledFields() {
  var result = true;
  $("input[type='text'],[type='number']").forEach(function(field) {
    if (!$(field).val()) {
      $(field).addClass('is-danger');
      result = false;
    }
    else {
      $(field).removeClass('is-danger');
    }
  });
  if (!result) $("#notification").removeClass('hidden');
  else $("#notification").addClass('hidden');
  return result;
};
