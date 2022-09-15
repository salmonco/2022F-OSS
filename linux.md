## Linux Command

### 2022/09/08

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

