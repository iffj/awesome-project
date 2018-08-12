$(document).ready(function(){
    $('#korean_prayer_input').change(function(){
        $.ajax({
            type:"GET",
            url:"/prayers/get_english_name",
            data: {kn:$('#korean_prayer_input').val()},
            dataType:'text',
            success:function(data, status, xhr){
                $('#english_prayer_input').val(data);
            },
            error:function(data, status, xhr){
                console.log(data);
                console.log(status);
            }
        });
    });

    $('#name_input').change(function(){
        $.ajax({
            type:"GET",
            url:"/prayers/get_prayee_english_name",
            data: {kn:$('#name_input').val()},
            dataType:'text',
            success:function(data, status, xhr){
                $('#english_name_input').val(data);
            },
            error:function(data, status, xhr){
                console.log(data);
                console.log(status);
            }
        });
    });
});

