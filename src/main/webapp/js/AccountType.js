$(document).ready(function (){
    $("#success-alert").css("visibility","hidden");
    $("#submit-btn").click(function (e){
        e.preventDefault();
        let data = new FormData(document.getElementById("acctypeform"));
        sendData(data);
    })
})
function sendData(data){
    var sender = new XMLHttpRequest();
    sender.open('POST',"setAccountType",false);
    sender.send(data);
    if(sender.status === 200){
        console.log("here i come.")
            $("#success-alert").css("visibility","visible");
        window.location.href = "registrationSuccessful";
    }else{
        window.location.href = "registrationFailed";


    }

}