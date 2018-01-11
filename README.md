# EL表达式 自定义函数
##  前言
EL表达式只是一种数据访问语言 本身不支持调用方法  如果需要处理更复杂的业务 可以自定义函数  本质是提供一种语法允许EL调用某各类的  **静态方法**


-  自定义方法
 ```
 
public class ElFunctions
{

    //必须是静态方法
	public static String reverse(String str) 
	{
		return new StringBuffer(str).reverse().toString();
	}
	public static int  countChar(String str) 
	{
	
		return str.length();
	}
}



  ```
  
  
  -   在tld 文件中配置
  ```
  <?xml version="1.0" encoding="UTF-8" ?>

<taglib xmlns="http://java.sun.com/xml/ns/j2ee"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="http://java.sun.com/xml/ns/j2ee http://java.sun.com/xml/ns/j2ee/web-jsptaglibrary_2_0.xsd"
    version="2.0">
   
    <tlib-version>1.0</tlib-version>
    <short-name>mytaglib</short-name>
    <uri>/tagtest-tag</uri>
	<!--定义一个函数-->
	<function>
		<name>reverse</name>
		<function-class>main.elfunc.ElFunctions</function-class>
		<function-signature>java.lang.String reverse(java.lang.String)</function-signature>
	
	</function>
	
	<function>
		<name>countChar</name>
		<function-class>main.elfunc.ElFunctions</function-class>
		<function-signature>int countChar(java.lang.String)</function-signature>
	
	</function>
   
   
    
</taglib>
  
  ```
  
  
  
  -   在jsp中使用
  ```
  ${eltag:reverse(param.name)}
  
  
  
  ${eltag:countChar(param.name)}
  
  ```