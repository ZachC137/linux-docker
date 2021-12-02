chars=abcd1234ABCDEF98765GLOHFMOfriehso
for ((; ;)); do
   echo -n "${chars:RANDOM%${#chars}:1}" > /tmp/kek.txt
   sleep 3
done
