$(function() {
    $.rails.allowAction = function(link) {
        if (!link.attr('data-confirm')) {
            return true;
        }
        $.rails.showConfirmDialog(link);
        return false;
    };

    $.rails.confirmed = function(link) {
        link.removeAttr('data-confirm');
        return link.trigger('click.rails');
    };

    $.rails.showConfirmDialog = function(link) {
        var html, message;
        message = link.attr('data-confirm');
        html = "<div id=\"modal1\" class=\"modal\" style=\"z-index: 1003; display: block; opacity: 1; transform: scaleX(1); top: 10%;\"> <div class=\"modal-content\"><h4>" + message + "</h4></div><div class=\"modal-footer\"><a class=\"modal-action modal-close waves-effect waves-red btn-flat close\">Cancel</a><a class=\"modal-action modal-close waves-effect waves-green btn-flat confirm\">OK</a></div></div>";
        $('body').append(html);
        $('#modal1').openModal({
            complete: function() {
                $('#modal1').remove();
            }
        });
        return $('#modal1 .confirm').on('click', function() {
            return $.rails.confirmed(link);
        });
        return $('#modal1 .close').on('click', function() {
            return $('#modal1').closeModal();
        });
    };
});