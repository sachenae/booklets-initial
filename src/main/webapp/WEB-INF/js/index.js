// Get the modal
alert('hu');
const modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}



function getModal(){
    modal.style.display = 'block';
}

function closeModal(){
    modal.style.display = 'none';

}

const login = document.getElementById('login');

login.onclick = function() {
    windows.location.href('main.jsp');
}