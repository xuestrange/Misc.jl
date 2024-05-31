"""
    sec(title, len = 40)
## Example
```
> @sec "Setting"
2024-05-30 23:34:01 =============== Setting ================
```
"""
macro sec(title, len = 40)
	title = " " * title * " "
	quote
		println(Dates.format(now(), "yyyy-mm-dd HH:MM:SS"), " ", rpad(lpad($title, floor(Int64, $len / 2 + length($title) / 2), "="), $len, "="))
	end
end
macro go(title = "Let's go", len = 40)
	quote
		@sec $title $len
	end
end

macro done(title = "I'm done!", len = 40)
	quote
		@sec $title $len
	end
end

"""
	log(m)

Print your message with time stamp.
"""
macro log(m)
	quote
		println(Dates.format(now(), "yyyy-mm-dd HH:MM:SS"), " ", $m)
	end
end
