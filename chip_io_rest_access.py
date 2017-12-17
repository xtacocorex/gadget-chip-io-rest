# Module Imports
import CHIP_aREST.aREST as aREST

# Setup the Device Info
aREST.set_id('id4311')

# Start
aREST.RestApp(host="0.0.0.0",port=3000,debug=True)
