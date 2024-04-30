USER=tomcat
JAVA_DIR=/usr/local/jdk1.6.0
UBISERVICE_DIR=/webapp/myapp/UbiService
PROPERTY_DIR=$UBISERVICE_DIR
FONT_DIR=$UBISERVICE_DIR/fonts/
CLASSPATH=$UBISERVICE_DIR/lib/UbiServer.jar

#For Redbc
#CLASSPATH=$UBISERVICE_DIR/lib/UbiServer.jar:$UBISERVICE_DIR/lib/EzIssuerJava.jar

#For Voiceye
#CLASSPATH=$UBISERVICE_DIR/lib/UbiServer.jar:$UBISERVICE_DIR/lib/VERVMakerJNI.jar
#CLASSPATH=$UBISERVICE_DIR/lib/UbiServer.jar:$UBISERVICE_DIR/lib/VERVMakerJNI64.jar

XMS=1024M
XMX=4096M

GREP_STR=$UBISERVICE_DIR/lib/UbiServer.jar


if [ `id -un` == $USER ]; then

	#For SunOS
	#if [ `/usr/ucb/ps -auxwww | grep $GREP_STR | grep -v grep | awk '{print $2}'` ];then

	#For UNIX HP-UX
	#if [ `ps -efx | grep $GREP_STR | grep -v grep | awk '{print $2}'` ];then

	if [ `ps -ef | grep $GREP_STR | grep -v grep | awk '{print $2}'` ];then
		echo ""
		echo ">>> UbiService is running."
		echo ""
	else
		$JAVA_DIR/bin/java -Xms$XMS -Xmx$XMX -Dfile.encoding=UTF-8 -Djava.awt.headless=true -Dsun.java2d.fontpath=$FONT_DIR -classpath $CLASSPATH:. com.ubireport.service.UbiService4 $PROPERTY_DIR & 
		echo ""
		echo ">>> UbiService has started."
		echo ""
	fi
else
	echo ""
	echo ">>> User is not $USER!!! Please check user!!!"
	echo ""

fi