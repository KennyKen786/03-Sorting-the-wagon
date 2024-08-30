require_relative 'cookbook'
require_relative 'controller'
require_relative 'router'
require_relative 'view'

cookbook   = Cookbook.new
controller = Controller.new(cookbook)

router = Router.new(controller)

# Start the app
router.run
