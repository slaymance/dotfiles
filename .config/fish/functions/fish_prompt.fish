# Fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red

# Status Chars
set __fish_git_prompt_char_dirtystate ''
set __fish_git_prompt_char_stagedstate ' '
set __fish_git_prompt_char_untrackedfiles ' '
set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_char_upstream_ahead '  '
set __fish_git_prompt_char_upstream_behind '  '

# Set main prompt
function fish_prompt
	test $SSH_TTY
	and printf (set_color red)$USER(set_color brwhite)'@'(set_color yellow)(prompt_hostname)' '
	test "$USER" = 'root'
	and echo (set_color red)"#"
	set_color normal
	echo -n (set_color cyan)(prompt_pwd) (set_color red)'❯'(set_color yellow)'❯'(set_color green)'❯ '
	set_color normal
end

# Set git status prompt
function fish_right_prompt
        printf '%s' (__fish_git_prompt)
        set_color normal
end
