angular.module('Modulo',[]).controller('arrayControlador',function($scope){
    $scope.names = [	
			{nome:'joao',cidade:'itanhaem'},
			{nome:'pedro',cidade:'santos'},
			{nome:'ray' ,cidade:'sao paulo'}
		];
});