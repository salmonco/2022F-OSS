# FOSS-lab

Edited in ssh

## 202126879 봉지수

## Getting started

To make it easy for you to get started with GitLab, here's a list of recommended next steps.

Already a pro? Just edit this README.md and make it your own. Want to make it easy? [Use the template at the bottom](#editing-this-readme)!

## Add your files

- [ ] [Create](https://docs.gitlab.com/ee/user/project/repository/web_editor.html#create-a-file) or [upload](https://docs.gitlab.com/ee/user/project/repository/web_editor.html#upload-a-file) files
- [ ] [Add files using the command line](https://docs.gitlab.com/ee/gitlab-basics/add-file.html#add-a-file-using-the-command-line) or push an existing Git repository with the following command:

```
cd existing_repo
git remote add origin https://git.ajou.ac.kr/subtleen21/foss-lab.git
git branch -M main
git push -uf origin main
```

## Integrate with your tools

- [ ] [Set up project integrations](https://git.ajou.ac.kr/subtleen21/foss-lab/-/settings/integrations)

## Collaborate with your team

- [ ] [Invite team members and collaborators](https://docs.gitlab.com/ee/user/project/members/)
- [ ] [Create a new merge request](https://docs.gitlab.com/ee/user/project/merge_requests/creating_merge_requests.html)
- [ ] [Automatically close issues from merge requests](https://docs.gitlab.com/ee/user/project/issues/managing_issues.html#closing-issues-automatically)
- [ ] [Enable merge request approvals](https://docs.gitlab.com/ee/user/project/merge_requests/approvals/)
- [ ] [Automatically merge when pipeline succeeds](https://docs.gitlab.com/ee/user/project/merge_requests/merge_when_pipeline_succeeds.html)

## Test and Deploy

Use the built-in continuous integration in GitLab.

- [ ] [Get started with GitLab CI/CD](https://docs.gitlab.com/ee/ci/quick_start/index.html)
- [ ] [Analyze your code for known vulnerabilities with Static Application Security Testing(SAST)](https://docs.gitlab.com/ee/user/application_security/sast/)
- [ ] [Deploy to Kubernetes, Amazon EC2, or Amazon ECS using Auto Deploy](https://docs.gitlab.com/ee/topics/autodevops/requirements.html)
- [ ] [Use pull-based deployments for improved Kubernetes management](https://docs.gitlab.com/ee/user/clusters/agent/)
- [ ] [Set up protected environments](https://docs.gitlab.com/ee/ci/environments/protected_environments.html)

***

# Editing this README

When you're ready to make this README your own, just edit this file and use the handy template below (or feel free to structure it however you want - this is just a starting point!). Thank you to [makeareadme.com](https://www.makeareadme.com/) for this template.

## Suggestions for a good README
Every project is different, so consider which of these sections apply to yours. The sections used in the template are suggestions for most open source projects. Also keep in mind that while a README can be too long and detailed, too long is better than too short. If you think your README is too long, consider utilizing another form of documentation rather than cutting out information.

## Name
Choose a self-explaining name for your project.

## Description
Let people know what your project can do specifically. Provide context and add a link to any reference visitors might be unfamiliar with. A list of Features or a Background subsection can also be added here. If there are alternatives to your project, this is a good place to list differentiating factors.

## Badges
On some READMEs, you may see small images that convey metadata, such as whether or not all the tests are passing for the project. You can use Shields to add some to your README. Many services also have instructions for adding a badge.

## Visuals
Depending on what you are making, it can be a good idea to include screenshots or even a video (you'll frequently see GIFs rather than actual videos). Tools like ttygif can help, but check out Asciinema for a more sophisticated method.

## Installation
Within a particular ecosystem, there may be a common way of installing things, such as using Yarn, NuGet, or Homebrew. However, consider the possibility that whoever is reading your README is a novice and would like more guidance. Listing specific steps helps remove ambiguity and gets people to using your project as quickly as possible. If it only runs in a specific context like a particular programming language version or operating system or has dependencies that have to be installed manually, also add a Requirements subsection.

## Usage
Use examples liberally, and show the expected output if you can. It's helpful to have inline the smallest example of usage that you can demonstrate, while providing links to more sophisticated examples if they are too long to reasonably include in the README.

## Support
Tell people where they can go to for help. It can be any combination of an issue tracker, a chat room, an email address, etc.

## Roadmap
If you have ideas for releases in the future, it is a good idea to list them in the README.

## Contributing
State if you are open to contributions and what your requirements are for accepting them.

For people who want to make changes to your project, it's helpful to have some documentation on how to get started. Perhaps there is a script that they should run or some environment variables that they need to set. Make these steps explicit. These instructions could also be useful to your future self.

You can also document commands to lint the code or run tests. These steps help to ensure high code quality and reduce the likelihood that the changes inadvertently break something. Having instructions for running tests is especially helpful if it requires external setup, such as starting a Selenium server for testing in a browser.

## Authors and acknowledgment
Show your appreciation to those who have contributed to the project.

## License
For open source projects, say how it is licensed.

## Project status
If you have run out of energy or time for your project, put a note at the top of the README saying that development has slowed down or stopped completely. Someone may choose to fork your project or volunteer to step in as a maintainer or owner, allowing your project to keep going. You can also make an explicit request for maintainers.

## Memo

### linux command
1. ls -a 에서 a는 무슨 옵션인가? -> .으로 시작하는 파일을 보는 옵션이다.

### git
1. 어떨 때 branch 만들고, 어떨 때 fork 하는지?
-> 원래 있던 프로젝트를 다른 유형의 프로젝트로 개발할 때 fork해서 프로젝트 하나를 새로운 프로젝트로 분기한다.
일반적으로 버그를 수정하려고 fork하진 않는다. 이 경우 bug fix branch를 하나 만든다. merge하는 것은 비슷하지만 규모에서 차이가 있다.
2. git init 하세요. branch 하나 만드시오. readme.md 파일에 학번을 넣으세요. 이 파일을 staged에 넣으세요. commit 하세요.
3. git log 한 결과가 다음과 같다. 어떤 상태로 돌리세요. -> git reset --hard \[SHA]
4. 현재 디렉토리 이름을 final_exam라고 만드세요: mkdir final_exam  
그 디렉토리로 이동하세요: cd final_exam  
자기 학번을 sid란 파일로 저장하세요: echo 202126879 > sid  
이 디렉토리의 git 리포지토리를 만드세요: git init  
sid 파일의 맨 끝 부분에 자기 이름을 추가하세요: echo Jisu Bong >> sid  
sid 파일을 커밋하세요: git add sid; git commit -m "final_exam"  
origin에 있는 HEAD를 현재 리포지토리에 있는 HEAD와 동일하게 만드세요: git push

### license
1. 내가 만든 오픈소스를 MIT 라이센스로 공개했다. 여기서 내 저작권을 주장하는 것은 나쁜 짓이다. (x)
2. 오픈소스의 기본 권리: 사용, 복제, 수정, 배포  
사용권 - 기간제한, 사람제한, 조직제한 등등이 있음  
복제권 - 내가 사용하는 목적으로 백업받는 건 괜찮은데 다른 사람한테 파는 건 불법임  
수정권 - 소스가 공개되었을 때만(오픈소스일 때만) 수정할 권리가 생김  
배포권 - 문제될 상황이 생길 수 있으니 잘 보기  
*보증의 부정: 보증을 부인할 수 있는 권리가 있음. 내 오픈소스 갖고 다른 사람이 썼는데 다른 사람한테 문제가 생겼으면 나는 책임이 없음  
* 4대 권리 중 하나라도 빠져있으면 오픈소스가 아님  
* 오픈소스 파운데이션에서 당신의 라이센스 모델은 오픈소스라고 가이드해줌
* 가장 널리 쓰이는 게 MIT, GPL, 아파치 라이센스 등임
* 리눅스는 GPL 라이센스임
3. GPL 라이센스와 MIT 라이센스의 가장 큰 차이는? -> 1. reciprocity: 내가 GPL 라이센스로 된 소스코드를 가져와서 무엇인가를 만들었으면 나도 소스코드를 GPL로 공개해야 함. 안 그럼 리눅스 재단이 나한테 소송을 걸 수 있음. 반면, MIT 라이센스는 나도 소스코드를 공개해야 할 의무가 없음. 2. GPL 라이센스는 상업적 이용이 불가능함. 그 소스코드를 가져다가 그 소스코드를 파는 것이 불가능함. 반면, MIT 라이센스는 상업적 이용이 가능함

### 특허
1. 어떤 사람이 어떤 공개 소프트웨어를 개발했음. 나는 그걸 가져다가 사용했음. reciprocity 의무가 있어서 나도 소스코드를 공개했음. 내가 소스코드를 수정했으면 라이센스 종류에 따라서 수정에 대해 명시할 의무가 있을 수 있음. 소스코드 가져다 썼는데 그 소스코드에 특허가 들어있을 수 있음. 특허 소유자는 나한테 특허 침해에 대한 소송을 걸 수 있음. GPL이나 MIT 라이센스면 특허를 가지고 소송을 거는 건 거의 불가능함. 자기가 사람들한테 쓰라고 소스코드를 공개한 거기 때문.
2. 만약 사람A가 공개한 소스코드를 다른 사람B가 써서 뭘 만든 상황에서 제3자인 사람C가 그거를 자기 특허라고 주장한다면, 그 소스코드를 공개한 사람A가 잘못한 건데 그 소스코드를 사용해서 뭘 만든 사람B한테도 소송을 걸 수도 있음. 사람A와 사람B 양쪽 다 소송당할 수 있다는 것임. 그런 상황에 대비해서 밑에 코멘트를 달아놓으면 책임의 회피를 할 수 있음. ex) 혹시라도 제3자의 특허나 저작권, 지재권을 침해한 경우가 있다면 그건 제가 의도한 게 아니고 실수입니다. 발견되면 저한테 이메일로 보내주세요. 그럼 바로 삭제하도록 하겠습니다.
3. 어떤 사람A가 리눅스 오픈소스를 가지고 뭘 만들었음. 사람A가 특허를 숨겨놓고 자기거 가져다가 쓴 사람B한테 특허에 관련된 소송을 걸었음. 그럼 리눅스 토르발즈는 사람A한테 보복 조치를 시작함. 리눅스에 있는 30개의 특허를 침해한 혐의로 사람A를 보복 고발함. 사람A가 GPL 라이센스를 받았다 하더라도, 사람A가 소프트웨어에 관련된 특허 소송을 하는 순간 GPL 3.0 라이센스는 무효화됨. 사람A가 리눅스 코드를 쓴 게 무효화됨. 4대 권리(사용, 복제, 수정, 배포)가 무효화됨. 그래서 이런 특허 보복을 할 수 있음.
4. MIT 라이센스를 쓰더라도 맨 위에 copyright 선언을 해야 함.
내가 GPL 라이센스로 된 걸 가져다 썼음. 그럼 내 소스코드도 공개 의무가 있는데 공개하기 싫음. 그럼 나는 저작권 침해 소송을 당할 수 있음. 나도 소스코드를 공개한다는 조건하에서 사용, 복제, 수정, 배포의 3대 권리를 준 거임. 내 소스코드를 공개하지 않아서 GPL 2.0 라이센스가 무효화 되었으면 저작권이 문제가 됨. 그래서 저작권법 위반으로 내가 고발당할 수 있음.
5. 특허이슈 발생 시 공개SW 개발자에게 특허책임을 물을 수 없음

### software business
7 Canvas
- Value Propositions: 고객에게 제공하고 싶은 가치가 뭔지
- Key Partners: 우리 서비스를 영위하는 데 의존하는 파트너가 누군지 
- Key Activities
- Key Resources
- Customer Segments: 우리가 대상으로 하는 고객을 정하기
- Customer Relationships
- Channels

KPI: 전략 목표들이 어떻게 수행되어야 하는가
- 도전적이여야 함. ex) 토익 730 -> 850 달성하기
- 가능해야 함
- 전 조직원이 합의해야 함

BSC (Balanced Score Card)
- Financial
- Customer
- Internal Processes
- Organizational Capacity

전략체계 균형 맞추기
- 매출과 수익
- 단기와 장기
- 재무적인 것과 비재무적인 것(고객의 만족 등)
- ...

Gartner's Hype Cycle for Emerging Technologies - 뜨는 기술에 대한 사이클  
급격히 증가(innovation trigger) / 피크 / 급격히 감소 / 서서히 증가  
제일 오른쪽 쯤 되는 것은 다 쓸 수 있는 기술  
피크: Consumer 3D printing  
쓰고 있음: Enterprise 3D printing  

1. slope of enlightenment에서 일어나는 일은? -> 표준화, 수많은 오픈소스 프로젝트들이 출시됨
2. 표준화는 어느 시점에서 일어나는 게 합리적인가? -> slope of enlightenment

software business - 주로 3가지 방식으로 서비스함
- Software package
- System integration
- SaaS

service business model - 서비스를 어떤 수준으로 받을 것인가
- Turn-key based: 제일 높은 수준. 외부에서 완제품을 가져옴
- Outsourcing
- Manpower dispatch(인력 파견): 제일 낮은 수준
- Partnership

구현하는 비용보다 테스트하는 비용이 두 배 더 높음  
테스트와 maintenance에 너무 많은 비용이 듦  
오픈소스로 비용 절감 가능

3. 내부 테스트 -> 알파 테스트 / 외부 테스트 -> 베타 테스트
4. 소스코드 닫아두고 테스트 -> black box test / 소스코드 열어두고 테스트 -> white box test

### 오픈소스로 돈 버는 방법
내가 라이브러리 하나 안 쓰고 밑바닥부터 시작해서 소프트웨어를 전부 다 짰음. 개발비 10억 들었는데 버그가 좀 있어서 maintenance하는 데 40억 들 것 같음. maintenance를 더이상 못하겠다 싶어서 maintenance 대신에 소스를 공개하고자 함. 투자받은 비용 다 써서 마케팅 비용도 더이상 없음. 일단 대학생들한테 무료로 다 뿌리자. 그렇게 오픈소스를 뿌려서 학생들이 막 쓰면서 버그같은 거 얘기해주고 입소문으로 마케팅 해보자 함. 그럼 나는 오픈소스를 가지고 돈을 어떻게 벌 수 있을까하는 문제가 있음.

코드를 파는 게 아니라, 다른 것들을 팔 수 있음  
Non selling code
- 서비스 - 교육, 훈련, 기술지원, 자문
- 실행 파일, DVD, Packaging
- Branded merchandise. ex) 깃랩 스티커, 슬랙 티셔츠. 허가 받아야 함.
- Software as a services - Software를 service해주는 것
- Voluntary donations
- Crowdsourcing

Selling users. ex) 커뮤니티에 가입된 유저들을 통해 수익을 얻음. 광고수익  
Pre-selling code. ex) 오픈소스로 이거 만든 사람에게 보상  
Selling intellectual property. ex) 오픈소스로 뿌렸는데 만약 사람들이 너무 많이 쓴다 하면, 유료버전에는 성능 좋은 게 있으니 돈 주고 사서 쓰라고 할 수 있음. 이렇게 유료버전 만들 수 있는데 도덕적인 문제로 사람들이 욕할 수 있음.  
오라클이란 회사에서 MySQL이란 회사를 인수했음. MySQL은 오픈소스였어서 사람들은 오라클이 MySQL 커뮤니티 버전은 공짜로, 엔터프라이즈 버전은 돈 받고 팔겠구나라고 생각했음. 사람들은 MySQL 오픈소스 프로젝트를 fork해서 MariaDB라는 새로운 DB를 만들었음. 그래서 오라클은 MySQL은 계속해서 오픈소스로 관리하겠다고 유료화할 생각은 전혀 없다고 선언하면서 MariaDB 쓰지 말고 MySQL 쓰라고 하고 있음. 고객들이 MySQL 말고 MariaDB로 가버리면 인수한 목적이 사라질 수 있음. MySQL을 인수한 목적이 돈 받고 팔려고 하는 게 아니라 MySQL 쓰는 고객들의 반응 등을 알아보는 다른 목적이 있을 수 있기 때문.  
Selling proprietary additives

Others
- obfuscation of source code: 소스코드를 해석하지 못하게 함. 자유로운 수정 불가능하기 때문.  
- delayed open-sourcing: 다음부터는 유료화

Funding

5. 오픈소스로 돈 벌 수 있는 방법이 아닌 것을 모두 고르시오.  
소스코드를 고쳐서 파는 사람한테는 추가적으로 비용을 받는다. (x)

### 기말고사 문제 개요
중간고사에 나온 문제 50점 (절반). 대부분 단답형 or 사지선다 or o/x 퀴즈. 함정이 많음

1. 시스템의 구성 요소
2. 리눅스 명령어. ex) chmod, permission, symbolic link, 아이노드
3. 리디렉션. ex) 에러 메시지를 함께 내보내는 리디렉션, 파이프
4. bash. ex) 파일 엄청 만드는 스크립트
5. git. ex) 과정들을 수행, 이렇게 했을 때 이 파일의 상태는 어떻게 되는가? git으로 commit을 한 다음, 다시 이전 커밋으로 가세요. 이 상태에서 파일을 cat하면 결과는? 순서대로 작업한다 가정.
6. 오픈소스 라이센스. ex) o/x 문제. 생각보다 까다로움. 사람A가 오픈소스 소프트웨어를 만들었다. 근데 거기에다 특허를 숨겨놓았다. 사람B가 특허를 써서 사람A가 사람B한테 특허 소송을 걸었다. 그랬을 때 어떻게 되는가? -> 사람A는 사람B한테 특허 소송을 걸 수 없다. (o/x)
7. 소프트웨어 비즈니스. ex) 오픈소스로 할 수 있는 일과 없는 일에 대한 o/x 문제. 몇가지 용어들. 이걸 뭐라고 하는가.
