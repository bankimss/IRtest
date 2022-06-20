from robot.api.deco import library, keyword
from robot.libraries.BuiltIn import BuiltIn
import requests
@library
class APIDataCheck:

    def __init__(self):
        self.selLib = BuiltIn().get_library_instance("SeleniumLibrary")
        self.collectionLib = BuiltIn.get_library_instance("Collections")
        self.collectionLib = BuiltIn.get_library_instance("RequestsLibrary")
        self.collectionLib = BuiltIn.get_library_instance("JSONLibrary")
    @keyword
    def get_report_data(self, api, headers,  parameters, Auth):
        response = requests.get(f"{api}", header=headers, params=parameters, Authorization=Auth)
        if response.status_code == 200:
            print("sucessfully fetched the data with parameters provided")
            self.formatted_print(response.json())
        else:
            print(
                f"Hello person, there's a {response.status_code} error with your request")






