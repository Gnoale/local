[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# Composite manager - no tearing
compton -b --paint-on-overlay --unredir-if-possible --backend xr_glx_hybrid --vsync drm --glx-swap-method -1 --glx-no-stenc

# remember nothing will be executed after exec 
exec awesome
