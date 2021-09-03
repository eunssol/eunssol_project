<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

    
         <table class="list">
                    <p><span><strong>�� ${commentVo.totCount }��</strong>  |  ${commentVo.reqPage}/${commentVo.totPage }������</span></p>
                        <caption>�Խ��� ���</caption>
                        <colgroup>
                            <col width="*" />
                            <col width="100px" />
                            <col width="100px" />
                        </colgroup>
                    
                        <tbody>
						<c:if test="${empty list }">
                            <tr>
                                <td class="first" colspan="5">��ϵ� ����� �����ϴ�.</td>
                            </tr>
                        </c:if>
                        <c:forEach var="vo" items="${list }">     
                            <tr>
                                <td class="txt_l">
                                	 ${vo.content }
                                </td>
                                <td class="writer">
                                    ${vo.name }
                                </td>
                                <td class="date"><fmt:formatDate value="${vo.regdate }" pattern="yyyy-MM-dd"/></td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    <div class="pagenate clear">
                        <ul class='paging'>
                        <c:if test="${commentVo.startPage > commentVo.pageRange}">
                        	<li><a href="javascript:getComment(${commentVo.startPage-1 })"><</a></li>
                        </c:if>
                        <c:forEach var="rp" begin="${commentVo.startPage}" end="${commentVo.endPage }">
                            <li><a href='javascript:getComment(${rp})' <c:if test="${rp==commentVo.reqPage }">class='current'</c:if>>${rp }</a></li>
                        </c:forEach>
                        <c:if test="${commentVo.totPage > commentVo.endPage}">
                        	<li><a href="javascript:getComment(${commentVo.endPage+1 })">></a></li>
                        </c:if>
                        </ul> 
                    </div>