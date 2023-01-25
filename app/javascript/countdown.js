function countdown (){

  //今日
  const today = new Date(); 

  //current_userのbirthdayを文字列で取得⇨date型へ変換
  const birthday = new Date(JSON.parse(document.getElementById('user_birthday').dataset.json)); 
  
  
  const ageCalculation = ( birthday , today ) => {
      const age = today.getFullYear() - birthday.getFullYear();  //今年から誕生年をを減算
      const thisYearsBirthday  = new Date( today.getFullYear() , birthday.getMonth() , birthday.getDate() );  //今年の誕生日を算出
      return age + ( thisYearsBirthday.getTime() > today.getTime() ? -1 : 0 );  //今年の誕生日が来る前なら年齢から−１
  }
  
  const age = ageCalculation( new Date(birthday) , new Date() ); //コール

  const lifespan = new Date(today.getFullYear()+(80-age),birthday.getMonth(),birthday.getDate()); //80歳の誕生日
 
  const diff = lifespan.getTime() - today.getTime(); 
  
  //diffをミリ秒から単位を変換
  const calcDay = Math.floor(diff / 1000 / 60 / 60 / 24);
  const calcHour = Math.floor(diff / 1000 / 60 / 60) % 24;
  const calcMin = Math.floor(diff / 1000 / 60) % 60;
  const calcSec = Math.floor(diff / 1000) % 60;
  console.log(calcSec);

  // 必要な要素を取得
  const day = document.getElementById("day");
  const hour = document.getElementById("hour");
  const min = document.getElementById("min");
  const sec = document.getElementById("sec");

  // 取得した時間を表示（2桁表示）
  day.innerHTML = calcDay 
  hour.innerHTML = calcHour < 10 ? '0' + calcHour : calcHour;
  min.innerHTML = calcMin < 10 ? '0' + calcMin : calcMin;
  sec.innerHTML = calcSec < 10 ? '0' + calcSec : calcSec;

 };
 
 setInterval(countdown,1000);

 window.addEventListener('load', countdown);