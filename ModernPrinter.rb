# Copyright (C) 2014 Wesleyan University
#
# This file is part of cmdr-devices.
#
# cmdr-devices is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# cmdr-devices is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with cmdr-devices. If not, see <http://www.gnu.org/licenses/>.

#---
#{
# "name": "ModernPrinter",
# "depends_on": "N/A",
# "description": "Provides the basis for monitoring all modern printers on campus",
# "author": "Tyler Harden",
# "email": "tharden@wesleyan.edu",
# "type": "Printer"
#}
#---

class ModernPrinter < Computer

  config do
    ip_addres :type => string
  end
  #current information
  state_var  :is_reachable,         :type => :string, :editable =>false
  state_var  :black_toner_level,    :type => :intiger, :editable => false
  state_var  :cyan_toner_level,     :type => :intiger, :editable => false
  state_var  :magenta_toner_level,  :type => :intiger, :ediable => false
  state_var  :yellow_toner_level,   :type => :intiger, :editable => false
  state_var  :is_out_of_paper,      :type => :boolean, :editable => false
  #other
  state_var  :model,                :type => :string,  :editable => false
  state_var  :serial_number,        :type => :string,  :editable => false

  def initiaize(options)
    super(options)
  end

end

