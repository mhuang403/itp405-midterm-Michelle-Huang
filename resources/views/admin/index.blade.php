<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Admin</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  </head>
  <body>
  @if (session('successStatus'))
    <div class="alert alert-success" role="alert">
      {{ session('successStatus') }}
    </div>
  @endif

    <h1>Admin</h1>
    <p>...</p>
  </body>
</html>
