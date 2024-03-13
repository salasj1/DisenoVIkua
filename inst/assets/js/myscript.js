document.addEventListener("DOMContentLoaded", function() {

    var buttons = document.querySelectorAll('button');
    buttons.forEach(function(button) {
        if (button.className.includes("action-button boton-sidebar")) {
            button.className = 'boton-sidebar';
        }
    });
    // importante para los botones
    var buttons = document.querySelectorAll('button');
    buttons.forEach(function(button) {
        if (button.className.includes("action-button boton-vikua")) {
            button.className = 'boton-vikua';
        }
    });

    var buttons = document.querySelectorAll(".boton-sidebar, .boton-vikua-base");
    buttons.forEach(function(button) {
        button.onmousedown = function(event) {
            var rectangles = event.currentTarget.querySelectorAll('.rectangle, .rectangle-2, .rectangle-3');
            rectangles.forEach(function(rectangle) {
                rectangle.style.borderColor = '#ffffff';
            });
        }
        button.onmouseup = function(event) {
            var rectangles = event.currentTarget.querySelectorAll('.rectangle, .rectangle-2, .rectangle-3');
            rectangles.forEach(function(rectangle) {
                rectangle.style.borderColor = '#6a7384';
            });
        }
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
    /*function hidePlaceholders() {
        setTimeout(function() {
            var cards = document.querySelectorAll('.card');
            cards.forEach(function(card) {
                var cardBody = card.querySelector('.card-body');
                if (cardBody) {
                    var placeholders = cardBody.querySelectorAll('.placeholder-glow');
                    var placeholders2 = cardBody.querySelectorAll('.placeholder');
                    var realTextTitle = cardBody.querySelector('.titulo');
                    var realTextText = cardBody.querySelector('.texto');
                    var realButtonLink = cardBody.querySelector('.boton');
                    if (placeholders && realTextTitle && realTextText && realButtonLink){

                        placeholders2.forEach(function(placeholder) {
                            placeholder.style.display = 'none';
                        });

                        // Cambia las clases de los elementos
                        realTextTitle.className = 'card-title';
                        realTextText.className = 'card-text';
                        realButtonLink.className = 'btn btn-primary disabled';

                    }
                }
            });
        }, 2000); // Muestra el texto real después de 5 segundos
    }
    hidePlaceholders();*/
});