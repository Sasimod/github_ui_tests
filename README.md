# github_ui_tests

Requirements:

- Python 3.6+

Install:

```
pip install -r requirements.txt
```

Update configuration in [resources/configs/local/env_config.yaml](resources/configs/local/env_config.yaml) 
to set browser and credentials for GitHub.

Run tests:

```
robot -L TRACE --variable ENV:local -d result testcase/github_ui_tests.robot
```