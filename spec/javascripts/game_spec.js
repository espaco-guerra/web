//= require jquery
//= require game

describe("EspacoGuerra#newGameOn", function() {
  it("hooks inside an element", function() {
    var fakeElement = $('#konacha');
    var renderer = $.EspacoGuerra.newGameOn(fakeElement);

    assert.ok(renderer);
    assert.ok($('#konacha').find('canvas').length);
  });
});