document.addEventListener("DOMContentLoaded", function() {
    /*var textInputs = document.querySelectorAll('input[type="text"]');
    textInputs.forEach(function(textInput) {
        textInput.setAttribute('placeholder', 'Introduce un texto');
        textInput.classList.add('my-placeholder-class');
    });*/
    var buttons = document.querySelectorAll('button');
    buttons.forEach(function(button) {
        if (button.className.includes("boton-sidebar")) {
            button.classList.remove("bttn-unite");
        }
    });
    // importante para los botones

    var buttons = document.querySelectorAll('button');
    buttons.forEach(function(button) {
        if (button.className.includes("boton-vikua")) {
            button.classList.remove("bttn-unite");
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
    //Para el TextInput
    var textInputs = document.querySelectorAll('input[type="text"]');
    textInputs.forEach(function(textInput) {
        textInput.setAttribute('placeholder', 'Introduce un texto');
        textInput.classList.add('my-placeholder-class');

        // Crear un nuevo elemento div para mostrar el mensaje de error
        var errorMsg = document.createElement('div');
        errorMsg.classList.add('error-message'); // Agregar la clase error-message

        textInput.parentNode.insertBefore(errorMsg, textInput.nextSibling); // Insertar el mensaje de error después del textInput

        textInput.addEventListener('input', function() {
            if (textInput.value === '') {
                errorMsg.textContent = 'Este campo es obligatorio'; // Cambiar el texto del mensaje de error
                errorMsg.style.display = 'block'; // Mostrar el mensaje de error
                errorMsg.classList.add('error-mensaje-input'); // Agregar la clase error-input al mensaje de error

                textInput.classList.add('error-input'); // Agregar la clase error-input al textInput
                textInput.previousElementSibling.classList.add('error-input'); // Agregar la clase error-input al label del textInput
            } else {
                errorMsg.style.display = 'none'; // Ocultar el mensaje de error si el textInput no está vacío
                textInput.classList.remove('error-input'); // Eliminar la clase error-input del textInput
                textInput.previousElementSibling.classList.remove('error-input'); // Eliminar la clase error-input del label del textInput
            }
        });
    });


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