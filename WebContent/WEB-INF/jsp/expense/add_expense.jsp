<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/taglibs/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>报销申请</title>

<script>
	$(function() {
		$('#occurDate').datepicker({
			currentText: 'Now',
			showAnim: 'slideDown',
			dateFormat: 'yy-mm-dd'
		}); 
	});
	$(function() {
		var message = "${message}";
		var error = "${error}";
		if(message != ""){
			$( "#dialog-complete" ).dialog({
			      modal: true,
			      buttons: {
			        Ok: function() {
			          $( this ).dialog( "close" );
			        }
			      }
		    });
		}
		if(error != ""){
			$( "#dialog-error" ).dialog({
			      modal: true,
			      buttons: {
			        Ok: function() {
			          $( this ).dialog( "close" );
			        }
			      }
		    });
		}
	});
</script>
</head>

<body>
<form:form action="${ctx }/expenseAction/doAdd" modelAttribute="expense" method="POST">
	<div id="main">
        
        <div class="where">
             <ul>
            	<form:errors path="*" cssStyle="font-color:red"/>
            </ul>
        </div>
       <div id="dialog-complete" title="complete">
		  <p>
		    <span class="ui-icon ui-icon-circle-check" style="float:left; margin:0 1px 5px 0;"></span>
		    ${message}
		  </p>
		</div> 
		<div id="dialog-error" title="error">
		  <p>
		    <span class="ui-icon ui-icon-circle-check" style="float:left; margin:0 1px 5px 0;"></span>
		    ${error}
		  </p>
		</div>
      <div class="sort_switch">
          <ul id="TabsNav">
          	  <li class="selected"><a href="#">报销申请</a></li>
          </ul>
      </div>
      
      <div id="tagContent0" class="sort_content">
        	  
        	<div class="currency_area hue9">
            	<div class="the_content">
                	<table class="tableHue2" width="100%" border="1" bordercolor="#dddddd" cellspacing="0" cellpadding="0">
                      <tbody>
                        <tr>
                          <td width="15%" class="title1">发生日期：</td>
                          <td class="left"><input name="occurDate" id="occurDate" readonly type="text" class="input_text2" size="30" /></td>
                        </tr>
                        <tr>
                          <td width="15%" class="title1">金额 ：</td>
                          <td class="left"><input name="money" type="text" class="input_text2" size="30" /></td>
                        </tr>
                        <tr>
                          <td width="15%" class="title1">描述：</td>
                          	<td class="left">
								<textarea cols="33" rows="5" name="remark"></textarea>
							</td>
                        </tr>
                      </tbody>
                  </table>
				  
                </div>
            </div>
            <div class="fun_area" style="text-align:center;"><input type="submit" value="确 定" class="input_button1"/></div>
      </div>
</div>
</form:form>
</body>
</html>
