#!/usr/bin/zsh
for i in {1..30}
do
  echo "Bumping version: iteration $i"
  echo "# `sver -n patch`" >> ./src/policies/get.rego
  git add .
  git commit -m "`sver -n patch`"
  git tag `sver -n patch`
  git push
  git push --tags
done
