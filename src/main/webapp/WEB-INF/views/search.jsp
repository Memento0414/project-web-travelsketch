<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/views/commons/top.jsp"%>

<style>
table {
	border-collapse: collapse;
	width: 100%;
	margin: 20px 0;
	font-size: 14px;
}

td, th {
	border: 1px solid #ddd;
	text-align: center;
	padding: 8px;
}

th {
	background-color: #f2f2f2;
}

tr:nth-child(even) {
	background-color: #f9f9f9;
}

tr:hover {
	background-color: #f5f5f5;
}

.search-searchbox {
	background-color: rgba(255, 241, 193, 0.9);
	padding: 8px;
	margin: auto;
	width: 100%;
}
</style>

<div class="ds-box hidden">
	<div id="ds-overlay"></div>
	<div id="ds-content">
		<div class="ds-btn-ctr quit-button-position">
			<button class="close-box-btn quit-button">
				<i class="fa-sharp fa-regular fa-circle-xmark"></i>
			</button>
		</div>
	</div>
</div>
<%--상세검색 페이지  --%>
<%-- 메인페이지 --%>
<div class="search-searchbox">
	<div class="search-box-rage">
		<form class="search-position" action="/search" method="get">
			<div class="search-box-inside">
				<%--도 영역 --%>
				<select name="doNm" id="do" class="select-deco">
					<option value="" ${param.doNm eq '' ? 'selected' :  ''}>전국</option>
					<c:forEach items="${doList}" var="obj">
						<option value="${obj}" ${obj eq param.doNm ? 'selected' : '' }>${obj}</option>
					</c:forEach>
				</select>
				<%--도영역 끝 --%>
				<%--시,군,구 영역 --%>
				<select name="sigunguNm" data-group="" class="city select-deco">
					<option value="" ${param.sigunguNm eq '' ? 'selected' :  ''}>시/군/구</option>
				</select>
				<%--서울 --%>
				<select name="sigunguNm" data-group="서울시" class="city select-deco">
					<c:forEach items="${seoul }" var="seoul">
						<option value="${seoul}"
							${seoul eq parmam.sigunguNm ? 'selected' : ''}>${seoul }</option>
					</c:forEach>
				</select>
				<%--서울 끝--%>

				<%--부산 --%>
				<select name="sigunguNm" data-group="부산시" class="city select-deco">
					<c:forEach items="${busan }" var="busan">
						<option value="${busan}"
							${busan eq parmam.sigunguNm ? 'selected' : ''}>${busan }</option>
					</c:forEach>
				</select>
				<%--부산 끝--%>

				<%--대구 --%>
				<select name="sigunguNm" data-group="대구시" class="city select-deco">
					<c:forEach items="${daegu }" var="daegu">
						<option value="${daegu}"
							${daegu eq parmam.sigunguNm ? 'selected' : ''}>${daegu }</option>
					</c:forEach>
				</select>
				<%--대구 끝--%>
				<%--인천 --%>
				<select name="sigunguNm" data-group="인천시" class="city select-deco">
					<c:forEach items="${incheon }" var="incheon">
						<option value="${incheon}"
							${incheon eq parmam.sigunguNm ? 'selected' : ''}>${incheon }</option>
					</c:forEach>
				</select>
				<%--인천 끝--%>
				<%--광주 --%>
				<select name="sigunguNm" data-group="광주시" class="city select-deco">
					<c:forEach items="${gwangju }" var="gwangju">
						<option value="${gwangju}"
							${gwangju eq parmam.sigunguNm ? 'selected' : ''}>${gwangju }</option>
					</c:forEach>
				</select>
				<%--광주 끝--%>

				<%--대전 --%>
				<select name="sigunguNm" data-group="대전시" class="city select-deco">
					<c:forEach items="${daejeon }" var="daejeon">
						<option value="${daejeon}"
							${daejeon eq parmam.sigunguNm ? 'selected' : ''}>${daejeon }</option>
					</c:forEach>
				</select>
				<%--대전 끝--%>
				<%--울산 --%>
				<select name="sigunguNm" data-group="울산시" class="city select-deco">
					<c:forEach items="${ulsan }" var="ulsan">
						<option value="${ulsan}"
							${ulsan eq parmam.sigunguNm ? 'selected' : ''}>${ulsan }</option>
					</c:forEach>
				</select>
				<%--울산 끝--%>
				<%--세종 --%>
				<select name="sigunguNm" data-group="세종시" class="city select-deco">
					<c:forEach items="${sejong }" var="sejong">
						<option value="${sejong}"
							${sejong eq parmam.sigunguNm ? 'selected' : ''}>${sejong }</option>
					</c:forEach>
				</select>
				<%--세종 끝 --%>
				<%--경기도 --%>
				<select name="sigunguNm" data-group="경기도" class="city select-deco">
					<c:forEach items="${gyeonggi }" var="gyeonggi">
						<option value="${gyeonggi}"
							${gyeonggi eq parmam.sigunguNm ? 'selected' : ''}>${gyeonggi }</option>
					</c:forEach>
				</select>
				<%--경기도 끝--%>
				<%--제주 --%>
				<select name="sigunguNm" data-group="제주도" class="city select-deco">
					<c:forEach items="${jeju }" var="jeju">
						<option value="${jeju}"
							${jeju eq parmam.sigunguNm ? 'selected' : ''}>${jeju }</option>
					</c:forEach>
				</select>
				<%--제주 끝--%>
				<%--강원도 --%>
				<select name="sigunguNm" data-group="강원도" class="city select-deco">
					<c:forEach items="${gangwon }" var="gangwon">
						<option value="${gangwon}"
							${gangwon eq parmam.sigunguNm ? 'selected' : ''}>${gangwon }</option>
					</c:forEach>
				</select>
				<%--강원도 끝--%>
				<%--충청복도 --%>
				<select name="sigunguNm" data-group="충청북도" class="city select-deco">
					<c:forEach items="${chungbuk }" var="chungbuk">
						<option value="${chungbuk}"
							${chungbuk eq parmam.sigunguNm ? 'selected' : ''}>${chungbuk }</option>
					</c:forEach>
				</select>
				<%--충청복도 끝--%>
				<%--충청남도 --%>
				<select name="sigunguNm" data-group="충청남도" class="city select-deco">
					<c:forEach items="${chungnam }" var="chungnam">
						<option value="${chungnam}"
							${chungnam eq parmam.sigunguNm ? 'selected' : ''}>${chungnam }</option>
					</c:forEach>
				</select>
				<%--충청남도 끝--%>
				<%--전라북도 --%>
				<select name="sigunguNm" data-group="전라북도" class="city select-deco">
					<c:forEach items="${jeonbuk }" var="jeonbuk">
						<option value="${jeonbuk}"
							${jeonbuk eq parmam.sigunguNm ? 'selected' : ''}>${jeonbuk }</option>
					</c:forEach>
				</select>
				<%--전라북도 끝--%>
				<%--전라남도 --%>
				<select name="sigunguNm" data-group="전라남도" class="city select-deco">
					<c:forEach items="${jeonnam }" var="jeonnam">
						<option value="${jeonnam}"
							${jeonnam eq parmam.sigunguNm ? 'selected' : ''}>${jeonnam }</option>
					</c:forEach>
				</select>
				<%--전라남도 끝--%>
				<%--경상북도 --%>
				<select name="sigunguNm" data-group="경상북도" class="city select-deco">
					<c:forEach items="${gyeongbuk }" var="gyeongbuk">
						<option value="${gyeongbuk}"
							${gyeongbuk eq parmam.sigunguNm ? 'selected' : ''}>${gyeongbuk }</option>
					</c:forEach>
				</select>
				<%--경상북도 끝--%>
				<%--경상남도 --%>
				<select name="sigunguNm" data-group="경상남도" class="city select-deco">
					<c:forEach items="${gyeongnam }" var="gyeongnam">
						<option value="${gyeongnam}"
							${gyeongnam eq parmam.sigunguNm ? 'selected' : ''}>${gyeongnam }</option>
					</c:forEach>
				</select>
				<%--경상남도 끝--%>
				<%--시,군,구 영역 끝 --%>
				<select name="lctCl" class="select-deco">
					<option value="" ${param.lctCl eq '' ? 'selected' :  ''}>테마별</option>
					<c:forEach items="${themaList }" var="thema">
						<option value="${thema }"
							${thema eq param.lctCl ? 'selected' : ''}>${thema}</option>
					</c:forEach>
				</select>
			</div>
			<div class="index-search-position">
				<button class="index-search-button" type="submit">검색하기</button>
			</div>
		</form>
	</div>
