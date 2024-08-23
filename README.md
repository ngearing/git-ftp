# Setup

Rename `example.env` to `.env` and fill out your ftp details.

# Push

```bash
set -a; source .env && docker run -it -v $(pwd):/tmp -w /tmp ngearing/git-ftp git ftp push -u $FTP_USER -p $FTP_PASS --insecure $FTP_PATH
```

# Download

```bash
set -a; source .env && docker run -it -v $(pwd):/tmp -w /tmp ngearing/git-ftp git ftp download -u $FTP_USER -p $FTP_PASS --insecure $FTP_PATH
```

Check the `git-ftp` repository for more details: [git-ftp](https://github.com/git-ftp/git-ftp/blob/master/man/git-ftp.1.md)
