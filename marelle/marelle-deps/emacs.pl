% emacs.pl
% marelle-deps
%
% Build Emacs sources from master Git repo.
%


pkg(emacs).
met(emacs, _) :- isfile('/usr/local/bin/emacs').
meet(emacs, _) :-
    git_clone('git://git.savannah.gnu.org/emacs.git',
              '~/dev/emacs'),
    bash('cd ~/dev/emacs && automake --add-missing'),
    bash('cd ~/dev/emacs && autoreconf'),
    bash('cd ~/dev/emacs && ./configure --with-rsvg --with-gnutls'),
    bash('cd ~/dev/emacs && make && sudo make install').

% Probably missing some deps to build, like build-essentials

depends(git).

% Local Variables:
% mode: prolog
% End:
