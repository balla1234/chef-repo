name "WEBrole"
description "this is my DB role"
run_list "recipe[mywebserver::installjava]", "recipe[mywebserver::myweb]"