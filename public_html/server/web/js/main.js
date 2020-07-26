// Cart


function showCart(cart) {
    $('#modal-cart .modal-body').html(cart);
    $('#modal-cart').modal();
    let cartSum = $('#cart-sum').text() ? $('#cart-sum').text() : '0 р.';
    if (cartSum) {
        $('.cart-sum').text(cartSum);
    }
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
// Cart