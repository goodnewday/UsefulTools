:begin
FOR /L %%i IN (10002,1,10004) DO (start  D:\vlc\winvlc.exe file:///E:/Tests/tdx.ts :sout=#rtp{dst=127.0.0.1,port=%%i,mux=ts} :sout-keep )
:end
