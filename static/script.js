function login_funct(){
    $.post("readData.php", function(data){
    var username = document.getElementById("username").value;
    var password = document.getElementById("password").value;

    for (var i in data){
        if (data[i].username == username){
            if (data[i].pass == password){
                if (data[i].position == "admin"){
                    document.querySelector(".login").style.display = "none";
                    document.querySelector(".lecture").style.display = "none";
                    document.querySelector(".admin").style.display = "block";}
                else{
                    document.querySelector(".login").style.display = "none";
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

$(document).ready(function(){
    $(document).on("submit","#form", function(){ //process event name "submit" from id "form"

        $.post("addData.php",$('#form').serialize(), function(){alert("data sent")}   );
        return false; // to prevent the web from reloading
    });
    updateTable();
});
setInterval(updateTable, 1000);
function updateTable(){
    $.post("getData.php",
    function(data){
        var id = data[0].id;
        var rfid = data[0].rfid;
        var name = data[0].name;
        var class_st = data[0].class_st;

        document.getElementById("id_tab").innerHTML = id;
        document.getElementById("rfid_tab").innerHTML = rfid;
        document.getElementById("name_tab").innerHTML = name;
        document.getElementById("class_st_tab").innerHTML = class_st;

    }
    )
}

setInterval(updateData, 1000);
function updateData() {
    $.post("showData.php", {}, function(res) {
      $('#testing').empty(); // Xóa dữ liệu cũ trước khi thêm dữ liệu mới
  
      for (let i = 0; i < res.length; i++) {
        $('#testing').append('<tr><td>' + res[i]['id'] + '</td><td>' + res[i]['rfid'] + '</td><td>' + res[i]['name']+ '</td><td>' + res[i]['class']+ '</td><td>' + res[i]['checkin'] + '</td></tr>');
      }
    }, "json");
  }
  
  // Gọi hàm updateData ngay lập tức để cập nhật dữ liệu ban đầu
updateData();
 