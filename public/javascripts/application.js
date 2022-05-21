var getLikeBtn = document.getElementById('like_button')
var like = '1 Likes'
var getNightModeBtn = document.getElementById('night-mode-button')
var getBodyTag = document.querySelector('body')

getLikeBtn.addEventListener('click', function(){
    if (getLikeBtn.textContent === '0 Likes'){
        getLikeBtn.classList.toggle('blueLikeButton')
        getLikeBtn.textContent = like
    } else {
        getLikeBtn.classList.toggle('blueLikeButton')
        getLikeBtn.textContent = '0 Likes'
    }
})

getNightModeBtn.addEventListener('click', function(){
    getBodyTag.classList.toggle('night-mode')
})

