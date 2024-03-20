-- 극장 샘플 DB 삭제 -- 
DELETE FROM theater;

-- 극장 샘플 DB 추가-- 
INSERT INTO theater(tno, tname, tnameEn, taddr, tintro, tcall)
   VALUES (1, '전주극장', 'JeonJuTheater', '전라북도 전주시 완산구 용머리로 45', '전주시 dflix 극장입니다.', '063-000-0001');
INSERT INTO theater(tno, tname, tnameEn, taddr, tintro, tcall)
   VALUES (2, '익산극장', 'IkSanTheater', '전라북도 익산시 무왕로 1052', '익산시 dflix 극장입니다.', '063-000-0002');

select * from dflix.theater;

-- 상영관정보 샘플 DB 추가 --
INSERT INTO screenhall(shallno, shallno, shallType, shallLocation, tno)
   VALUES (1, '2D', '2층', '');

-- 상영관정보 샘플 DB 삭제 --
delete from screenhall;

SELECT * FROM dflix.screenhall;