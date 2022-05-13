function Pomodoro(){
  const sound = document.querySelector("#sound");
  const start = document.querySelector("#start");
  const count = 1000;
  const time = 1500;
  let set_id;
  let timer = time;
  let counter = 0;
  let min;
  let sec;

  min = Math.floor(timer / 60);
  sec = timer % 60;
  deg = 360*counter/time;
  $('.ppc-progress-fill').css('transform','rotate('+ deg +'deg)');
  $('.ppc-percents span').html(min +":" + ("0"+sec).slice(-2));

  function count_down(){
    if(timer <= 0 ){
      clearInterval(set_id);
      document.getElementById("time-form").submit();
    }else{
      if(timer ==1 ){
          sound.play();
      sound.volume = 1;
      }
      timer--;
      counter++;
    }
    min = Math.floor(timer / 60);
    sec = timer % 60;
    $(function(){
      let $ppc = $('.progress-pie-chart');
      deg = 360*counter/time;
      if (counter > time/2){
        $ppc.addClass('gt-50');
      }
      $('.ppc-progress-fill').css('transform','rotate('+ deg +'deg)');
      $('.ppc-percents span').html(min +":" + ("0"+sec).slice(-2));
    });
  }

  start.addEventListener("click",(count_start)=> {
    count_start.preventDefault();
    start.style.display ="none";
    set_id = setInterval(count_down,count);
  });


}
window.addEventListener('load', Pomodoro)