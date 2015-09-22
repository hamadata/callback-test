== README

This project is created for testing ActiveRecord callback.

This is the sample rails console log.

```
irb(main):007:0> book = Book.first
Book Load (0.1ms)  SELECT  "books".* FROM "books"  ORDER BY "books"."id" ASC LIMIT 1
=> #<Book id: 1, titie: nil, price: 14, created_at: "2015-09-22 01:24:06", updated_at: "2015-09-22 06:11:09">
irb(main):008:0> book.price = 15
=> 15
irb(main):009:0> book.save
(0.1ms)  begin transaction
SQL (0.3ms)  UPDATE "books" SET "price" = ?, "updated_at" = ? WHERE "books"."id" = ?  [["price", 15], ["updated_at", "2015-09-22 06:16:05.006377"], ["id", 1]]
previous_changes
changes          [14, 15]
(6.6ms)  commit transaction
=> true
```

