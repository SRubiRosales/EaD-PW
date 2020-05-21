var app = angular.module('EaD', []);
app.controller("ControladorInput",function($scope){
    $scope.comentario = " ";
    $scope.nombres = "Gerardo Gabriel";
    $scope.apellidos = "Gutiérrez Zavala";
});

app.controller('listController', function($scope){
    $scope.ventajas = [
        "Estudias en tu casa, libre de coronavirus...",
        "Estudias mientras trabajas",
        "Realiza tus actividades desde cualquier dispositivo",
        "Puedes ver tus clases mientras realizas otras actividades",
        "Olvídate de llegar tarde a clases",
        "Puedes tomar tus clases desde cualquier lugar",
        "No pierdes tiempo en el tráfico de camino a la escuela o de regreso a casa",
        "Interactúa constantemente con alumnos y maestros en foros y chats",
        "Desarrolla nuevas competencias",
        "Sé más activo y autónomo",
    ]
});
