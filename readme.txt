This cairo addon requires cairo 2.x binary library for working.

For Linux, cairographics should already be installed by default in some distros.
If not, install using (debian and its derivatives) in terminal.

$ sudo aptitude install libcairo2

For Windows, type the following in a J session to download and install
required dll from Jsoftware server.

load 'graphics/cairo'
install_jcairo_''

To verify successful installation, type 

testcairo_jcairo_''

and it should return 1
