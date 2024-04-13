from behave import given, use_step_matcher

from lib.pages.basepage import BasePage

use_step_matcher("re")


@given(u'I navigate to the kayak main page')
def visit_login(context):
    return context.browser.visit("https://www.kayak.com.co/")
