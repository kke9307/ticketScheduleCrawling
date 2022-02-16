/********************************************************
파일명 : cmmnUtil.js
설 명 :  공통 유틸 관련 
수정일     수정자   Version   Function명
------- -------- ---------- -----------
2015.02.28  JSY   1.0      최초생성.
 *********************************************************/
/**
 * AJAX 호출함수.
 * 
 * @param strUrl,
 *            param, callBackFunction(성공 후처리)
 * @returns
 */
function fnDoCallBackAjax(strUrl, param, callBackFunction) {
	jQuery.ajax({
		type : "POST",
		async : false,
		url : strUrl,
		data : param,
		//dataType : "JSON",  옵션이므로 JSON으로 받을게 아니면 안써도 됨
		success : function(data) {
			callBackFunction(data);
		},
		error : function(xhr, status, error) {
			alert("사용자 요청 처리에러 ["+ error +"]");
		}
	});
}
