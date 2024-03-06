
//importante para el boton
function resetClass(id) {
    var el = document.getElementById(id);
    el.className = 'boton-vikua';
}
function applyDashboardStyle(color) {
    var dashboards = document.querySelectorAll(".dashboard");
    dashboards.forEach(function(dashboard) {
        dashboard.style.backgroundColor = color;

    });
}
document.addEventListener("DOMContentLoaded", function() {

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