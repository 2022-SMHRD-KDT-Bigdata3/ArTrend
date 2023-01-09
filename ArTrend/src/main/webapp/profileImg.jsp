<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:choose>
    <c:when test="${dto.user.id eq principal.user.id}">
        <div class="profile-img-wrap story-border" onclick="popup('.modal-image')">
            <form id="userProfileImageForm">
                <input type="file" name="profileImageFile" style="display: none;" id="userProfileImageInput" />
            </form>
            <img class="profile-image" src="/upload/${dto.user.profile_image_url}" onerror="this.src='/images/person.jpeg'" id="userProfileImage" />
        </div>
    </c:when>
    <c:otherwise>
        <div class="profile-img-wrap story-border">
            <img class="profile-image" src="/upload/${dto.user.profile_image_url}" onerror="this.src='/images/person.jpeg'" id="userProfileImage" />
        </div>
    </c:otherwise>
</c:choose>

</body>
</html>