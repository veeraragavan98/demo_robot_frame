from robot.libraries.BuiltIn import BuiltIn

#BuiltIn().import_resource('${EXECDIR}/getRobot.robot')


def get_robot_variable(self, variable_name):
    # Retrieve the variable from Robot Framework
    print(BuiltIn().get_variable_value(f"${{{variable_name}}}"))
print("****+******")