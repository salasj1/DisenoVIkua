document.addEventListener("DOMContentLoaded", function() {


    // importante para los botones para cambiar su estilo
    var buttons = document.querySelectorAll('button');
    buttons.forEach(function(button) {
        if (button.className.includes("boton-sidebar")) {
            button.classList.remove("bttn-unite");
        }
    });

    // importante para los botones para cambiar su estilo
    var buttons = document.querySelectorAll('button');
    buttons.forEach(function(button) {
        if (button.className.includes("boton-vikua")) {
            button.classList.remove("bttn-unite");
        }
    });
    //cuando se agrega los cuadrados al presionar se ponen blancos
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


    //Esto es para que el ploty se vea bien
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

    //Placeholder de los inputs porque la librería shiny no deja asignarlos
    var textInputs = document.querySelectorAll('input[type="text"]');
    textInputs.forEach(function(textInput) {

        textInput.setAttribute('placeholder', 'Ingresa un texto');
        textInput.classList.add('my-placeholder-class');
    });

    var passwordInputs = document.querySelectorAll('input[type="password"]');
    passwordInputs.forEach(function(passwordInput) {
        passwordInput.setAttribute('placeholder', 'Ingresa  contraseña');
        passwordInput.classList.add('my-placeholder-class');
    });

    var emailInputs = document.querySelectorAll('input[type="email"]');
    emailInputs.forEach(function(emailInput) {
        emailInput.setAttribute('placeholder', 'ejemplo@dominio.com');
        emailInput.classList.add('my-placeholder-class');
    });

    var telInputs = document.querySelectorAll('input[type="tel"]');
    telInputs.forEach(function(telInput) {
        telInput.setAttribute('placeholder', '123-456-7890');
        telInput.classList.add('my-placeholder-class');
    });

    var dateInputs = document.querySelectorAll('input[type="date"]');
    dateInputs.forEach(function(dateInput) {
        dateInput.setAttribute('placeholder', 'AAAA-MM-DD');
        dateInput.classList.add('my-placeholder-class');
    });

    var numberInputs = document.querySelectorAll('input[type="number"]');
    numberInputs.forEach(function(numberInput) {
        numberInput.setAttribute('placeholder', 'Ingresa un número');
        numberInput.classList.add('my-placeholder-class');
    });

    var urlInputs = document.querySelectorAll('input[type="url"]');
    urlInputs.forEach(function(urlInput) {
        urlInput.setAttribute('placeholder', 'Ingresa un link');
        urlInput.classList.add('my-placeholder-class');
    });

    var searchInputs = document.querySelectorAll('input[type="search"]');
    searchInputs.forEach(function(searchInput) {
        searchInput.setAttribute('placeholder', 'Ingresa la búsqueda');
        searchInput.classList.add('my-placeholder-class');
    });

    var colorInputs = document.querySelectorAll('input[type="color"]');
    colorInputs.forEach(function(colorInput) {
        colorInput.setAttribute('placeholder', '#ffffff');
        colorInput.classList.add('my-placeholder-class');
    });

    var weekInputs = document.querySelectorAll('input[type="week"]');
    weekInputs.forEach(function(weekInput) {
        weekInput.setAttribute('placeholder', 'AAAA-W');
        weekInput.classList.add('my-placeholder-class');
    });

    var monthInputs = document.querySelectorAll('input[type="month"]');
    monthInputs.forEach(function(monthInput) {
        monthInput.setAttribute('placeholder', 'AAAA-MM');
        monthInput.classList.add('my-placeholder-class');
    });

    var timeInputs = document.querySelectorAll('input[type="time"]');
    timeInputs.forEach(function(timeInput) {
        timeInput.setAttribute('placeholder', 'HH:MM');
        timeInput.classList.add('my-placeholder-class');
    });

    var datetimeInputs = document.querySelectorAll('input[type="datetime-local"]');
    datetimeInputs.forEach(function(datetimeInput) {
        datetimeInput.setAttribute('placeholder', 'AAAA-MM-DDTHH:MM');
        datetimeInput.classList.add('my-placeholder-class');
    });
    var checkboxes = document.querySelectorAll('input[type="checkbox"]');
    checkboxes.forEach(function(checkbox) {
        checkbox.style.position = "relative";
        checkbox.style.top = "70px";
    });

});

// Función para agregar mensajes de error a los campos de texto
window.addErrorMessage = function(ids, messageText) {
    // Si ids no es un array, conviértelo en un array
    if (!Array.isArray(ids)) {
        ids = [ids];
    }
    // Iterar sobre cada ID proporcionado
    ids.forEach(function(id) {
        var textInput = document.getElementById(id);
        if (textInput) {
            var errorMsg = textInput.parentNode.querySelector('.error-message');
            if (!errorMsg) {
                errorMsg = document.createElement('div');
                errorMsg.classList.add('error-message');
                textInput.parentNode.insertBefore(errorMsg, textInput.nextSibling);
            }
            // Verificar si el mensaje de error ya existe y si el campo de texto ha sido modificado
            if (!errorMsg.textContent.includes(messageText) && textInput.modified) {
                errorMsg.textContent += messageText + '\n'; // Agregar el texto del mensaje proporcionado al final del contenido actual
                errorMsg.style.display = 'block';
                errorMsg.classList.add('error-mensaje-input');
                textInput.classList.add('error-input');
                textInput.previousElementSibling.classList.add('error-input');
            }
            // Agregar un controlador de eventos para marcar el campo de texto como modificado cuando el usuario ingresa texto
            textInput.addEventListener('input', function() {
                textInput.modified = true;
            });
        }
    });
};

// Función para eliminar mensajes de error de los campos de texto
window.removeErrorMessage = function(ids) {
    // Si ids no es un array, conviértelo en un array
    if (!Array.isArray(ids)) {
        ids = [ids];
    }
    ids.forEach(function(id) {
        // Buscar el elemento de entrada de texto con el ID proporcionado
        var textInput = document.getElementById(id);
        // Si se encuentra el elemento de entrada de texto
        if (textInput) {
            // Buscar el mensaje de error del campo de texto
            var errorMsg = textInput.parentNode.querySelector('.error-message');
            // Si se encuentra el mensaje de error
            if (errorMsg) {
                // Borrar tod0 el contenido del mensaje de error
                errorMsg.textContent = '';
                // Ocultar el mensaje de error
                errorMsg.style.display = 'none';
                // Eliminar la clase error-input del campo de texto
                textInput.classList.remove('error-input');
                // Eliminar la clase error-input del elemento hermano anterior del campo de texto
                textInput.previousElementSibling.classList.remove('error-input');
            }
        }
    });
};


// Controlador de mensajes personalizado para agregar mensajes de error
Shiny.addCustomMessageHandler('addErrorMessage', function(message) {
    // Llamar a la función addErrorMessage con los IDs proporcionados y el texto del mensaje
    window.addErrorMessage(message.ids, message.messageText);
});

// Controlador de mensajes personalizado para eliminar mensajes de error
Shiny.addCustomMessageHandler('removeErrorMessage', function(message) {
    // Llamar a la función removeErrorMessage con los IDs proporcionados
    window.removeErrorMessage(message.ids);
});