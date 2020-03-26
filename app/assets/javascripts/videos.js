// IFrame Player API の読み込み
var tag = document.createElement('script');
tag.src = "https://www.youtube.com/iframe_api";
var firstScriptTag = document.getElementsByTagName('script')[0];
firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

// YouTubeの埋め込み
function onYoutubeIframeAPIReady(){
  ytPlayer = new YT.player(
    'move', // 埋め込む場所の指定
    {
      width: 640,
      height: 390,
      videoId: 'XZ7cRA6Evxs'　// YouTubeのID
    }
  );
}


