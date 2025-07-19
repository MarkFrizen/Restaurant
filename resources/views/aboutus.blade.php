<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>{{$info->title}}</title>
  <link rel="stylesheet" href="/storage/css/aboutus.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <style>
        .rightImage {
            background-image: url("/storage{{$info->image_url}}");
        }
    </style>
</head>
<body>
<div class="container">
  <div class="row">
    <div class="col-6">
      <p class="text-center tenor-sans-regular mainContent__p">
        <span>{{$info->title}}</span>
      </p>
      <p class="text-center mainContent__p content">
        <span>
          {{$info->subtitle}}
        </span>
      </p>
      <p class="text-center mainContent__p">
        <span>
          {{$info->text}}
        </span>
      </p>
    </div>
    <div class="col-5">
      <p class="mainContent__p rightImage">
        <img src="/storage/img/Квадрат.png">
      </p>
    </div>
  </div>
</div>
</body>
</html>
