- git : 컴퓨터 파일의 변경사항을 추적하고 여러 명의 사용자들 간에 해당 파일들의 작업을 조율하기 위한 분산 버전 관리 시스템
- 리눅스를 만든 사람인 리누스 토르발스가 깃을 만듦
- git-scm 설치하면 자신의 pc를 깃서버처럼 만들어서 쓸 수 있음
- 깃랩, 깃허브도 GPL 라이센스임

- commit : 하나의 변경사항에 대한 메타 데이터. 스냅샷 - tree를 갖음

- git clone https://git.ajou.ac.kr/subtleen21/foss-lab.git
- git status
- README.md 파일 수정
- git status
- git add README.md
- git commit : 안 됨
- git config --global user.email "subtleen21@ajou.ac.kr"
- git config --global user.name "봉지수"
- git commit
- git status
- .git에 있는 파일이 변경됨
- git push : git 서버에 반영시키기
