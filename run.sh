

BASE_LOG=$(mount | grep /dev/mapper/ubuntu--vg-root | awk '{print $3}' | tail -n +4 | sed 's/$/\/*/' | tr "\\n" " ")

echo "Running Tailon as python tailon -b 0.0.0.0:8084 -f /var/log/* $BASE_LOG"
python tailon -b 0.0.0.0:8084 -f /var/log/* $BASE_LOG

