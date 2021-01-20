# Snippets

- Batch change filename extensions
  
  ```shell
  for f in `ls .`;do mv $f ${basename $f | cut -d. -f1`}.<ext>; done
  ```
