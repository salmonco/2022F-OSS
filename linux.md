## Linux Command

### 2022/09/01

- git-scm 들어가서 git 설치
- git bash 설치하면 MINGW라는 아주 작은 리눅스가 설치됨
- ssh oss119@git.ajou.ac.kr
- ssh oss119@ssh.ajousw.kr
- dkwneo1234@..!!
- passwd : 비밀번호 바꾸기
- ls : 디렉토리 목록 확인
- ls -al
- mkdir : 디렉토리 생성
- cd : 디렉토리 변경
- vi hello.c
- cc hello.c
- 편집모드에서 나가려면 esc
- echo 1111
- a.out
- echo $?
- cat 111
- echo $?
- if a.out then;
- vi hello.c
- if a.out; then echo true; fi
- !cc : 컴파일
- if a.out; then echo true; else echo false; fi
- 파일명이 .으로 시작하면 숨김 파일임
- man ls : 메뉴얼보기 디렉토리의 리스트
- -a, --all : .으로 시작하는 엔트리를 무시하지 않고 다 보여줌
- ls -lai
- 컴퓨터 시스템 4가지 구성요소 : 하드웨어 소프트웨어 사람 데이터
- cpu는 아웃풋 장치에다 직접적으로 메모리를 내보낼 수 있다. (x)
- ~~버퍼는 ~~하는 메모리다.
- shell은 리눅스같은 운영체제에서 명령어를 입력하기 위한 인터페이스가 되는 프로그램이다.
- ajou@DESKTOP : 프롬프트
- ls -l : 습관적으로 칠 것
- 3가지 device가 자동으로 만들어짐 : stdin stdout stderr
- 내가 사용하고 있는 shell : bash
- tty : 0번 터미널, 1번 터미널
- !ssh : 가장 최근에 했던 ssh 명령이 실행됨
- who

### 2022/09/08

- tty : 내 터미널 정보
- hostname
- echo sfsfsf > /dev/pty1 : C에서 printf랑 같음
- more
- less
- ssh --help
- scp
- !ssh : 이전에 했던 ssh 명령어 중 가장 최근에 했던 명령어
- ls
- ls -l
- ls -a : .으로 시작하는 파일(숨김 파일)도 보여줌
- ls -al
- cd : current working 디렉토리 위치 변경
- sh
- logout / exit / ctrl + D : 나가기
- pwd : present working directory
- windows의 파일 시스템은 트리 구조가 아님. forest(트리가 여러 개 있는 구조)임
- cd . : 현재 디렉토리로 이동
- cd .. : 상위 디렉토리로 이동
- cd / cd ~ : home 디렉토리로 이동
- mkdir foss_lab
- mkdir lab0908
- cd lab0908
- touch file.txt : 파일 만들기
- ls -al
- d : 디렉토리, - : 일반 파일, 소유자, 파일 크기(byte), 마지막으로 수정된 날짜, 파일명
- ls file.txt file.c : file.txt 파일 찾아지고, file.c 파일 존재하지 않음
- file.c, file.txt 파일은 각각 어느 장치에 출력되었을까? stderr, stdout
- rm : 파일 remove

### 2022/09/15

- df : display file system
- df -h : human readable, size 단위 표시
- whoami : oss119
- root는 슈퍼 유저임. 단, 슈퍼 유저는 모든 permission을 갖는다.
- cd + 엔터 : home 디렉토리로 이동
- chmod 700 . : change mode 다른 사람 못 들어오게
- cd ~oss000 : 다른 사람의 root 디렉토리로 이동 -> Permission denied
- vi hello.c
- cc hello.c
- ls -al
- ./a.out
- grep PATH .* : .으로 시작하는 모든 파일에 PATH라는 키워드를 찾기
- find -name "*.c" -print : 파일 찾기
- !vi  
```c
int a;
fscanf(stdin, "%d", &a);
fprintf(stdout, "STDOUT: Hello Jisu %d \n", a);
fprintf(stderr, "STDERR: Hello Jisu %d \n", a);
return a;
```
- !cc
- ./a.out
- hello.c를 어떻게 되도록 chmod 하세요.
- chmod a-x a.out : 모든 사람에 대해서 execute 빼기
- chmod u+x a.out

