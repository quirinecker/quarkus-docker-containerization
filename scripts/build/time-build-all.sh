ej=$(time sh scripts/build/external-jvm.sh)
en=$(time sh scripts/build/external-native.sh)
mj=$(time sh scripts/build/multistage-jvm.sh)
mn=$(time sh scripts/build/multistage-native.sh)
sj=$(time sh scripts/build/singlestage-jvm.sh)
sn=$(time sh scripts/build/singlestage-native.sh)

echo "(1/6) External JVM Build Time"
echo $ej

echo "(2/6) External Native Build Time"
echo $en

echo "(3/6)Multistage JVM Build Time"
echo $mj

echo "(4/6) Multistage Native Build Time"
echo $mn

echo "(5/6) Singlestage JVM Build Time"
echo $sj

echo "(6/6) Singlestage Native Build Time"
echo $sn
