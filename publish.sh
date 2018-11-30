#! /bin/bash

BUILD_DIR="./_site"
TMP_DIR="/tmp/jekyll_build"
CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)

# We first check if there are any pending changes
if [ -n "$(git status --untracked-files=no --porcelain)" ]; then
    echo -n "There are pending changes. "
    echo "Please commit your them before publishing."
    exit 0
fi

# Repository is clean we can proceed
echo "Repository is clean. Publishing on rescience-c.github.io."
COMMIT_DATE=$(git log --pretty=format:'%cd' -n 1)
COMMIT_HASH=$(git log --pretty=format:'%h' -n 1)


# Delete old build files if any
rm -rf $BUILD_DIR

# Build
bundle exec jekyll build

# If build succeeds
if [ -d "$BUILD_DIR" ]; then
    echo "Site building successful"
    rm -r $TMP_DIR

    # Move BUILD_DIR to /tmp
    mv $BUILD_DIR $TMP_DIR

    # Change branch to master
    if git checkout master; then
      echo "Git: succesfully switched to master branch"

      # Cleanup
      ls | xargs rm -r

      # Get the build
      mv $TMP_DIR/* .

      # Commit
      git add .
      git commit -m "Publishing: $COMMIT_HASH, $COMMIT_DATE"
      if git push origin master; then
        echo "Publishing successful."
        echo $(basename $(git remote show -n origin | grep Fetch | cut -d: -f2-))
      else
        echo "Publishing failed!"
      fi
    else
      echo "Cannot switch branch, aborting!"
    fi

else
    echo "Site building faile"
fi

git checkout $CURRENT_BRANCH
