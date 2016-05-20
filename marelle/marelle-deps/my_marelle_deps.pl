% -*- mode: prolog -*-
%
% my-local-deps.pl
% marelle-deps
%
% To use:
%  install Marelle;
%    brew install swi-prolog
%    git clone https://github.com/larsyencken/marelle ~/.local/marelle
%  run marelle meet my-local-deps under dotfiles/marelle

meta_pkg('my-local-deps', [
             '__dev folder',
             cntlm,
             wget,
             tmux,
             git,
             tig,
             monit,
             'ssh-copy-id',
             emacs,
             vim,
             mu,
	         offlineimap,
             ag,
             'git-flow',
             '__dotemacs checked out',
             '__dotemacs symlinked',
             ctags,
             erlang,
             mitmproxy,
             rvm,
             '__rvm prompt setup',
             '__git prompt',
             '__git completion'
]).


% All my dev stuff goes into ~/dev/.  Always.  Everywhere.
pkg('__dev folder').
met('__dev folder', _) :-
    isdir('~/dev').
meet('__dev folder', _) :-
    bash('mkdir ~/dev').

managed_pkg(wget).
managed_pkg(tmux).
managed_pkg(cntlm).
managed_pkg(git).
managed_pkg(tig).
managed_pkg(monit).
% Should probably be done on OSX only.
managed_pkg('ssh-copy-id').
managed_pkg(vim).
managed_pkg(mu).
managed_pkg(offlineimap).
managed_pkg(ag).
managed_pkg('git-flow').
managed_pkg(mitmproxy).
managed_pkg(erlang).

git_step(
    '__dotemacs checked out',
    'https://bitbucket.org/tychobrailleur/emacs',
    '~/emacs'
).

symlink_step(
    '__dotemacs symlinked',
    '~/emacs/init.el',
    '~/.emacs'
).

command_pkg(ctags).
installs_with_apt(ctags, 'exuberant-ctags').
installs_with_brew(ctags, 'exuberant-ctags').

pkg(rvm).
met(rvm, _) :- isfile('~/.rvm/bin/rvm').
meet(rvm, _) :-
    bash('curl -L https://get.rvm.io | bash -s stable --ruby --autolibs=enable --auto-dotfiles').

pkg('__rvm prompt setup').
met('__rvm prompt setup', _) :-
    bash('fgrep -q "rvm-prompt" ~/.bashrc').
meet('__rvm prompt setup', _) :-
    bash('echo \'export PS1="\\h:\\w\\[\\033[32m\\]\\$(__git_ps1)\\[\\033[0m\\]$ "\' >> ~/.bashrc'),
    bash('echo \'export PS1="\\$(~/.rvm/bin/rvm-prompt u) $PS1"\' >> ~/.bashrc').

pkg('__git prompt').
met('__git prompt', _) :-
    isfile('~/.git-prompt.sh').
meet('__git prompt', _) :-
    bash(' curl https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh -o ~/.git-prompt.sh').

pkg('__git completion').
met('__git completion', _) :-
    isfile('~/.git-completion.bash').
meet('__git completion', _) :-
    bash('curl https://raw.github.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash'),
    bash('echo \'if [ -f ~/.git-completion.bash ]; then\n        . ~/.git-completion.bash\n    fi\' >> ~/.bashrc').

% end of my_marelle_deps.pl
