﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/Teach.master" StylesheetTheme="Teacher"  Validaterequest="false" AutoEventWireup="true" CodeFile="softadd.aspx.cs" Inherits="Teacher_softadd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content" Runat="Server">
  <div   class="placehold">
    <div  class="softdiv">
        &nbsp;&nbsp; 资源名称：<asp:TextBox 
            ID="Texttitle" runat="server"  Width="500px"  SkinID="TextBoxNormal"></asp:TextBox>
        <br />
&nbsp;&nbsp; 资源分类：<asp:DropDownList ID="ddlcategory" runat="server">
        </asp:DropDownList>
&nbsp;资源属性：<asp:DropDownList ID="DDLclass" runat="server" Font-Size="9pt" Width="60px">
            <asp:ListItem Selected="True">教程</asp:ListItem>
            <asp:ListItem>微课</asp:ListItem>
            <asp:ListItem>资料</asp:ListItem>
            <asp:ListItem>软件</asp:ListItem>
            <asp:ListItem>游戏</asp:ListItem>
        </asp:DropDownList>
        &nbsp;学分限制：<asp:DropDownList ID="DDLopen" runat="server" Font-Size="9pt">
            <asp:ListItem Value="10">A</asp:ListItem>
            <asp:ListItem Value="8">B</asp:ListItem>
            <asp:ListItem Value="6">C</asp:ListItem>
            <asp:ListItem Value="4">D</asp:ListItem>
            <asp:ListItem Value="2">E</asp:ListItem>
        </asp:DropDownList>
        &nbsp;<asp:CheckBox ID="CheckBoxFhide" runat="server" Text="是否隐藏" />
        &nbsp;<asp:CheckBox ID="CheckBoxFhid" runat="server" Text="是否共享" />
        </div>
    <div   class="softcontent" >
           <script charset="utf-8" src="../kindeditor/kindeditor-min.js"></script>
		<script charset="utf-8" src="../kindeditor/lang/zh_CN.js"></script>
		<script>
		    var editor;
            var cid= '-1';
            var ty="Soft";
            var upjs= '../kindeditor/aspnet/upload_json.aspx?Cid='+cid+'&Ty='+ty;
            var fmjs='../kindeditor/aspnet/file_manager_json.aspx?Cid='+cid+'&Ty='+ty;
		    KindEditor.ready(function (K) {
		        editor = K.create('textarea[name="textareaItem"]', {
		            resizeType: 1,
		            newlineTag: "br",                    
				uploadJson : upjs,
				fileManagerJson : fmjs,
				allowFileManager: true,
				filterMode: false	            
		        });
		    });
		</script>
    <textarea  name="textareaItem" style="width: 780px; height:300px;" ></textarea>
<br />              
    </div>
     <div  class="softcenter">
              上传可限制资源：&nbsp; <asp:FileUpload ID="FUsoft" runat="server" 
                        BorderColor="#DBDBDB" BorderWidth="1px" Font-Size="9pt" 
                  BorderStyle="Solid" />
               <br />
               <asp:Label ID="Labelmsg" runat="server" ></asp:Label>
              <br />
         <br />
              <asp:Button ID="Btnadd" runat="server"  Text="添加" OnClick="Btnadd_Click"  
                  SkinID="BtnNormal" />
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:Button ID="Btnreturn" runat="server"  Text="返回" OnClick="Btnreturn_Click"  
                  SkinID="BtnNormal" />
               <br />
               <br />         
         </div>
         注明：资源属性为教程和微课，则学生在浏览学习时能提交自学作品！<br />           
        </div>
</asp:Content>

