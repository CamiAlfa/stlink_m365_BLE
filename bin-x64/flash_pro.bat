@echo "you have 10 seconds to connect wires"
@timeout 10
@openocd.exe -f ../scripts/interface/stlink-v2.cfg -c "transport select hla_swd" -f ../scripts/target/nrf51.cfg -c "init" -c "reset halt" -c "nrf51 mass_erase" -c "program pro074_flash.hex verify" -c "reset run" -c "exit"
@echo "If board doesnt flash press any key to try again, check wires and make sure to remove c2"

@echo "you have 10 seconds to connect wires"
@timeout 10
@openocd.exe -f ../scripts/interface/stlink-v2.cfg -f ../scripts/target/nrf51.cfg -c "init" -c "reset halt" -c "nrf51 mass_erase" -c "program pro074_flash.hex verify" -c "reset run" -c "exit"

@echo "you have 10 seconds to connect wires"
@timeout 10
@openocd.exe -f ../scripts/interface/stlink-v2.cfg -c "transport select hla_swd" -f ../scripts/target/nrf51.cfg -c "init" -c "reset halt" -c "nrf51 mass_erase" -c "program pro074_flash.hex verify" -c "reset run" -c "exit"
@echo "If board doesnt flash press any key to try again, check wires and make sure to remove c2"

@echo "you have 10 seconds to connect wires"
@timeout 10
@openocd.exe -f ../scripts/interface/stlink-v2.cfg -f ../scripts/target/nrf51.cfg -c "init" -c "reset halt" -c "nrf51 mass_erase" -c "program pro074_flash.hex verify" -c "reset run" -c "exit"

@echo "you have 10 seconds to connect wires"
@timeout 10
@openocd.exe -f ../scripts/interface/stlink-v2.cfg -c "transport select hla_swd" -f ../scripts/target/nrf51.cfg -c "init" -c "reset halt" -c "nrf51 mass_erase" -c "program pro074_flash.hex verify" -c "reset run" -c "exit"
@echo "If board doesnt flash press any key to try again, check wires and make sure to remove c2"

@echo "you have 10 seconds to connect wires"
@timeout 10
@openocd.exe -f ../scripts/interface/stlink-v2.cfg -f ../scripts/target/nrf51.cfg -c "init" -c "reset halt" -c "nrf51 mass_erase" -c "program pro074_flash.hex verify" -c "reset run" -c "exit"
@pause

