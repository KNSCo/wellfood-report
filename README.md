1. 디렉토리 구조 
   1-1. env : report 서버 세팅에 필요한 톰캣 및 자바
   1-2. UbiServer : ubi 리포트 파일이 존재하며 ubi리포트의 서버역할
   1-3. UbiService : Ubi Report 관련 데몬 서버

2. UbiServer 기동을 위한 tomcat 세팅
   2-1. 프로젝트의 java 버전은 env에 있는 corretto-1.8 버전으로 사용한다.
   2-1. 톰캣은 env에 있는 Tomcat 9.0.87 버전을 사용한다.
   2-2. port 는 nginx에 세팅되어 있는 거처럼 "8100" 으로 세팅한다.
   2-3. module에 UbiServer를 선택하여 넣어준다.
   2-4. context-path는 "/ubi-svc" 로 지정한다.
   2-5. tomcat을 기동하고 "localhost:8100/ubi-svc/UbiServer"  접속시 오류가 발생하지 않고  UbiServer 문구의 빈화면이 뜨면 정상적으로 기동된걸 확인할 수 있다.

3. UbiService 데몬 기동
   3-1. workspace 경로/UbiService/bin 디렉토리에서 cmd 창을 실행 시킨뒤 "ubiservice.bat"를 입력 후 실행 시
        마지막에 [UbiService Start] 가 떠있으면 정상적임을 확인할 수 있다.
   3-2. 각 IDE 마다 Terminal 을 실행하여 해당 디렉토리로 이동 후 IDE에서 실행도 가능