use hr_join;
select @autocommit;
set @autocommit = 0 ;


use hr;
select * from emp;
delete from emp;
rollback;


create database mydb;

/* *********************************************************************
INSERT 문 - 행 추가
구문
 - 한행추가 :
   - INSERT INTO 테이블명 (컬럼 [, 컬럼]) VALUES (값 [, 값[])
   - 모든 컬럼에 값을 넣을 경우 컬럼 지정구문은 생략 할 수 있다.

************************************************************************ */
use hr_join;

insert into emp values (500, '이순신', 'IT_PROG', 120, '2020-10-20', 50000.99, null, 30);
select * from emp order by emp_id desc;
rollback;



/* *********************************************************************
UPDATE : 테이블의 컬럼의 값을 수정
UPDATE 테이블명
SET    변경할 컬럼 = 변경할 값  [, 변경할 컬럼 = 변경할 값]
[WHERE 제약조건]

 - UPDATE: 변경할 테이블 지정
 - SET: 변경할 컬럼과 값을 지정
 - WHERE: 변경할 행을 선택. 
************************************************************************ */

-- 직원 ID가 200인 직원의 급여를 5000으로 변경


-- 직원 ID가 200인 직원의 급여를 10% 인상한 값으로 변경.


-- 부서 ID가 100인 직원의 커미션 비율을 null 로 변경.


--  부서 ID가 100인 직원들의 급여를 100% 인상



-- 부서 ID가 100인 직원의 커미션 비율을 0.2로 salary는 3000을 더한 값으로, 상사_id는 100 변경.




--  IT 부서의 직원들의 급여를 3배 인상



-- EMP 테이블의 모든 데이터를 MGR_ID는 NULL로 HIRE_DATE 는 현재일시로 COMM_PCT는 0.5로 수정.



/* *********************************************************************
DELETE : 테이블의 행을 삭제
구문 
 - DELETE FROM 테이블명 [WHERE 제약조건]
   - WHERE: 삭제할 행을 선택
************************************************************************ */

-- 전체 행 삭제


-- 부서테이블에서 부서_ID가 200인 부서 삭제


-- 부서테이블에서 부서_ID가 10인 부서 삭제


-- 부서 ID가 없는 직원들을 삭제


-- 담당 업무(emp.job_id)가 'SA_MAN'이고 급여(emp.salary) 가 12000 미만인 직원들을 삭제.


-- comm_pct 가 null이고 job_id 가 IT_PROG인 직원들을 삭제
select * from emp where comm_pct is null and job_id = 'it_prog';
delete from emp  where comm_pct is null and job_id = 'it_prog';

rollback;
