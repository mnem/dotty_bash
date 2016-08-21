if [ -f /usr/local/share/chruby/chruby.sh ]; then
    source /usr/local/share/chruby/chruby.sh
    
    # Default ruby
    chruby 2.0.0
fi
