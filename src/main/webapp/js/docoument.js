
$(document).ready(function (){
    $("#doc").submit(function (event){
       // alert("hi")
        event.preventDefault();
        // $.ajax({
        //         type:'POST',
        //         url: 'document',
        //         async:false,
        //         data:new FormData(document.getElementById("doc")),
        //         processData: false,
        //         contentType: false,
        //         success: function (data){
        //             console.log("data fetched");
        //         },
        //         error:function (data){
        //             console.log("data sending failed");
        //         }
        //
        //     }
        // )
        // data = new FormData(this);
        // $.post("document",function (data){
        //     alert("page lodaded successfly;")
        // })
        synchronousDataSending(new FormData(this));

    })



});

function synchronousDataSending(data){
    var sender = new XMLHttpRequest();
    sender.open('POST',"document",false);
    sender.send(data);
    if(sender.status === 200){
            sender.responseText;
            window.location.href="accountType";
    }else{
        alert("data sending failed");
    }
}
