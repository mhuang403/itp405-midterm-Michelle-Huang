## Question 2

The N+1 problem is a potential problem that could occur if a lot of queries are being executed. This would slow the response time for the results to load because of lazy loading, which means that the query is executed only when the data is requested. This creates multiple repetitive queries whereas with eager loading, the relationships are defined first to avoid repetitive queries. One way to solve this would be to use a 'with' query using Eloquent instead of all().
 
 Instead of Books::all();
 
 use Books::with('authors', 'publishers')->get();