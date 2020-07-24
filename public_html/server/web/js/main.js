// Cart
$('.add-to-cart').on('click', function () {
    let id = $(this).data('id');
    $.ajax({
        url: '/cart/add',
        data: {id: id},
        type: 'GET',
        success: function (res) {
            console.log(res)
        },
        error: function () {
            alert('Error!');
        }

    });
    return false;
});
// Cart