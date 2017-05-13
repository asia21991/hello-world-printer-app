import unittest
from selenium import webdriver

class GoogleTestCase(unittest.TestCase):

	def setUp(self):
		self.browser = webdriver.Firefox()
		self.addCleanup(self.browser.quit)
		
	def testPageTitle(self):
		self.browser.get('http://127.0.0.1:5000/')
		##self.assertln('Google', self.browser.title)
		
if __name__ == '__main__':
	unittest.main(verbosity=2)
	
