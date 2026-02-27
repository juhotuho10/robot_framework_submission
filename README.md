# robot_framework_submission

Testsuit for automating the login for the website https://the-internet.herokuapp.com

### Running the tests
After installing all the dependencies, you can run the test from the terminal by running the command `robot ./robot_tests/login_demo.robot` in the project root.

Robotframework will execute the testcases in the `robot_tests/login_demo.robot` file and give you the result in the terminal as well as provide a detailed report file in the `robot_tests/` folder

### Dependencies
This test uses Firefox as the test browser, so you need Firefox installed from https://www.firefox.com/ 

You need to have Python 3.X installed, you can get it from https://www.python.org/

After downloading and installing Python, you need to install Robot Framework and the Selenium Library extension for the Robot Framework

You can get the dependencies from terminal with the pip package manager that comes with Python by running:

`pip install robotframework robotframework-seleniumlibrary` or by running `pip install -r requirements.txt` in the project root