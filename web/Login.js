function signin() {
    var username = document.getElementById("username").value
    var password  = document.getElementById("password").value
    if (username == "segev350")
    {
        if (password=="")
        {
            window.location.assign("homepage2.html");
        }
        else{
            alert("password is not correct")
        }
    }
    else{
        alert("username is not correct");
    }
}


// document.constantTimeEqual(password,"segev100")