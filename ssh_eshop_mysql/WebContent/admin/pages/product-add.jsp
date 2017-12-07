<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>

	<form action="productAdd.action" method="post" enctype="multipart/form-data">

		封面：<input type="file" name="photo" size="12" required="required"/><br>
		名称：<input type="text" name="product.name" placeholder="商品名称", required="required"/><br>
		价格：<input type="text" name="product.price" placeholder="价格支持小数", required="required"/><br>
		介绍：<input type="text" name="product.intro" placeholder="商品介绍" /><br>
		库存：<input type="text" name="product.stock" placeholder="数字类型", required="required"/><br>
		分类：<select name="product.category.id">
						<s:iterator value="categoryList">
							<option value="<s:property value="id"/>"><s:property value="name"/></option>
						</s:iterator>
				   </select>
		<input type="submit" value="添加"/>
		
	</form><s:actionerror/>
	
</body>
</html>
