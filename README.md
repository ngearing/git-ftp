# Setup

```bash
git config git-ftp.user john
git config git-ftp.url ftp.example.com
git config git-ftp.password secr3t
git config git-ftp.syncroot path/dir
git config git-ftp.cacert caCertStore
git config git-ftp.deployedsha1file mySHA1File
git config git-ftp.insecure 1
git config git-ftp.key ~/.ssh/id_rsa
git config git-ftp.keychain user@example.com
git config git-ftp.remote-root htdocs
git config git-ftp.disable-epsv 1
git config git-ftp.no-commit 1
```

# Push
Unix
```bash
docker run -it -v $(pwd):/tmp ngearing/git-ftp git ftp push
```
Windows
```powershell
docker run -it -v ${PWD}:/tmp ngearing/git-ftp /bin/bash -c "git reset --hard && git ftp push"
```
# Download
Unix
```bash
docker run -it -v $(pwd):/tmp ngearing/git-ftp git ftp download
```
Windows
```powershell
docker run -it -v ${PWD}:/tmp ngearing/git-ftp /bin/bash -c "git reset --hard && git ftp download"
```


Check the `git-ftp` repository for more details: [git-ftp](https://github.com/git-ftp/git-ftp/blob/master/man/git-ftp.1.md)

# BitBucket

See `bitbucket-pipelines.yml` file for example.
You will need to setup variables: `FTP_USER`, `FTP_PASS`, `FTP_URL` for your pipeline.

Don't forget to run `git ftp init` first as the pipeline will fail otherwise.
