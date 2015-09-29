#add each topic folder to fpath so that they can add functions and completion scripts
for topic_folder ($ZSH/*) if [ -d $topic_folder ]; then  fpath=($topic_folder $fpath); fi;

# Composer support, which doesn't really belong here but whatever...
PATH=$HOME/.composer/vendor/bin:$PATH