</div>
<div style="text-align: center; padding: 8px;">
	<c:choose>
		<c:when test="${total ne 0 }">
			${total }개의 정보가 확인됩니다.
		</c:when>
		<c:otherwise>
			조회하신 정보가 없습니다. 다시 검색해주세요.
		</c:otherwise>
	</c:choose>
</div>
<%--컴팽장 리스트 영역 --%>
<div style="display: flex; justify-content: center; padding: 8px; flex:1; align-items: flex-start;">

	<table>
		<c:forEach items="${datas}" var="list">
			<tr onclick="location.href='/detail?contentId=${list.contentId}'">
				<td><img
					src="${not empty list.firstImageUrl ? list.firstImageUrl :'/resource/image/tent.png'}"
					style="height: 120px; width: 180px"
					onerror="this.onerror=null; this.src='/resource/image/tent.png';" /></td>
				<td>${list.facltNm.replace("(주)", " ")}</td>
				<td>${not empty list.lineIntro ? list.lineIntro : '-' }</td>
				<td>${list.addr1}</td>
			</tr>
		</c:forEach>
	</table>
</div>

<%-- 페이지 처리영역 --%>
<div style="text-align: center; font-size: 20px;">
	<c:set var="currentPage"
		value="${empty param.pageNo ? 1: param.pageNo }" />
	<!-- 이전 버튼 -->
	<c:if test="${existPrev }">
		<c:url value="/search" var="target">
			<c:param name="pageNo" value="${start-1}" />
			<%--도 파람처리 --%>
			<c:if test="${not empty paramValues.doNm}">
				<c:forEach items="${paramValues.doNm}" var="doChk">
					<c:param name="doNm" value="${doChk}" />
				</c:forEach>
			</c:if>
			<%--시군구 파람처리 --%>
			<c:if test="${not empty paramValues.sigunguNm}">
				<c:forEach items="${paramValues.sigunguNm}" var="siChk">
					<c:param name="sigunguNm" value="${siChk}" />
				</c:forEach>
			</c:if>
			<%--입지처리 --%>
			<c:if test="${not empty paramValues.lctCl}">
				<c:forEach items="${paramValues.lctCl}" var="theChk">
					<c:param name="lctCl" value="${theChk}" />
				</c:forEach>
			</c:if>
		</c:url>
		<a href="${target }">&lt;</a>
	</c:if>

	<!-- 전체페이지 불러오기 -->
	<c:forEach var="p" begin="${start }" end="${last }">
		<c:url value="/search" var="target">
			<c:param name="pageNo" value="${p}" />
			<%--도 파람처리 --%>
			<c:if test="${not empty paramValues.doNm}">
				<c:forEach items="${paramValues.doNm}" var="doChk">
					<c:param name="doNm" value="${doChk}" />
				</c:forEach>
			</c:if>
			<%--시군구 파람처리 --%>
			<c:if test="${not empty paramValues.sigunguNm}">
				<c:forEach items="${paramValues.sigunguNm}" var="siChk">
					<c:param name="sigunguNm" value="${siChk}" />
				</c:forEach>
			</c:if>
			<%--입지처리 --%>
			<c:if test="${not empty paramValues.lctCl}">
				<c:forEach items="${paramValues.lctCl}" var="theChk">
					<c:param name="lctCl" value="${theChk}" />
				</c:forEach>
			</c:if>

		</c:url>
		<c:choose>
			<c:when test="${p eq currentPage }">
				<b style="color: #05BFDB;">${p }</b>
			</c:when>
			<c:otherwise>
				<a href="${target }">${p }</a>
			</c:otherwise>
		</c:choose>
	</c:forEach>

	<!--다음버튼영역  -->
	<c:if test="${existNext }">
		<c:url value="/search" var="target">
			<c:param name="pageNo" value="${last+1}" />
			<%--도 파람처리 --%>
			<c:if test="${not empty paramValues.doNm}">
				<c:forEach items="${paramValues.doNm}" var="doChk">
					<c:param name="doNm" value="${doChk}" />
				</c:forEach>
			</c:if>
			<%--시군구 파람처리 --%>
			<c:if test="${not empty paramValues.sigunguNm}">
				<c:forEach items="${paramValues.sigunguNm}" var="siChk">
					<c:param name="sigunguNm" value="${siChk}" />
				</c:forEach>
			</c:if>
			<%--입지처리 --%>
			<c:if test="${not empty paramValues.lctCl}">
				<c:forEach items="${paramValues.lctCl}" var="theChk">
					<c:param name="lctCl" value="${theChk}" />
				</c:forEach>
			</c:if>
		</c:url>
		<a href="${target}">&gt;</a>
	</c:if>
