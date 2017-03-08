<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Login</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  </head>

  <body>

  @if (count($errors) > 0)
    <div class="alert alert-danger">

        @foreach ($errors->all() as $error)
          <p>{{ $error }}</p>
        @endforeach

    </div>
  @endif
    <form method="post">
      {{ csrf_field() }}
      <input type="text" name="email" placeholder="Email">
      <input type="password" name="password" placeholder="Password">
      <button type="submit">Login</button>
    </form>
    </div>
  </body>
</html>
