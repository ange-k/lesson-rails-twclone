$(function(){
  $('#tweet_form').on('ajax:success', function(event){
    //参考  https://qiita.com/fursich/items/c2ab11acad918000a8ea
    var data = event.detail[0];
    if(!data['post']) return;
    var post = data['post'];

    if(!post['id']) return;

    // ajaxでhtmlを取得する
    $.get('/microposts/' + post.id, function(data){
      //とってきたhtmlをappendする
      $('#micro-post-list').append(data.html);
    });
  });
});