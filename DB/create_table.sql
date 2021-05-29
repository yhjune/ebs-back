-- category 테이블

CREATE TABLE category (
    id int not null,
    name varchar(20) not null,
    link varchar(100),
    primary key(id)
    );

INSERT INTO category values 
(1, "초등", "https://primary.ebs.co.kr/main/primary"),
(2, "초등영어", "http://chomokdal.ebslang.co.kr/main.ebs?refu=http://www.ebs.co.kr/"),
(3, "중학", "https://mid.ebs.co.kr/main/middle"),
(4, "중학프리미엄", "https://mid.ebs.co.kr/premium/middle/index"),
(5, "고교 EBSi", "https://www.ebsi.co.kr/ebs/pot/poti/main.ebs"),
(6, "공무원", "https://www.ebs.co.kr/public"),
(7, "자격증", "https://www.ebs.co.kr/pass"),
(8, "공인중개사", "https://www.ebs.co.kr/land"),
(9, "외국어/토익", "http://www.ebslang.co.kr/main.ebs?"),
(10, "EBSmath", "https://www.ebsmath.co.kr/"),
(11, "EBSe", "https://www.ebse.co.kr/apps/main/main.do"),
(12, "이솦", "https://www.ebssw.kr/");

-- 
-- contents 테이블 (link는 안 넣었습니다!)

CREATE TABLE contents (
  id int not null,
  name varchar(20) not null,
  description varchar(30),
  link varchar(100),
  primary key(id)
  );
  
  INSERT INTO contents values
  (1, "오디오 어학당", "오디오로 배우는 외국어", ""),
  (2, "애니키즈", "어린이가 좋아하는 콘텐츠", ""),
  (3, "클래스 e", "톱 클래스 지식강연" ,""),
  (4, "다큐프라임", "EBS 명품 다큐멘터리" ,""),
  (5, "세상의 모든 기행", "각양각색 다양한 체험기", ""),
  (6, "지식채널 e", "5분, 세상과의 소통", ""),
  (7, "EBR", "비즈니스도 교육이다", ""),
  (8, "D BOX", "다큐멘터리의 모든 것!", ""),
  (9, "고교 EBS 북고잉", "배송비 포함 3권에 9,900원", ""),
  (10, "명의", "최고의 명의를 만나다", "");
  
--
-- notice_1 테이블
CREATE TABLE notice_1 (
  id int not null,
  notice varchar(50),
  link varchar(100),
  primary key(id)
  );
 
--
-- notice_2 테이블
CREATE TABLE notice_2 (
  id int not null,
  notice varchar(50),
  link varchar(100),
  primary key(id)
  );
  
--
-- notice_3 테이블
CREATE TABLE notice_3 (
  id int not null,
  notice varchar(50),
  link varchar(100),
  primary key(id)
  );
