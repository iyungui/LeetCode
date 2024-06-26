# 리뷰를 가장 많이 작성한 회원
WITH mostreview AS (
    SELECT
        MEMBER_ID
    FROM
        REST_REVIEW
    GROUP BY
        MEMBER_ID
    ORDER BY
        COUNT(REVIEW_ID) DESC
    LIMIT 1
)

SELECT
    m.MEMBER_NAME,
    r.REVIEW_TEXT,
    DATE_FORMAT(r.REVIEW_DATE, '%Y-%m-%d') AS REVIEW_DATE
FROM
    MEMBER_PROFILE m
INNER JOIN
    REST_REVIEW r USING(MEMBER_ID)
JOIN
    mostreview ON m.MEMBER_ID = mostreview.MEMBER_ID
ORDER BY
    REVIEW_DATE ASC, REVIEW_TEXT ASC;
    
    