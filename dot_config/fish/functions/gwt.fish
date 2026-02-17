function gwt --description "Create a git worktree and cd into it"
    if test (count $argv) -lt 1
        echo "Usage: gwt <branch-name> [base-branch]"
        echo "  Creates a worktree at ../repo-name-branch-name"
        return 1
    end

    set -l branch $argv[1]
    set -l base (if test (count $argv) -ge 2; echo $argv[2]; else; echo HEAD; end)

    set -l repo_root (git rev-parse --show-toplevel 2>/dev/null)
    if test $status -ne 0
        echo "Not in a git repository"
        return 1
    end

    set -l repo_name (basename $repo_root)
    set -l worktree_path (dirname $repo_root)/$repo_name-$branch

    git worktree add -b $branch $worktree_path $base
    and cd $worktree_path
end
