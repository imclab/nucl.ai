# nucl.ai

Set up development enviroment
```
npm install # for grunt and related
bower install # for bower components (lib/)
bundler install # to test against to gh-pages gem (includes jekyll)
```

Deploy changes
```
grunt clean # clean all generated/synced assets
git commit # check in changes
git checkout gh-pages # get to the right branch
git rebase master # get changes
git grunt build # build generate/sync assets
git commit # deploy to github pages
```

Run Server
```
grunt serve
```

Execute Jekyll out of Grunt
```
bundle exec jekyll (build/serve)
```