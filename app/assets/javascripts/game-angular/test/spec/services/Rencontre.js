'use strict';

describe('Service: Rencontre', function () {

  // load the service's module
  beforeEach(module('gameAngularApp'));

  // instantiate service
  var Rencontre;
  beforeEach(inject(function (_Rencontre_) {
    Rencontre = _Rencontre_;
  }));

  it('should do something', function () {
    expect(!!Rencontre).toBe(true);
  });

});
