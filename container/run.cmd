@ECHO OFF
SET DCN="adhoc_proto"
SET RPT="adhoc_proto.dat"
docker build -t %DCN% .
docker run -v %~dp0src_data:/opt/src_data --rm %DCN% -mcron

ECHO Local: %~dp0src_data\%RPT%