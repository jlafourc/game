'use strict';

angular.module('gameAngularApp')
  .controller('RencontresCtrl', function ($scope, Rencontre, rencontres, Equipe, equipes,_,$log) {
  	$scope.rencontres = rencontres;
  	$scope.equipes = equipes;

  	$scope.equipes.$promise.then(function(equipes) {
  		$scope.rencontres.$promise.then(function(rencontres) {
  			angular.forEach(rencontres, function(rencontre) {
  				rencontre.equipe = _.find(equipes, function(equipe) {
  					return equipe.id == rencontre.equipe_id;
  				});
  				rencontre.equipe.adversaires.$promise.then(function(adversaires) {
  					rencontre.adversaire = _.find(adversaires, function(adversaire) {
  						return adversaire.id == rencontre.adversaire_id;
  					});
  				})  				
  			});
  		});		
  	});
  });



