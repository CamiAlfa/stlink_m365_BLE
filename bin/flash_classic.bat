@echo "you have 5 seconds to connect wires"
@timeout 5
@openocd.exe -f ../scripts/interface/stlink-v2.cfg -c "transport select hla_swd" -f ../scripts/target/nrf51.cfg -c "init" -c "reset halt" -c "nrf51 mass_erase" -c "program classic073_flash.hex verify" -c "reset run" -c "exit"
@echo "If board doesnt flash press any key to try again check wires and make sure to remove c16"
@pause
@echo "you have 5 seconds to connect wires"
@timeout 5
@openocd.exe -f ../scripts/interface/stlink-v2.cfg -f ../scripts/target/nrf51.cfg -c "init" -c "reset halt" -c "nrf51 mass_erase" -c "program classic073_flash.hex verify" -c "reset run" -c "exit"
@pause