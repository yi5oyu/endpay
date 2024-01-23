    let menu_btn = document.querySelectorAll(".menu_btn")
    for(let i = 0 ;i<menu_btn.length ;i++){
        menu_btn[i].addEventListener("click",function(){
            menu_btn[i].style.backgroundColor = "#5cc4ef"
            for(let j = 0 ;j<menu_btn.length ;j++)
                if(i!=j)
                    menu_btn[j].style.backgroundColor = "#5cc4ef80"
        })
    }