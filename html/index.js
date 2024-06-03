window.addEventListener('message', function(event) {
    const data = event.data;

    const checker = document.getElementById('checker');
    const status = document.getElementById('status');
    const tint = document.getElementById('tint');
    const error = document.getElementById('error');
    const screen = document.getElementById('screen');

    if (data.type === 'show') {
        checker.style.display = 'flex';
        status.style.display = 'block';
        tint.style.display = 'none';
        error.style.display = 'none';
        screen.style.backgroundColor = '#66ff66'; // Default color
    } else if (data.type === 'update') {
        status.style.display = 'none';
        tint.style.display = 'block';
        error.style.display = 'none';
        document.getElementById('percentage').textContent = data.tint;

        // Change screen color based on tint legality
        const tintValue = parseInt(data.tint, 10);
        if (tintValue <= 70) {
            screen.style.backgroundColor = '#66ff66'; // Legal tint color
        } else {
            screen.style.backgroundColor = '#ff6666'; // Illegal tint color
        }

        // Hide the checker after displaying the result for a few seconds
        setTimeout(() => {
            checker.style.display = 'none';
        }, 5000);
    } else if (data.type === 'error') {
        status.style.display = 'none';
        tint.style.display = 'none';
        error.style.display = 'block';
        error.textContent = data.message;
        screen.style.backgroundColor = '#ff6666'; // Error color

        // Hide the checker after displaying the error message for a few seconds
        setTimeout(() => {
            checker.style.display = 'none';
        }, 5000);
    }
});
