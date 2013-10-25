'use strict';

angular.module('gameAngularApp')
  .factory('Rencontre', function ($resource, $log) {
    var Rencontre = $resource(
      "/api/rencontres/:id.json", 
      { id: "@id" },
      { 
      	update: { method: "PUT" }
      }
    );

    return Rencontre;
  });
