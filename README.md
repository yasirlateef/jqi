# JQI

`jqi` is a wrapper for `jq` tool by __Stephen Dolan__. It aims to provide an interactive absctraction to the complex jq commands.

## How To

All you need to do is:
- Provide the name of your source json file
- write your `jq` filter
- Provide the name of file you'd like to save the results to.

## Demo

After cloning the repo, run the `jqi.sh` script and follow the steps mentioned above.

```bash
~/projects/bash
❯ ./jqi/jqi.sh
Please enter the source file name: myList.json
Please enter the required jq filter: .entities[] | { uuid: .uuid }
Please enter the target file name: myList.filtered.json
We shall filter myList.json for .entities[] | { uuid: .uuid } and write the result to myList.filtered.json

Success! Created myList.filtered.json with filtered values
```

* * *
Please feel free to contribute to `jqi`. It's been fun writing my first shell script!
