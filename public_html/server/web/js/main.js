// Cart


function showCart(cart) {
    $('#modal-cart .modal-body').html(cart);
    $('#modal-cart').modal();
    let cartSum = $('#cart-sum').text() ? $('#cart-sum').text() : '0 ₽';
    if (cartSum) {
        $('.cart-sum').text(cartSum);
    }
}

function getCart() {
    $.ajax({
        url: 'cart/show',
        type: 'GET',
        success: function (res) {
            if (!res) alert('Ошибка');
            showCart(res);
        },
        error: function () {
            alert('Error!');
        }
    });
}

function clearCart() {
    $.ajax({
        url: 'cart/clear',
        type: 'GET',
        success: function (res) {
            if (!res) alert('Ошибка');
            showCart(res);
        },
        error: function () {
            alert('Error!');
        }
    });
}

$('.add-to-cart').on('click', function () {
    let id = $(this).data('id');
    $.ajax({
        url: 'cart/add',
        data: {id: id},
        type: 'GET',
        success: function (res) {
            if (!res) alert('Ошибка');
            showCart(res);
        },
        error: function () {
            alert('Error!');
        }

    });
    return false;
});

$('#modal-cart .modal-body').on('click', '.del-item', function () {
    let id = $(this).data('id');
    $.ajax({
        url: 'cart/del-item',
        data: {id: id},
        type: 'GET',
        success: function (res) {
            if (!res) alert('Ошибка');
            showCart(res);
        },
        error: function () {
            alert('Error!');
        }

    });
});

// Cart