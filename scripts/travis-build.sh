git config remote.origin.fetch "+refs/heads/*:refs/remotes/origin/*"
git fetch
git diff --name-only HEAD origin/${TRAVIS_BRANCH}
