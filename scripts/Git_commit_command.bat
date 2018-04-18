set PATH=C:\Program Files\Git\bin;%PATH%

set mydatetime=%date%_%time%

cd %WORKSPACE%

git fetch --all
git checkout %BRANCH%

git pull origin %BRANCH%

C:

type NUL > C:\JenkinsTest\jenkins_artifacts\benefithubartifacts\Dev.txt

cd %WORKSPACE%\test

rd /S /Q .

"C:\JenkinsTest\jenkins_artifacts\benefithubartifacts\test" /s /y /i

cd ..

git add .

rm git status

git commit -m "Commit artifacts for benfithub %mydatetime% "

git status

git push origin %BRANCH%



