# Oracle APEX Region Plugin - TagCloud

## Changelog

#### 1.0 - Initial Release


## Install
- Import Plugin File

## Plugin Settings

Available Plugin Settings :
- **layout** - Change the tag cloud layout using the layout attribute. 
- **animationOnDisplay** - Set animation-on-display to 'auto' to enable initial display animation.
- **selectionmode** - Set the selection-mode attribute to either 'none', 'single', or 'multiple'.

## How to use
- Create a new Region based on the Plugin
- Add a SQL Statement like the example below. Then map the columns to the correct aatributes.
```
 SELECT 'CODE'      AS "id"
       ,'Test'      AS "label"
       ,23        AS "value"
       ,'Test Desc' AS "shortDesc"
       ,'http://test.com'        AS "url"
FROM   dual
```