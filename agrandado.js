document.addEventListener("DOMContentLoaded", function() {
    const teamItems = document.querySelectorAll('.team-list .team-item');

    teamItems.forEach(item => {
        item.addEventListener('mouseenter', function() {
            this.classList.add('hovered');
        });

        item.addEventListener('mouseleave', function() {
            this.classList.remove('hovered');
        });
    });
});
