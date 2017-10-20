Facter.add('domain2') do
  confine :osfamily => :windows
  setcode do
    begin
      require 'win32ole'
      wmi = WIN32OLE.connect("winmgmts:\\\\.\\root\\cimv2")
      domaindata = wmi.ExecQuery("SELECT * FROM Win32_ComputerSystem")
      domaindata.domain
    rescue
    end
  end
end
