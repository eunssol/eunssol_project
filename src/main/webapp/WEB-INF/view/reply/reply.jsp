<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, user-scalable=yes">
    <meta name="format-detection" content="telephone=no, address=no, email=no">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <title>게시판 등록</title>
    <%@ include file="/WEB-INF/view/include/head.jsp" %>
    <script>
    	function goSave() {
    		oEditors.getById['content'].exec("UPDATE_CONTENTS_FIELD",[]);
    		$("#frm").submit();
    	}
    	var oEditors;
    	$(function(){
    		oEditors = setEditor("content"); // 반드시 id 작성
    	});
    	

    	
    </script>
</head>
<body>
    <div class="wrap">
        <%@ include file="/WEB-INF/view/include/top.jsp" %>
        <div class="sub">
            <div class="size">
                <h3 class="sub_title">게시판</h3>
    
                <div class="bbs">
                <form method="post" name="frm" id="frm" action="insertReply.do" enctype="multipart/form-data" >
                <input type="hidden" name="user_no" value="${userInfo.no}">
                <input type="hidden" name="gno" value="${gno}">  <!-- 값을 가져오려면 모델에 add -->  <!-- replyVo.gno 해도 되고 param.gno해도 돼 detail 에서 파라미터로 받아와야해서) -->
                <input type="hidden" name="ono" value="${ono}">
                <input type="hidden" name="nested" value="${nested}">
                    <table class="board_write">
                        <tbody>
                        <tr>
                            <th>제목</th>
                            <td>
                                <input type="text" name="title" id="title" class="wid100" value=""/>
                            </td>
                        </tr>
                        <tr>
                            <th>내용</th>
                            <td>
                                <textarea name="content" id="content" style="width:100%;"></textarea>
                            </td>
                        </tr>
                        <tr>
                        	<th>파일첨부</th>
                        	<td>
                        		<input type="file" name="file">
                        	</td>
                        </tr>
                        </tbody>
                    </table>
                    <div class="btnSet"  style="text-align:right;">
                        <a class="btn" href="javascript:goSave();">저장 </a>
                    </div>
                    </form>
                </div>
            </div>
        </div>
        <%@ include file="/WEB-INF/view/include/bottom.jsp" %>
           <%@ include file="/WEB-INF/view/include/quick.jsp" %>
    </div>
</body>
</html>