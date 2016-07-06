docking_station = DockingStation.new
NameError: uninitialized constant DockingStation
	from (irb):1
	from /home/richard/.rvm/rubies/ruby-2.2.2/bin/irb:11:in <main>


Type of error --> NameError

File path --> /home/richard/.rvm/rubies/ruby-2.2.2/bin/

Line number -->  11

Meaning -->  Raised when a given name is invalid/ undefined/ undeclared

Solution -->  Create the DockingStation class before assigning to it

DockingStation = Class.new
