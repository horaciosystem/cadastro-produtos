/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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
  if (!result) $("#notification").show();
  else $("#notification").hide();
  return result;
};
