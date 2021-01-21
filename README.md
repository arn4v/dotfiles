# Snippets

#### Batch change filename extensions
  
  ```shell
  for f in `ls .`;do mv $f ${basename $f | cut -d. -f1`}.<ext>; done
  ```
#### Roam Research - Add to Reading List Bookmarklet
  ````js
  javascript:title=`{{[[TODO]]}} [${document.querySelector('meta[property="og:title"]')?.content ?? document.title}](${document.URL}) by [[${document.querySelector('meta[name="author"]')?.content ?? document.querySelector('meta[property="og:site_name"]').content ?? ''}]]`;if(title){void(prompt('Page Title',title));}
  ````
