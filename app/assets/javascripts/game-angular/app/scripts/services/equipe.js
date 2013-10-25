'use strict';

angular.module('gameAngularApp')
  .factory('Equipe', function ($resource) {
    var Equipe = $resource(
      "/api/equipes/:id.json", 
      { id: "@id" },
      { 
        update: { method: "PUT" }
      }
    );

    return Equipe;
  });
