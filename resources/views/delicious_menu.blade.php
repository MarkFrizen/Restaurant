<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>delicious menu</title>
  <link rel="stylesheet" href="{{ '/storage/css/deliciousmenu.css' }}">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
  <div class="row">
    <div class="col">
<p class="text-center tenor-sans-regular"> DELICIOUS MENU </p>
      <p class="text-center content">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis at velit maximus, molestie est a, tempor magna.</p>
        <a class="menuTeam" href="/delicious_menu/0">SOUPE</a>
        <a class="menuTeam" href="/delicious_menu/1">PIZZA</a>
        <a class="menuTeam" href="/delicious_menu/2">PASTA</a>
        <a class="menuTeam" href="/delicious_menu/3">DESERT</a>
        <a class="menuTeam" href="/delicious_menu/4">WINE</a>
        <a class="menuTeam" href="/delicious_menu/5">BEER</a>
        <a class="menuTeam" href="/delicious_menu/6">DRINKS</a>
      </div>
  </div>
    @for ($i=0; $i < 21; $i += 3)
  <div class="row">
    <div class="col">
    <p class="menu">{{$info[$i]->title}}  . . . .  {{$info[$i]->price}}  USD</p>
    <p class="underMenu">{{$info[$i]->subtitle}}</p>
    </div>
    <div class="col">
        <p class="menu">{{$info[$i+1]->title}}  . . . .  {{$info[$i+1]->price}}  USD</p>
        <p class="underMenu">{{$info[$i+1]->subtitle}}</p>
    </div>
    <div class="col">
        <p class="menu">{{$info[$i+2]->title}}  . . . .  {{$info[$i+2]->price}}  USD</p>
        <p class="underMenu">{{$info[$i+2]->subtitle}}</p>
    </div>
  </div>
    @endfor
  </div>
</body>
</html>
