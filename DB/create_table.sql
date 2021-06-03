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
 
INSERT INTO notice_1 values
(1, "필독[EBS직업] 평생교육바우처 수강 지원 안내", ""),
(2, "EBS VOD/AOD 무료 이용 안내", ""),
(3, "2021년도 EBS 직원 공개채용 공고", ""),
(4, "'EBS 구독과 함께! 다른 그림 찾기 이벤트' 당첨 안내", ""),
(5, "'EBS 구독과 함께! 다른 그림 찾기 이벤트' 당첨자 발표 지연 안내", "");

--
-- notice_2 테이블
CREATE TABLE notice_2 (
  id int not null,
  notice varchar(50),
  link varchar(100),
  primary key(id)
  );
  
INSERT INTO notice_2 values
(1, "필독2021년 봄 편성 개편 안내", ""),
(2, "2021 설 특선영화/애니메이션 안내", ""),
(3, "[EBS 특집] 프로그램 안내", ""),
(4, "[다큐프라임] 신규 라인업 안내", ""),
(5, "2020 추석 특선 프로그램 안내", "");

--
-- notice_3 테이블
CREATE TABLE notice_3 (
  id int not null,
  notice varchar(80),
  link varchar(100),
  primary key(id)
  );

INSERT INTO notice_3 values
(1, "2021년 협찬 프로그램 [성인문해력 교육, 특집(영월장릉과 단종)] 외주제작사 공모", ""),
(2, "[재공고] 2022~23년도 EBS공인중개사 시험대비강좌 방송 및 온라인 강의용 교재 출판 업체 선정", ""),
(3, "[재공고] EBS 공사창립 20주년 사사 편찬 사업 대행 용역 입찰공고", ""),
(4, "계약직원 공개채용 공고", ""),
(5, "2021년 [특집 및 파일럿(자유주제)] 외주제작사 공모 결과 안내", "");
