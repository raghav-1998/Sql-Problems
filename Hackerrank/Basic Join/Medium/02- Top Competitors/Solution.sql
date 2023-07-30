SELECT  H.HACKER_ID, H.NAME FROM HACKERS H,
DIFFICULTY D,CHALLENGES C,SUBMISSIONS S WHERE
H.HACKER_ID=S.HACKER_ID AND C.CHALLENGE_ID=S.CHALLENGE_ID 
AND C.DIFFICULTY_LEVEL=D.DIFFICULTY_LEVEL AND S.SCORE=D.SCORE
GROUP BY H.HACKER_ID,H.NAME
HAVING COUNT(H.HACKER_ID)>1
ORDER BY COUNT(S.SCORE) DESC,H.HACKER_ID;