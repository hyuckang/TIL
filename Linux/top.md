> provides a dynamic real-time view of a running system
It can display system summary information as well as a list of processes or threads currently being managed by the Linux kernel.
> 

- `c` : 상세 커맨드 또는 프로그램 보기
- `o COMMAND={커맨드}` : 커맨드로 필터링
- `o USER={유저네임}` : 유저로 필터링
- `d {딜레이 타임}` : 딜레이 타임을 변경한다. 기본은 3초마다 갱신
- `k {pid} {시그널 넘버}` : kill-a-task
    - signal 15 : SIGTERM
    - signal 9 : SIGKILL
- `q` : Quit
- `SHIFT + M` : 메모리 기준으로 정렬
- `SHIFT + P` : CPU 기준으로 정렬
- `SHIFT + T` : 시간 기준으로 정렬

---

- `PID` : 프로세스 아이디
- `USER` : 유저네임
- `PR` : 스케줄링 우선순위
    - rt : real time(실시간) 스케줄링
    - 값이 높을수록 우선순위가 높다
- `NI` : Nice Value
    - 음수이면 우선순위가 높고, 양수이면 우선순위가 낮다.
    - 0은 디스패치 가능성을 결정할때 우선순위가 조정되지 않음을 의미
- `**VIRT` : 가상 메모리 사용량(Virtual Memory Size)**
    - KiB 단위
    - **task가 사용하는 가상 메모리의 총 사용량**
    - 가상메모리가 반드시 메모리일 필요는 없음
- `**RES` : 실제 메모리 사용량(Resident Memory Size)**
    - KiB 단위
    - task가 현재 사용하는 (스왑되지 않은) 물리적 메모리
    - **실제 메모리 사용량**
- `SHR` : 공유 메모리 사용량(Shared Memory Size)
    - KiB단위
    - 다른 프로세스에서 사용할 수 있는 RES의 하위집합
- `**S` : 프로세스 상태(Process Status)**
    - D = uninterruptible sleep
    - I = idle
    - R = running
    - S = sleeping
    - T = stopped by job control signal
    - t = stopped by debugger during trace
    - Z = zombie
