from logging import log

from robot.api.deco import library, keyword
from robot.libraries.BuiltIn import BuiltIn


@library
class Filter:

    def __init__(self):
        self.selLib = BuiltIn().get_library_instance("SeleniumLibrary")


    @keyword
    def test_filters_on_report(self, filtername):
        self.selLib.click_element("css:div[class='heading__right'] ul li:nth-child(2)")
        filtertitles = self.selLib.get_webelements("css:.form__group .form__label")
        for title in filtertitles:
            if title.text in filtername:
                print (title.text)
                self.selLib.click_element.title("css:div[class='p-component']")






