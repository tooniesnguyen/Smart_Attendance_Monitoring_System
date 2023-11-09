
// $(document).ready(function(){
//     login_funct();
// })
function login_funct(){
    $.post("readData.php", function(data){
    var username = document.getElementById("username").value;
    var password = document.getElementById("password").value;

    for (var i in data){
        if (data[i].username == username){
            if (data[i].pass == password){
                if (data[i].position == "admin"){
                    document.querySelector(".login-container").style.display = "none";
                    document.querySelector(".lecture").style.display = "none";
                    document.querySelector(".admin").style.display = "block";}
                else{
                    document.querySelector(".login-container").style.display = "none";
                    document.querySelector(".lecture").style.display = "block";
                    document.querySelector(".admin").style.display = "none";
                }    
            }
            else{
                alert("Sai ten đang nhap hoac mat khau");
            }
        }
    }
    })
} 