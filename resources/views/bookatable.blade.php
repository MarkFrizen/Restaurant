<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>book a table</title>
  <link rel="stylesheet" href="{{ '/storage/css/bookatable.css' }}">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
  <div class="row">
    <div class="col"></div>
    <div class="col">
      <p class="tenor-sans-regular text-center">BOOK A TABLE</p>
      <form class="bookTableForm" action = "/bookatable_data" method="post">
          <input type = "hidden" name = "_token" value = "<?php echo csrf_token(); ?>"/>
        <div class="row">
          <div class="col mb-3 ml-2">
        <input type="text" class="form-control" placeholder="Name" name="name">
          </div>
          <div class="col">
          <input type="email" class="form-control" placeholder="Email" name="email">
          </div>
        </div>
        <div class="row">
          <div class="col mb-3">
            <input type="text" class="form-control" placeholder="Phone" name="phone">
          </div>
          <div class="col">
            <select class="form-select" aria-label="Default select example" name="people">
              <option selected>People</option>
              <option value="1">1</option>
              <option value="2">2</option>
              <option value="3">3</option>
              <option value="4">4</option>
              <option value="5">5</option>
              <option value="6">6</option>
              <option value="7">7</option>
              <option value="8">8</option>
              <option value="9">9</option>
              <option value="10">10</option>
            </select>
          </div>
        </div>
        <div class="row">
          <div class="col mb-3">
            <input type="date" class="form-control" placeholder="Date(mm/dd)" name="book_date"/>
          </div>
          <div class="col">
            <select class="form-select" aria-label="Default select example" name="time"/>
              <option selected>Time</option>
              <option value="08:00">08:00</option>
              <option value="08:30">08:30</option>
              <option value="10:30">10:30</option>
              <option value="12:00">12:00</option>
              <option value="13:25">13:25</option>
              <option value="15:00">15:00</option>
              <option value="17:25">17:25</option>
              <option value="18:00">18:00</option>
              <option value="19:25">19:25</option>
              <option value="20:00">20:00</option>
            </select>
          </div>
        </div>
        <div class="row">
          <div class="col-3">
            <button type="submit" class="btn btn-primary">BOOK NOW</button>
          </div>
        </div>
      </form>
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
