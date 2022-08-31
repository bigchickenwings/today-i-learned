# Day 15 - 31/AUG/2022
ActiveRecord `#missing` method

We can chain the method `#missing` into any `#where` clause in an ActiveRecord query, which allows us to check if there is no relation found between 2 tables.