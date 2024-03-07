//Importante para los botones
function resetClass(id) {
    var el = document.getElementById(id);
    console.log('Elemento a resetear:', el); // Imprime el elemento que se va a resetear
    el.className = 'boton-vikua';
}



document.addEventListener("DOMContentLoaded", function() {

    // importante para los botones
    var buttons = document.querySelectorAll('button');
    buttons.forEach(function(button) {
        resetClass(button.id);
    });


    var myButton = document.getElementById("myButton");
    if (myButton) {
        myButton.onclick = function() {
            alert("Presionaste el boton con el nuevo cambio!");
        }
    }



    var textInputAle = document.getElementById("textInputAle");
    if (textInputAle) {
        textInputAle.oninput = function() {
            alert("Has cambiado el texto!");
        }
    }

    var Plotly = window.Plotly;

    var plotElement = document.getElementById("histPlotAle");

    if (plotElement) {

        // Usar proxy CORS
        fetch('https://cors-anywhere.herokuapp.com/https://example.com')
            .then(response => response.json())
            .then(fig => {
                fig.data[0].marker.color = 'blue';
                Plotly.plot('histPlotAle', fig.data, fig.layout);
            });

    }
});