</div>

<script>
	//do 영역의 select 태그에 onchange 이벤트 추가
	document.querySelector("#do").onchange = function(evt) {
		// 선택한 도시값 가져오기
		const selectedCity = evt.target.value;

		// 시, 군, 구 영역의 select 태그들을 찾아서 처리
		document.querySelectorAll(".city").forEach(function(one) {
			if (one.dataset.group != selectedCity) {
				one.name = "";
				one.style.display = "none";
			} else {
				one.name = "sigunguNm";
				one.style.display = "";
			}
		});
	};
	//do 영역의 select 태그에 change 이벤트 발생시키기
	document.querySelector("#do").dispatchEvent(new Event("change"));

	// 시, 군, 구 영역의 select 태그에 값 넣어주기
	document.querySelectorAll(".city").forEach(function(one) {
		if (one.dataset.group === document.querySelector("#do").value) {
			one.name = "sigunguNm";
			one.value = "${param.sigunguNm}";
		} else {
			one.style.display = "none";
		}
	});
</script>
<script>
	const searchHidden = document.querySelector(".back")
	const openBtn = document.querySelector(".detail-search");
	const box = document.querySelector(".ds-box");
	const overlay = box.querySelector("#ds-overlay");
	const closeBtn = box.querySelector(".close-box-btn");
	//버튼 클릭 팝업창 열리는 작업(검색창과 버튼이 팝업창이 뜨는 사라지게) 고 닫았을 때 (상세보기 버튼과 검색창 다시 복구)
	const togglePopup = function() {
		box.classList.toggle("hidden");
		searchHidden.classList.toggle("hidden");
		openBtn.classList.toggle("hidden");
	}

	overlay.addEventListener("click", togglePopup);
	closeBtn.addEventListener("click", togglePopup);
	openBtn.addEventListener("click", togglePopup);
	openBtn.addEventListener("change", togglePopup);
</script>
<%@ include file="/WEB-INF/views/commons/bottom.jsp"%>