- echo "ls -li" > lsli
- history : 내가 했던 명령어 보기
- ls -al
- cat lsli
- lsli : Permission denied
- chmod 700 lsli
- ./lsli
- chmod 600 lsli
- ./lsli : Permission denied
- source lsli : 스크립트 파일을 실행
- bash lsli : 파일을 새로운 shell을 띄워서 실행
- ps : 내가 지금 실행하고 있는 프로세스(작업) 보기
- ps -l : long, 좀 더 길게 보기
- ps -al : 프로세스 다 보기
- ps -ael : 이 컴퓨터에 있는 모든 프로세스 다 보기
- ps -ael | grep bash
- wc : word count
- ps -ael | grep bash | wc : bash란 키워드 찾아서 line 수, word 수, byte 수 표시
- wc a.out -> stdout에 출력됨
- wc b.out : 파일 찾을 수 없음 -> stderr에 출력됨

- last : 접속한 기록 보기
- sleep 3 : 시간(초) 동안 아무것도 안 함
- sleep 5 ; echo 5 seconds passed : 5초 지난 후에 출력

프로세스의 상태
- **run** : 실행되고 있는 상태 (fg / bg)  
- sleep 5 ; echo 5 seconds passed : fg 작업, 프롬프트가 잠시 내려가고 다시 나타남
- sleep 5 & : bg 작업, job 번호, PID 표시
- cpu : 프로세서 / 실행되고 있는 작업 : 프로세스
- **kill** : 죽은 상태
- **suspend (stopped)**

- ls 명령이 cpu에서 바로 실행된다. (x)  
=> 실행되기 전에 메모리로 가져와야 함

- jobs
- fg %2 : fg로 실행, %프로세스번호
- bg %2 : bg로 실행, %프로세스번호

- \{ sleep 5 ; echo 5 sec ; } & : 명령어 묶어서 bg로 실행
- ( sleep 5 ; ps ) : 괄호를 치면 shell이 하나 더 만들어짐

- vi hello.c &
- stdin을 사용하는 프로그램은 bg로 돌릴 수 없다.
- fg : vi editor로 돌아가기

- vi infile
- echo 999 > infile : std input
- a.out < infile
- a.out < infile > outfile
- cat outfile
- ls -l
- ls -l a.out b.out c.out : a.out 파일 찾아지고, 나머지는 안 찾아짐
- ls -l a.out b.out c.out 2> /dev/null : a.out 파일 찾아지고, 나머지 stderr에 출력된 것은 redirection 돼서 /dev/null로 이동

- a.out 0< infile 1> stdout.txt 2> stderr.txt : 각각 파일엔 뭐가 써질까?
- cat hello.c
- cc hello.c

- set -o noclobber : 덮어씌우기 방지
- a.out &> all.txt : cannot overwrite existing file

- a.out >> all.txt : 출력이 밑에 계속 추가됨
- 777
- cat all.txt

- a.out <<< 88888 : 파일 새로 만들어서 쓸 필요 없음

### 2022/09/22

- w : 여기에 로그인하고 있는 사람들이 뭐하고 있는지 보기
- 명령어 ; 명령어 : 이거 끝나고 이거 하기, 꼭 순서가 지켜지진 않음, 앞에 명령이 fail나든 안 나든 상관없이 뒷 명령어 하고 싶을 때
- 명령어 && 명령어 : 앞 명령어가 true면 뒷 명령어 실행
- 명령어 || 명령어 : 앞 명령어가 false면 뒷 명령어 실행

- cp ../lab0915/* . : 현재 디렉토리에 복사
- cd는 shell의 built-in 명령어임
- man ls more
- help cd
- echo $HOME : 어떤 변수의 값을 보여줌
- HOME=/home/course/foss/oss119/foss_lab/lab0922 : 홈 디렉토리 변경
- whereis ls
- whereis cd : 안나옴 -> built-in
- info ls : 엄청 긴 문서
- ls -al 해서 나오는 line에서 두 번째 숫자는 디렉토리의 경우 개수, 링크면 링크하고 있는 것의 개수

- echo jisu bong & : bg 실행
- echo jisu bong \& : &도 출력됨

- echo jisu > name : name이라는 파일에 redirect
- echo bong >> name : 추가
- cat name : jisu\nbong

- echo -n jisu > name
- echo bong >> name
- cat name : jisubong

- echo " -n" : -n 출력하기

- date : time zone은 그 컴퓨터에 설정되어 있는 시간대를 보여줌
- du : disk usage

- cd /dev
- ls -l std*
- 맨 앞에 글자가 l : soft link or symbolic link

- cd /proc
- exec ps : 실행하고 자동으로 로그아웃

- file a.out
- file lsli














