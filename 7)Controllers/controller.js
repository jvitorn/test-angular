angular.module('Modulo',[]).controller('nomeControlador',function($scope){
    $scope.nome = "nome";
    $scope.sobrenome = "sobrenome";
    $scope.nomeCompleto = function(){
        return $scope.nome +' '+$scope.sobrenome;
    };
});