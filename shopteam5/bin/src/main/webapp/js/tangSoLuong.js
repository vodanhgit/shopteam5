/**
 * 
 */
function decreaseQuantity() {
            var inputElement = document.getElementById("quantityInput");
            var currentQuantity = parseInt(inputElement.value);
            if (currentQuantity > 0) {
                inputElement.value = currentQuantity - 1;
            }
        }

        function increaseQuantity() {
            var inputElement = document.getElementById("quantityInput");
            var currentQuantity = parseInt(inputElement.value);
            inputElement.value = currentQuantity + 1;
        }