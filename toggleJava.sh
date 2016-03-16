#!bin/bash

if cat xmonad.hs | grep startupHook
then
    echo "JAVA VERSION -> NORMAL VERSION"
    cp configs/xmonadNORMAL.hs . && rm xmonad.hs && mv xmonadNORMAL.hs xmonad.hs

else
    echo "NORMAL VERSION -> JAVA VERSION"
    cp configs/xmonadJAVA.hs .   && rm xmonad.hs && mv xmonadJAVA.hs xmonad.hs
fi
xmonad --recompile && xmonad --restart
