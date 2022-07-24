from pathlib import Path
import subprocess

subprocess.run('docker build -t run_web_tests ./', shell=True, capture_output=True)

local_path = Path().absolute()
tests_path = local_path.joinpath("tests")
results_path = local_path.joinpath("results")
resources_path = local_path.joinpath("resources")

subprocess.run(f'docker run --rm --name run_robot_tests'
               f' -v "{tests_path}":/opt/robotframework/tests'
               f' -v "{results_path}":/opt/robotframework/results'
               f' -v "{resources_path}":/opt/robotframework/resources'
               f' run_web_tests:latest robot -d /opt/robotframework/results /opt/robotframework/tests',
               shell=True, capture_output=False)
