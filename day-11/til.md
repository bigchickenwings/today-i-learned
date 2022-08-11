# Day 11 - 11/AUG/2022
Rails View Helpers - Blocks & Yield

In Ruby we can pass `blocks` to our methods to allow us to have more control over them, and DRY up our code.
Passing `blocks` in Rails is also possible, and is even more convenient - you can use them to create kind of a `component`.

I have used them while working in `Rivo`. We had to create multiple anchor sections that redirected the user to their profile, so to avoid rewriting code, we created a `helper` that handled the anchor wrapping.