console.log('hello')

var date = Date()
var timeOfPost = date.slice(0, 24)
console.log(timeOfPost)
var getTimeTag = document.querySelector('tag')
var getButton = document.querySelector('button')
var getCreatePostButton = document.querySelector('.new_post_button')

// function dateAndTime() {

//     getTimeTag.textContent = 'hey'
// }

getButton.addEventListener('click', function(event){
    if(event.target.className === 'new_post_button'){
        console.log(timeOfPost)
        getTimeTag.textContent = 'hey'
        }
    }
)

