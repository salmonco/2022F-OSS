## Linux Command

### 2022/09/01

- git-scm 들어가서 git 설치
- ssh oss119@git.ajou.ac.kr
- ssh oss119@ssh.ajousw.kr
- 비밀번호 : dkwneo1234@..!!
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
- man ls : 메뉴얼 디렉토리의 리스트
- -a, --all : .으로 시작하는 엔트리를 무시하지 않고 다 보여줌
- ls -lai

- 컴퓨터 시스템 4가지 구성요소 : 하드웨어 소프트웨어 사람 데이터
- cpu는 아웃풋 장치에다 직접적으로 메모리를 내보낼 수 있다. (x)
- ~~버퍼는 ~~하는 메모리다.
- shell은 리눅스같은 운영체제에서 명령어를 입력하기 위한 인터페이스가 되는 프로그램이다.
- ajou@DESKTOP : 프롬프트

- ls -l : 습관적으로 칠 것

- stdin stdout stderr
- 내가 사용하고 있는 shell : bash
- tty : 0번 터미널, 1번 터미널
- !ssh : 가장 최근에 했던 ssh 명령이 실행됨

- who

### 2022/09/08

- tty : 내 터미널 정보
- hostname
- echo sfsfsf > /dev/pty1 : C에서 printf랑 같음
- cd lab0908
- touch file.txt : 파일 만들기
- ls -al
- d : 디렉토리, - : 일반 파일, 소유자, 파일 크기(byte), 마지막으로 수정된 날짜, 파일명
- 맨 앞이 파일의 종류임. d : 디렉토리, - : 일반 파일 / 소유자 / 파일 크기(byte) / 마지막으로 수정된 날짜 / 파일명
- ls file.txt file.c : file.txt 파일 찾아지고, file.c 파일 존재하지 않음
- file.c, file.txt 파일은 각각 어느 장치에 출력되었을까? stderr, stdout
- rm : 파일 remove
- cat /etc/passwd
- cp file.txt file2.txt : copy file.txt destination
- cp -a file.txt file3.txt : 마지막으로 수정된 시간 보존
- mkdir test
- cp file.txt test : test라는 폴더 안에 파일이 복사됨
- 위 화살표 누르면 이전에 했던 명령어 나타남
- cp -r test dir2 : 폴더 복사
- cp -ra test dir2 : 마지막으로 수정된 시간 보존
- cp -rai test dir2 : 덮어쓸 때 물어봄

- ls -al 결과가 이와 같다.
- mv dir2 test_dir 는 어떤 걸 하는 명령어일까?  
-> 디렉토리 dir2의 이름을 test_dir로 변경한다.

- mkdir dir3
- mv dir3 test_dir 는 어떤 걸 하는 명령어일까?  
-> 디렉토리 dir3를 디렉토리 test_dir로 옮긴다.

디렉토리가 옮겨질 땐 시계 안 바뀌는데 파일명 변경하면 시계 바뀐다.

- mv file2.txt file3.txt test 는 어떤 걸 하는 명령어일까?  
-> file2.txt file3.txt 파일을 test 디렉토리로 옮긴다.

- rm file.txt test2.txt 이 실행의 결과가 이렇게 나오는 이유는 무엇일까? : test2.txt No such file or directory  
-> file.txt는 현재 디렉토리에 있어서 삭제됐고, test2.txt는 현재 디렉토리에 없었기 때문에 이런 에러가 난다.

