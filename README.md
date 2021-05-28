# venv
Simple script to automate creating, activating and deleteing virtualenvs, without switching to Pipenv (because some people are like that). This is for my own use but if go ahead an use it if you want to. I recommend *not* using names specifically, just go with the default.

<a href="https://forthebadge.com"><img src="https://forthebadge.com/images/badges/0-percent-optimized.svg" alt="drawing" height="35"/></a>
<a href="https://forthebadge.com"><img src="https://forthebadge.com/images/badges/works-on-my-machine.svg" alt="drawing" height="35"/></a>

## Install
```bash
$ curl https://raw.githubusercontent.com/zrthxn/venv/master/install.sh | /bin/bash
```

## Usage
**Create a virtual environment.**

```bash
$ venv create env
```
```bash
# If no name is given, use the name of current dir.
$ venv create
```

**Create a virtual environment with options.**
Arguments after "+" are used as options for `virtualenv`.
```bash
$ venv create + -p python3
```
```bash
$ venv create env + -p python3
```

**Activate a virtual environment.**
Note the `.` before the command. You can also use `source`.

```bash
$ . venv activate
```
```bash
$ . venv activate env
```

**Delete a virtual environment.**

```bash
$ venv delete env
```
```bash
# If no name is given, use the name of current `dir`.
$ venv delete
```
