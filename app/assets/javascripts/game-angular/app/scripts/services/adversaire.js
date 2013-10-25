'use strict';

angular.module('gameAngularApp')
  .factory('Adversaire', function ($resource) {
    var Adversaire = $resource(
      "/api/equipes/:equipe_id/adversaires/:id.json", 
      { id: "@id", equipe_id: "@equipe_id" },
      { 
        update: { method: "PUT" }
      }
    );

    return Adversaire;
  });
