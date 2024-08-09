for i in .local/share/flutter/bin .local/share/android-studio/bin Android/Sdk/cmdline-tools/latest/bin go/bin; do
    if test -d ~/$i && echo ":${PATH}:" | grep -q -v ":$HOME/${i}:"; then
        PATH=~/$i:$PATH
    fi
done
