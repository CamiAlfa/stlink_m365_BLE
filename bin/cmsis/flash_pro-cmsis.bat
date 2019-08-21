@echo "you have 10 seconds to connect wires"
@timeout 10
@openocd.exe -f ../scripts/interface/cmsis-dap.cfg -f ../scripts/target/nrf51.cfg -c "init" -c "reset halt" -c "nrf51 mass_erase" -c "program pro074_flash.hex verify" -c "reset run" -c "exit"
@echo "If board doesnt flash press any key to try again at lower speed"
@pause
@echo "now we are going to try slow mode, you have 10 seconds to connect wires"
@timeout 10
@openocd.exe -f ../scripts/interface/cmsis-dap.cfg -f ../scripts/target/nrf51_100k.cfg -c "init" -c "reset halt" -c "nrf51 mass_erase" -c "program pro074_flash.hex verify" -c "reset run" -c "exit"
@pause