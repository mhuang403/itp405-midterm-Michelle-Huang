<!DOCTYPE html>

<html>

<head>
    <title>Books</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>

<body>

    <table class="table">
        <thead>
        <tr>
            <th>Book Title</th>
            <th>Author First Name</th>
            <th>Author Last Name</th>
            <th>Publisher</th>
        </tr>
        </thead>
        <tbody>
        @foreach ($books as $book)
            <tr>
                <td>{{ $book->title }}</td>
                <td>{{ $book->authors->first_name }}</td>
                <td>{{ $book->authors->last_name }}</td>
                <td>{{ $book->publishers->name }}</td>
                <td></td>
            </tr>
        @endforeach
        </tbody>
    </table>
</div>

</body>

</html>