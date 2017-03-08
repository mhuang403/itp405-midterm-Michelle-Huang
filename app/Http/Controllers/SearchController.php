<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use DB;

use App\Books;
use App\Authors;
use App\Publishers;

class SearchController extends Controller
{
    public function index() {

       $results = DB::select('
SELECT reviews.headline, reviews.body, reviews.rating, books.title,
authors.first_name, authors.last_name, publishers.name AS publisher_name
FROM `itp405-midterm`.books
INNER JOIN reviews
ON reviews.book_id = books.id
INNER JOIN authors
ON books.author_id = authors.id
INNER JOIN publishers
ON books.publisher_id = publishers.id
WHERE books.id = :id', ['id' => 1]);

        var_dump($results);

        return view('index',
            ['id' => $results]);


    }

//    public function authors() {
//        $authors = Authors::all();
//        return $authors;
//    }
//
//    public function publishers() {
//        $publishers = Publishers::all();
//        return $publishers;
//    }

    public function books() {

        $authors = Authors::all();
//        return $authors;

        $publishers = Publishers::all();
//        return $publishers;

        $books = Books::with('authors', 'publishers')->get();
//        var_dump($books);
//        var_dump($authors);

        return view('books', [
            'books' => $books,
            'authors' => $authors,
            'publishers' => $publishers
        ]);

//        return $books->title;
//        return $books->authors;
//        return $books->publishers;



//        foreach ($books as $book) {
//            return($book->title);
//            return($book->authors->first_name);
//            return($book->authors->last_name);
//            return($book->publishers->name);
//        }

    }


}

