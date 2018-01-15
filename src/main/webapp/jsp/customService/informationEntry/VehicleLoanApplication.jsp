<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>客户信息录入</title>
<!--当前进度：客 服 服 务 系 统>车贷审请  -->
</head>
<body>
   <script type="text/javascript">
       var i=1;
       $(function(){
    	   /* setInterval("startRequest()", 1000); */
    	   $("#back").click(function(){
    		   $("#viewDiv").panel({
   				iconCls : "icon-add",
   				collapsible : true,
   				minimizable : true,
   				maximizable : true,
   				closable : true,
   				href : "jsp/customService/informationEntry/vehicleLoanManagement.jsp"
   			});
    	   });
    	  
    	/*    $("addContractor"+i).mouseover(function(){ */
    		   /* console.log("mouseover"+i); */
    		   console.log("mouseover"+i);
    		   $("#addContractor"+i).click(function(e){
        		   var str="<table class='table1' border='1'><caption class='caption1'>联系人信息</caption>"
        		   +"<tr class='tr1'><td class='td1'><label>姓名</label></td><td class='td1'><input type='text'></td>"
        		   +"<td class='td1'><label>联系人电话</label></td><td class='td1'><input type='text'></td></tr>"
        		   +"<tr class='tr1'>"
        		   +"<td class='td1'><label>联系人类型</label></td>"
        		   +"<td class='td1'><input type='text'></td>"
        		   +"<td class='td1'><label>和本人关系</label></td>"
        		   +"<td><select id='relation' class='select1' name='relations'>"
    				+"<option value='0'>亲属</option><option value='1'>朋友</option></select></td></tr>"
    				+"<tr class='tr1'><td class='td1'><label>单位名称</label></td><td class='td1'><input type='text'></td>"
    				+"<td class='td1'>&nbsp;</td><td class='td1'>&nbsp;</td></tr>"
    				+"<tr class='tr1'><td class='td1'><label>家庭地址/单位地址</label></td>"
    				+"<td class='td1'><input type='text'></td><td class='td1'>&nbsp;</td><td class='td1'>&nbsp;</td></tr>"
    			    +"<tr class='tr1'><td class='td1' colspan='4'><button id='addContractor"+i+"'>增加</button>"
    			    +"<button id='cancelContractor"+i+"'>删除</button></td></tr></table>"
    			    +"<table id='addTable' class='table1' border='1'></table>";
        		   $("#div1").append(str);
        		  
            	   console.log("==================="+i); 
            	   
            	   e.preventDefault();
            	   
        	   });
    	/*    }); */
       });
      /*  function startRequest(){
    		   console.log("startRequest"+i);
	   } */
   </script>
    <div id="dum" class="easyui-panel" style="width: 100%; text-align: center">
    <div><label>回退意见   </label><input style="width:250px;" type="text"></div>
         <form id="addInfo" method="post">
              <table class="table1" border="1">
				<caption class="caption1">客户基本信息</caption>
				<tr class="tr1">
					<td class="td1"><label>申请人姓名</label><span style="color:red">*</span></td>
					<td class="td1"><input id="name" type="text"></td>
					<td class="td1"><label>身份证号码</label><span style="color:red">*</span></td>
					<td class="td1"><input id="identity" type="text"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>最高学历</label></td>
					<td class="td1"><select name="">
					      <option value="0" selected>硕士及以下</option>
					      <option value="1">博士</option>
					</select></td>
					<td class="td1"><label>申请人手机号码</label><span style="color:red">*</span></td>
					<td class="td1"><input id="phone" type="text"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>户籍地址</label><span style="color:red">*</span></td>
					<td class="td1"><input  id="address" type="text"></td>
					<td class="td1"><label>申请人电话号码</label></td>
					<td class="td1"><input type="text"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>婚姻状态</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1"><label>有无子女</label></td>
					<td class="td1"><input type="text"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>房产状态</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1"><label>共同居住者</label></td>
					<td><select class="select1" id="partner" name="partners">
							<option value="0">配偶及其子女</option>
							<option value="1">独居</option>
					</select>
				</tr>
				<tr>
					<td class="td1"><label>现住址</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1">&nbsp;</td>
					<td class="td1">&nbsp;</td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>客户类型</label></td>
					<td class="td1">
                        <select name="">
                           <option value="0">工商人士</option>
                           <option value="1">学术研究</option>
                           <option value="2">待业</option>
                        </select> 
                     </td>
					<td class="td1">&nbsp;</td>
					<td class="td1">&nbsp;</td>
				</tr>
			</table>
			
			
			<table class="table1" border="1">
				<caption class="caption1">工作信息</caption>
				<tr class="tr1">
					<td class="td1"><label>工作单位全称</label><span style="color:red">*</span></td>
					<td class="td1"><input id="company" type="text"></td>
					<td class="td1">&nbsp;</td>
					<td class="td1">&nbsp;</td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>工作单位地址</label><span style="color:red">*</span></td>
					<td class="td1"><input  id="cAddress" type="text"></td>
					<td class="td1">&nbsp;</td>
					<td class="td1">&nbsp;</td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>单位电话</label><span style="color:red">*</span></td>
					<td class="td1"><input id="unitPhone" type="text"></td>
					<td class="td1"><label>邮政编码</label></td>
					<td class="td1"><input type="text"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>进入该单位时间</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1"><label>所在部门</label></td>
					<td class="td1"><input type="text"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>担任职务</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1"><label>公司规模</label></td>
					<td class="td1"><input type="text"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>行业类别</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1"><label>单位性质</label><span style="color:red">*</span></td>
					<td class="td1"><select  id="property" class="select1"
						name="unit">
							<option value="0">个体户</option>
							<option value="1">国营公司</option>
							<option value="2">有限责任公司</option>
							<option value="3">股份有限公司</option>
							<option value="4">中外合资公司</option>
							<option value="5">外资公司</option>
					</select></td>
				</tr>
			</table>
			
			<table class="table1" border="1">
				<caption class="caption1">借款需求</caption>
				<tr class="tr1">
					<td class="td1"><label>借款详细用途</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1"><label>月收入</label><span style="color:red">*</span></td>
					<td class="td1"><input id="income" type="text"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>可以承受的月还款额</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1">希望申请最长还款期限</td>
					<td class="td1"><select id="relation" class="select1"
						name="relations">
							<option value="0">1年</option>
							<option value="1">6个月</option>
					</select></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>希望申请借款额度</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1"><label>希望申请借款额度</label></td>
					<td class="td1"><input type="text"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>您从何处得知正合普惠</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1"><label>申请日期</label></td>
					<td class="td1"><input type="text"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>业务员姓名</label><span style="color:red">*</span></td>
					<td class="td1"><input id="businessName" type="text"></td>
					<td class="td1"><label>车贷专员</label><span style="color:red">*</span></td>
					<td class="td1"><input id="businessWorker" type="text"></td>
				</tr>
			</table>
			
			<table class="table1" border="1">
				<caption class="caption1">联系人信息</caption>
				<tr class="tr1">
					<td class="td1"><label>姓名</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1"><label>联系人电话</label></td>
					<td class="td1"><input type="text"></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>联系人类型</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1">和本人关系</td>
					<td class="td1"><select id="relation" class="select1"
						name="relations">
							<option value="0">亲属</option>
							<option value="1">朋友</option>
					</select></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>单位名称</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1">&nbsp;</td>
					<td class="td1">&nbsp;</td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>家庭地址/单位地址</label></td>
					<td class="td1"><input type="text"></td>
					<td class="td1">&nbsp;</td>
					<td class="td1">&nbsp;</td>
				</tr>
				<tr class="tr1">
				   <td class="td1" colspan="4">
				       <button id="addContractor1">增加</button>
				       <button id="cancelContractor1">删除</button>
				   </td>
				</tr>
			</table>
			<!--增加表格1  -->
			<div id="div1"></div>
			<table class="table1" border="1">
				<caption class="caption1">附件列表</caption>
				<tr class="tr1">
					<td class="td1"><label>身份证（原件） </label><span style="color:red;">*</span></td>
					<td class="td1"><input id="originIdentity" type="file">
					<button style="margin-left:20px;" id="upload1">上传</button>
					</td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>车贷申请表</label><span style="color:red;">*</span></td>
					<td class="td1"><input id="applicationForm" type="file">
					<button style="margin-left:20px;" id="upload2">上传</button>
					</td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
				<tr class="tr1">
					<td class="td1"><label>其他附件</label></td>
					<td class="td1"><input type="file">
					    <button style="margin-left:20px;" id="upload3">上传</button>
					</td>
					<td class="td1"><label>附件大小</label></td>
					<td class="td1"><span>&nbsp;</span></td>
				</tr>
			</table>
	       <button id="save">保存</button><span style="margin-left:20px;">&nbsp;</span>
	       <input type="submit" value="提交"><span style="margin-left:20px;">&nbsp;</span>
	       <button id="back">返回</button>
         </form>
    </div>
</body>
</html>