- * : 모든
- cp test_dir/*.txt . : test_dir 디렉토리 안에 있는 모든 txt 파일을 현재 디렉토리로 복사
- rm -ir test_dir : recursive하게 디렉토리 안에 있는 것들의 삭제 여부를 물어봄
- ls -ali : 제일 앞에 숫자가 나타남 (아이노드)

- ln file.txt link1 : 어떤 파일을 가리키는 다른 이름을 만듦 (하드 링크)
- echo sdsdsd > link1
- cat link1 : 파일 보기
- file.txt과 link1는 뭐가 똑같을까? 아이노드
- ls -ali

- ln -s file.txt slink1 : 소프트 링크
- ls -ali
-> slink1의 파일 종류 제일 첫 글자가 l로 바뀜

- cat slink1
- cat file.txt
- ln -s ../../foss_lab/lab0908/file.txt slink2  
-> 상위 디렉토리에 올라가서 foss_lab 디렉토리로 가서 lab0908 디렉토리로 가서 그 안의 file.txt 파일을 slink2로 만든다.
- cat slink2

- ln -s ../../foss_lab/lab0908/file1133.txt slink3 : symbolic 링크는 destination이 없어도 만들어짐
- vi slink3
- cat slink3

- cd ..
- cd ..
- cp -ar foss_lab/ foss_backup
- cd foss_backup
- ls -al  
: slink1 -> file.txt  
: slink2 -> ../../foss_lab/lab0908/file.txt

- slink1은 어떤 파일을 가리키고 있을까?  
-> 현재 디렉토리에 있는 파일

- slink2는 어떤 파일을 가리키고 있을까?  
-> 원본 디렉토리에 있는 파일

- rm -rf foss_backup/ : -rf는 무조건 지움
- man (명령어) : 메뉴얼 보기
- man 5 passwd : 챕터
- pushd / popd : 디렉토리 갔다가 돌아오기

- chmod ugo+w . : 모두에게 현재 디렉토리의 permission 열기
- 파일의 소유자 : u / 그룹 : g / 유저와 그룹이 아닌 사람 : o
- touch 202126879 : 파일 만들기

- ls -ald . 이 파일의 permission에 대해서 설명하세요.  
: . 디렉토리의 소유자인 oss000은 읽을 수도, 쓸 수도,
그 디렉토리로 들어갈 수도 없다.  
: 그 그룹에 속한 사용자들은 읽을 수도, 쓸 수도, 디렉토리 들어갈 수도 있다.  
: oss000과 그룹에 속한 사람이 아닌 나머지 사람들은 read, write만 하고 디렉토리에 들어갈 수는 없다.

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

- (echo aaa ; ps) : shell을 하나 더 띄움
- echo aaa ; ps
- (cd /tmp ; ls) : 거기 갔다가 ls 찍고 원래 디렉토리로 돌아옴

- who | sort
- sort --help
- who | sort -k 4 : 로그인한 시간 컬럼을 기준으로 정렬
- who | wc : 현재 로그인한 사람 수

- cut : 세로 방향으로 cut

- cat < today > yesterday : today에 있는 내용을 yesterday로 복사

- tar : 테이프 아카이브, 백업 받기
- tar cvf lab0922.tar lab0922
- du -sh lab0922 : 44K
- du -sh lab0922.tar : 32K
- man tar
- tar cvzf lab0922-backup.gz lab0922
- du -sh lab0922-backup.gz : 4.0K

- mkdir tmp
- mv lab0922.tar tmp
- cd tmp
- ls -al
- tar xvf lab0922.tar : tar 풀기

- cd lab0922
- diff hello.c ../../lab0922/hello.c

- a.out | b.out : a.out에서 나오는 std output을 pipe 오른쪽에 있는 std input에 연결

- 0< / < : stdin
- 1> / > : stdout
- 2> : stderr
- &> / 2>&1 : stderr을 stdout에 내보내기
- 1>&2 : stdout을 stderr에 내보내기

- ls -l a.out b.out c.out 의 결과가 다음과 같다.  
ls: cannot access 'b.out': No such file or directory  
ls: cannot access 'c.out': No such file or directory  
-rwxr-xr-x 1 oss119 foss 16936  9월 22 10:55 a.out

다음 명령어를 수행한 결과는?
- ls -l a.out b.out c.out | wc  
ls: cannot access 'b.out': No such file or directory  
ls: cannot access 'c.out': No such file or directory  
      1       9      52

- ls -l a.out b.out c.out |& wc  
      3      27     158

- ls -al 했을 때 맨 앞에 글자가 p 인 경우는? name이 있는 pipe

- a.out > pipe

- cat <<< 100

- cat << QQQ
- 100
- 200
- 300
- QQQ
100  
200  
300

### 2022/09/29

bash

- 파일명 file_0000부터 file_9999까지 10000개 파일을 만드는 쉘 스크립트를 짜세요.
- 0200부터 0299까지 파일을 .c에서 .java로 바꾸세요.
- 아까 .java로 된 파일을 다시 .c로 바꾸세요.

- A=Jisu : 변수 만들기
- echo A : A
- echo $A : Jisu

- HOME=/home/course/foss/oss119/foss_lab/lab0929 : 홈 디렉토리 바꾸기
- cd : 홈 디렉토리 변수에 있는 곳으로 감

- vi hello.sh
- i
```
#!/bin/bash
NAME="Jisu"
echo "Hello $NAME!"
echo 'Hello $NAME!'
```
- esc
- :wq
- source hello.sh : 파일 실행
- bash hello.sh : bash 하나 더 띄워짐. sub shell에서 실행
```
Hello Jisu!
Hello $NAME!
```
- cat ~oss119/.profile
- cat ~oss119/.bashrc

- ctrl + D : end of file
- 파일의 맨 끝에는 EOF가 있음
- ctrl + D, exit, logout : EOF를 주는 방법
- bash hello.sh : EOF를 만날 때까지 실행

- #!/bin/bash : 샤-뱅, source나 bash로 실행할 경우 주석처리되지만, chmod로 실행할 경우 샤뱅 명령어가 실행됨
- chmod 770 hello.sh
- ./hello.sh : 파일 실행

- 어떤 명령을 bg로 실행하고 싶은 경우, 명령어 다음에 뭘 넣을까? : &
- stdout과 stderr 출력을 동시에 redirection해서 같은 파일에 넣고 싶은 경우 어떻게 할까? : &>

- ls -l a.out b.out |& wc  # 에러의 갯수를 계산
- history에 코멘트가 보임

- \`cmd` : stdout으로 나와야 할 결과가 string이 됨
- HOME=\`pwd` : pwd 명령어로 나온 결과를 홈 디렉토리로 지정

- touch aaaa bbbb cccc dddd : 파일 만들기
- ls : aaaa  bbbb  cccc  dddd  hello.sh
- FILES=\`ls`
- echo $FILES : aaaa  bbbb  cccc  dddd  hello.sh

- ( cd /tmp; ps ) : bash 하나 더 띄워짐
- && : 앞에 게 true면 뒤에 거 실행, 앞에 게 false면 뒤에 거 실행하지 않음
- || : 앞에 게 true면 뒤에 거 실행하지 않고, 앞에 게 false면 뒤에 거 실행함
- ; : 앞에 게 true든 false든 뒤에 거 실행

- \{ ls ; ps ;} > result : ls와 ps 명령어의 결과를 동시에 둘 다 result에 저장하는 redirection 명령어 (brace 안에 세미콜론 주의)
- cat result

- $? : 이전 명령의 exit status

- echo $(( 100+200 )) : 300, integer만 계산 가능
- 우분투 시스템에서는 실행 함수의 exit 변수가 0부터 255까지의 unsigned character임

- A=\`a.out` : 99 입력하면 STDERR: Hello Jisu 99
- echo $A 하면 무엇이 나올까? : STDOUT: Hello Jisu 99

- bash 함수의 리턴값은 이 프로그램이 오류가 있게 끝났는지 정상적으로 끝났는지를 설명하는 데에만 쓰이지, 어떤 함수의 결과값을 설명하기 위해서 쓰이지 않음. bash 함수의 리턴값은 반드시 stdout으로 내보냄

- $$ : 현재 쉘의 PID 출력

- cp hello.sh args.sh
- vi args.sh
```
#!/bin/bash
NAME="Jisu"
echo "Hello $NAME!"
echo 'Hello $NAME!'
echo "argc: " $# "0: " $0 "1: " $1 "2: " $2
ps
```
- esc
- :wq
- source args.sh 100 200 300
```
Hello Jisu!
Hello $NAME!
argc:  3 0:  -bash 1:  100 2:  200
    PID TTY          TIME CMD
3327190 pts/0    00:00:00 bash
3330964 pts/0    00:00:00 ps
```

- source args.sh "100 200 300" 이렇게 실행했을 때 결과는?
```
Hello Jisu!
Hello $NAME!
argc:  1 0:  -bash 1:  100 200 300 2:
    PID TTY          TIME CMD
3327190 pts/0    00:00:00 bash
3331608 pts/0    00:00:00 ps
```

- echo $- : 쉘 설정값을 보여줌

brace expansion
- vi sum.sh
- ex) 1부터 9999까지 홀수를 더하시오. 3의 배수를 더하시오.
```
#!/bin/bash
sum=0
for a in {1..100..1}
do
        sum=$sum+$a
done
echo $((sum))
```
- \{1..100..1} : 1(부터)..100(까지)..1(씩 건너띄기)
- esc
- :wq
- source sum.sh : 5050
- 1부터 백만까지라 하면 너무 길어서 안 끝남 : ctrl + C
- 긴 문자열을 마지막에 숫자로 바꾸는 대신, 하나하나씩 더할 때 숫자로 바꿔야 함
```
#!/bin/bash
sum=0
for a in {1..100..1}
do
        sum=$(($sum+$a))
done
echo $((sum))
```
- 좀 시간 걸린 다음 끝남. 아까 건 안 끝남

- echo \{0..100} : 0부터 100까지 출력됨
- touch \{0..100} : 파일 100개 만들기
- rm * : 모두 지우기

- echo \{00000..99..2}
- \{00000..99..2} : 00000(원하는 자릿수)..99(까지)..2(스텝)

- echo file_\{0000..999..1}.c : 파일을 바로 만들지 않고 echo 해보기
- touch file_\{0000..999..1}.c : 파일 1000개 만들기

- compgen -A variable : 변수들이 다 나옴

- read LINE
- aaa
- echo $LINE : aaa

globing
- echo *
- echo file_09* : file_09로 시작하는 파일 모두 출력
- echo ???? : 네 글자로 된 파일 모두 찾기
- echo * : .으로 시작하는 파일은 안 나옴
- echo .* : 이렇게 하면 되긴 함

- shopt -s dotglob : shell setting option
- echo * : .으로 시작하는 파일도 나옴

- A=zzz*
- echo $A : zzz*
- shopt -s nullglob : 에러 안 나오게 하기
- A=zzz*
- echo $A : 
- shopt -u nullglob : 옵션 끄기

### 2022/10/06

- A=300 : A라는 변수에 300이라는 스트링 넣기
- echo $A : 300
- bash : 새로 bash 열기
- echo $A : (안 나옴)
- exit : 새로 연 bash에서 나가기
- export A
- bash
- echo $A : 300
- A=999
- echo $A : 999
- exit
- echo $A : 300 : sub shell에 가도 그 변수에 있는 값은 바뀌지 않음
- export는 sub shell로 export 되지, 부모로 export 되지는 않음

- tr "\t" "#" : tap을 #로 바꾸기

- echo \{A..Z}
- echo \{000..99}

- echo \{A..z} : Z와 a 사이에 특수문자도 같이 출력됨
- echo \{\{A..Z},\{a..z}} : 이렇게 하면 됨

- echo \{a..c}\{00..09} : a00 a01 ... a09 ... b00 ... c00 ... c09

- $\{FOO:0:3} : substring (position, length)
- $\{FOO:(-5):3} : substring from the right, 괄호 중요

- echo $\{STR/%.c/.java} : suffix .c를 .java로 바꿔서 출력
- echo mv $STR $\{STR/%.c/.java} : suffix .c를 .java로 파일명 바꾸기

- echo $\{#STR} : 글자수

- A=""
- echo $\{A:-999} : 999, A가 unset이거나 null이면 값 출력

- A=111
- echo $\{A:-999} : 111

- A=""
- echo $\{A:=999} : 999, A가 unset이거나 null이면 값을 넣음
- echo $A : 999

- touch file_\{0000..9999}.c : 파일 만 개 만들기
- 300부터 399까지의 c 파일을 모두 java 파일로 바꾸세요.
- echo file_3*.c : globing으로 파일 찾아내기
- echo file_\{300..399}.c : brace로 파일 찾아내기
- for FN in file_3*.c
- > do 
- > echo $FN $\{FN%.c}.java
- for FN in file_3*.c; do mv $FN $\{FN%.c}.java

- group으로 실행할 땐 오른쪽 brace 앞에 세미콜론이 있어야 함

- (cd /tmp; ps) : sub shell이 실행됨. bash가 2개 나옴
- (cd /tmp; ps) | grep bash | wc -l : 2

- \{ cd /tmp; ps ;} : bash 하나 뜸
- \{ cd /tmp; ps ;} | grep bash | wc -l : 2
- pipe는 sub shell에서 실행됨

- sleep 1; sleee 2; sleep 3 : 앞에 명령에서 에러가 나도 뒤에 게 실행됨

함수
```
#!/bin/bash
function fn()
{
        echo "Jisu Bong"
        echo "cmd:" $0 "num:" $# "Arg1:" $1 "Arg2:" $2 "Arg3:" $3
}

function fadd()
{
        echo $(($1+$2))
        return $(($#-2))
}
```
- source fn.sh
- fn
- fn 100 200 300
- source fn.sh
- fadd 200 300 : 500
- echo $? : 0, 리턴값 출력

- declare -F : 정의되어있는 함수 보기
- declare -f fadd : 이 함수가 어떻게 정의되어있는지 보여줌

-  printf "%d + %d = %d\n" 100 200 $((100+200))
-  printf "%f + %f = %f\n" 100 200 \`fadd 100 200`

- ls -l 한 결과도 보고 싶고 lsresult에도 저장하고 싶은 경우
- ls -l > lsresult : 이거는 결과 안 보고 lsresult에 저장
- ls -l | tee lsresult : 결과 보고 lsresult에 저장

- ls | wc -l : 19가 나왔다.
- ls -a | wc -l : 최소 2개가 늘어난다.

- ls -a > lsresult
- wc lsresult : 존재하는 파일에 덮어씀

- ls -a > lsresult999
- wc lsresult999 : ls -a의 wc에서 1 늘어남

- redirect 파일명 하면 명령어가 실행되는 순간 파일이 만들어짐

- which ls : /bin/ls
- ls -l \`which ls`

조건문
- if \[\[ condition ]]; then : bracket 양옆 반드시 띄어야 함
- elif ; then
- else ; then
- fi

- a.out <<<9999
- echo $? : 15
- echo $(( 9999%256 )) : 15

- if ./a.out
- > then
- > echo true
- > else
- > echo false
- > fi
- 100

- if ./a.out; then echo true; else echo false; fi

- if \[\[ -z $NAME ]] : NAME이 비어있으면
- > then
- > echo EMPTY
- > fi

### 2022/10/13

- brace나 꺽쇠는 그 자체로 명령어이기 때문에 띄어써야 함

- \[\[ AAA == A* ]]
- echo $? : 0

*문제.*
- touch aaa aaaa aaaaa bbb bbbb bbaa
- ls : aaa  aaaa  aaaaa  bbaa  bbb  bbbb
- echo * 했을 때 결과를 쓰세요. : aaa aaaa aaaaa bbaa bbb bbbb

*문제.*
- touch .aa ..aaaaa ...aaaa
- echo * 했을 때 결과를 쓰세요. : aaa aaaa aaaaa bbaa bbb bbbb

*문제.*
- shopt -s dotglob
- echo * 했을 때 결과를 쓰세요. : .aa aaa ...aaaa aaaa ..aaaaa aaaaa bbaa bbb bbbb

- if \[\[ -z $A ]] ; then echo T ; else echo F ; fi : A 변수에 값이 비어있으면 T 출력하고 아니면 F 출력

*문제. 뭐하는 명령어인가?*
- echo aaa > aaa : aaa라는 문자열을 stdout으로 내는데 redirection해서 aaa라는 파일에 이 문자열을 집어넣는다.

*문제. 뭐하는 명령어인가?*
- echo bbb > aaa : aaa라는 파일을 지우고 다시 만들어서 bbb라는 문자열을 집어넣는다.
- 지우고 다시 만드는 건 덮어쓰기, clobbing이라 함

- set -o noclobber : 덮어쓰기 안 되게 설정
- set +o noclobber : 다시 덮어쓰기 되도록 설정

*문제. 1에서 1000까지 7의 배수를 더하세요.*

- for ((i=0 ; i<10 ; i++)); do echo $i; done
- for ((i=0 ; i<10 ; i++)); do sum=$(($i+$sum)); done

- A=`ls`랑 A=$(ls)는 같음
- A=(`ls`) : 배열 만들기

- !! : 가장 최근에 했던 명령어

*문제. oss000 유저한테 가세요.*
- cd ~oss000

- ls -l 202020722
- ^22^21 : 22를 21로 바꾸기, ls -l 202020721 가 실행됨

- history
- !2063 : 2063번 명령어 실행하기
- !2079:gs/a/b : 2079번 명령어에서 a문자를 모두 b로 바꿔서 실행
- history | grep if
- history | grep "if "

- !$ : 최근에 했던 명령어의 parameter
- touch hello.c
- cat !$ : cat hello.c

- alias mv=\'mv -i' : 명령어 별칭 설정

*문제. 따옴표 하나랑 따옴표 두 개의 차이는?*
- 따옴표 하나 : no expansion

- date : 2022. 10. 15. (토) 18:07:55 KST
- locale
- LC_TIME="en_US.UTF-8"
- date : Sat 15 Oct 2022 06:08:20 PM KST

### 2022/10/27

Open Source Software 운동
- GNU (GNU is Not Unix)
- FSF (Free Software Foundation)
- 상업성 반대, 무료로 공개해야 한다.

유닉스 계열의 운영 체제
- Unix : AT&T 연구소에 등록된 상표다.
- Minix
- Mac OS
- Sun OS
- Solaris

대표적인 오픈 소스로 BSD, Linux가 있다.
- BSD (Berkeley Software Distribution) : 오픈된 유닉스 5, 6 버전에서 분기되어 만들어짐
- Linux

- POSIX : IEEE에서 리눅스나 api의 명령을 정의해놓은 표준

- Open Source Software 상업성 공존 인정

지식재산권
- 특허
- copyright : 창작물에 (c) 년월 이름 선언하는 것만으로 권리를 가짐. 사후 50년까지 저작권 인정받음
- copyleft : (c가 왼쪽에 구멍이 뚫려있음). 다른 사람한테 권리 주기. 공유
- creative commons : (cc). 끝에 저작권자 명시
- public domain : (c)에 금지 표시. ex) 법률, 헌법

라이센스 주요 의무사항
- reciprocity (상호호혜) : 오픈소스 가져다가 쓰면 내 소스코드도 공개해야 함
- GPL2.0, 3.0에서는 reciprocity 의미가 강제됨
- 버그 수정 시 수정내용 고지해야 함
- 책임의 제한 : 내가 만든 소스코드를 다른사람이 쓰다가 문제가 발생했을 때 내가 책임지지 않음
