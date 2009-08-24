run "echo 'release_path: #{release_path}' >> #{shared_path}/before_symlink.log"

run "if [ -d #{release_path}/config/ultrasphinx ]; then mv #{release_path}/config/ultrasphinx #{release_path}/config/ultrasphinx.bak; fi"
run "ln -nfs #{shared_path}/config/ultrasphinx #{release_path}/config/ultrasphinx"

run "echo 'Symlinked UltraSphinx' >> #{shared_path}/before_symlink.log"

