#!/bin/bash
URL=https://IP	#Substitute your device42 IP Address or FQDN
USER='username'			#Substitute your username
PASS='password'			#Substitute your password

#Add a Building
curl -i -H "Accept: application/json" -X POST -d "name=New Haven DC" -d "address=123 main st" -d "contact_name=roger" -d "contact_phone=1234567890" -d "notes=super critical"  -u $USER:$PASS $URL/api/1.0/buildings/ --insecure

#Add 2 Rooms
curl -i -H "Accept: application/json" -X POST -d "name=1st floor" -d "notes=super critical"  -d "building=New Haven DC" -u $USER:$PASS $URL/api/1.0/rooms/ --insecure
curl -i -H "Accept: application/json" -X POST -d "name=2nd floor" -d "notes=super critical"  -d "building=New Haven DC" -u $USER:$PASS $URL/api/1.0/rooms/ --insecure

#Add 6 Vendors
curl -i -H "Accept: application/json" -X POST -d "name=device42 llc&home_page=http://www.device42.com/&contact_info=support@device42.com&escalation_1=+12037796342&notes=awesome"  -u $USER:$PASS $URL/api/1.0/vendors/ --insecure
curl -i -H "Accept: application/json" -X POST -d "name=APC Inc.&home_page=http://www.apc.com/&contact_info=support@apc.com&escalation_1=+1555555555&notes=awesome"  -u $USER:$PASS $URL/api/1.0/vendors/ --insecure
curl -i -H "Accept: application/json" -X POST -d "name=Dell&home_page=http://www.dell.com/&contact_info=support@dell.com&escalation_1=+1555555555&notes=awesome"  -u $USER:$PASS $URL/api/1.0/vendors/ --insecure
curl -i -H "Accept: application/json" -X POST -d "name=Cisco&home_page=http://www.cisco.com/&escalation_1=+1555555555"  -u $USER:$PASS $URL/api/1.0/vendors/ --insecure
curl -i -H "Accept: application/json" -X POST -d "name=Intel&escalation_1=+1555555555"  -u $USER:$PASS $URL/api/1.0/vendors/ --insecure
curl -i -H "Accept: application/json" -X POST -d "name=Western Digital&escalation_1=+1555555555"  -u $USER:$PASS $URL/api/1.0/vendors/ --insecure

#Add 4 Racks
curl -i -H "Accept: application/json" -X POST -d "name=RA1&room_id=1&size=42&manufacturer=APC Inc."  -u $USER:$PASS $URL/api/1.0/racks/ --insecure
curl -i -H "Accept: application/json" -X POST -d "name=RA2&room_id=1&size=42&manufacturer=APC Inc."  -u $USER:$PASS $URL/api/1.0/racks/ --insecure
curl -i -H "Accept: application/json" -X POST -d "name=RA3&room_id=1&size=48&manufacturer=APC Inc."  -u $USER:$PASS $URL/api/1.0/racks/ --insecure
curl -i -H "Accept: application/json" -X POST -d "name=RA4&room_id=1&size=52&manufacturer=APC Inc."  -u $USER:$PASS $URL/api/1.0/racks/ --insecure

#Add 7 Hardware Models
curl -i -H "Accept: application/json" -X POST -d "name=PE 1950&type=1&size=1&depth=1&part_no=123&watts=265&spec_url=www.dell.com&manufacturer=dell"  -u $USER:$PASS $URL/api/1.0/hardwares/ --insecure
curl -i -H "Accept: application/json" -X POST -d "name=PE 2950&type=1&size=2&depth=1&part_no=123&watts=365&spec_url=www.dell.com&manufacturer=dell"  -u $USER:$PASS $URL/api/1.0/hardwares/ --insecure
curl -i -H "Accept: application/json" -X POST -d "name=M1000e&type=1&size=8&depth=1&part_no=123&watts=465&spec_url=www.dell.com&manufacturer=dell"  -u $USER:$PASS $URL/api/1.0/hardwares/ --insecure
curl -i -H "Accept: application/json" -X POST -d "name=M100&type=2&blade_size=1&spec_url=www.dell.com&manufacturer=dell"  -u $USER:$PASS $URL/api/1.0/hardwares/ --insecure
curl -i -H "Accept: application/json" -X POST -d "name=2924XL&type=1&size=1&depth=1&part_no=123&watts=265&spec_url=www.cisco.com&manufacturer=cisco"  -u $USER:$PASS $URL/api/1.0/hardwares/ --insecure
curl -i -H "Accept: application/json" -X POST -d "name=3750&type=1&size=2&depth=1&part_no=123&watts=365&manufacturer=cisco"  -u $USER:$PASS $URL/api/1.0/hardwares/ --insecure
curl -i -H "Accept: application/json" -X POST -d "name=6509E&type=1&size=13&depth=1&part_no=123&watts=2265&spec_url=www.cisco.com&manufacturer=cisco"  -u $USER:$PASS $URL/api/1.0/hardwares/ --insecure

#Add 3 Customers
curl -i -H "Accept: application/json" -X POST -d "name=ABC Inc&contact_info=555 Technical Lane, Cool City.&notes=some notes here" -u $USER:$PASS $URL/api/1.0/customers/ --insecure
curl -i -H "Accept: application/json" -X POST -d "name=Networking Team" -u $USER:$PASS $URL/api/1.0/customers/ --insecure
curl -i -H "Accept: application/json" -X POST -d "name=Finance Group" -u $USER:$PASS $URL/api/1.0/customers/ --insecure

#Add a Custom Key for Customer
curl -i -H "Accept: application/json" -X PUT -d "key=custID&value=42&name=ABC Inc" -u $USER:$PASS $URL/api/1.0/custom_fields/customer/ --insecure

#Add a Custom Contact for Customer
curl -i -H "Accept: application/json" -X POST -d "name=Random Guy&phone=555-555-5555&address=123 main st&type=Technical&customer=ABC Inc&email=rick@d42.com" -u $USER:$PASS $URL/api/1.0/customers/contacts/ --insecure

#Add 3 Contracts
curl -i -H "Accept: application/json" -X PUT -d "name=device42 support contract&vendor=device42 llc&start_date=2012-12-21&end_date=2013-01-01&renew_date=2014-01-01&notes=test&cancel_policy=30 days&building=New Haven DC&customer=ABC Inc"  -u $USER:$PASS $URL/api/1.0/contracts/ --insecure
curl -i -H "Accept: application/json" -X PUT -d "name=dell support contract&vendor=dell&start_date=2012-12-21&end_date=2014-01-01&renew_date=2014-01-01&notes=test&building=New Haven DC&customer=ABC Inc"  -u $USER:$PASS $URL/api/1.0/contracts/ --insecure
curl -i -H "Accept: application/json" -X PUT -d "name=cisco support contract&vendor=cisco&start_date=2012-12-21&end_date=2014-01-01&renew_date=2014-01-01&notes=test&building=New Haven DC&customer=Networking Team"  -u $USER:$PASS $URL/api/1.0/contracts/ --insecure

#Add a Purchase
curl -i -H "Accept: application/json" -X PUT -d "order_no=i856&reseller=device42 llc&start_date=2012-12-21&end_date=2013-01-01&renew_date=2014-01-01&notes=test&contract_id=1"   -u $USER:$PASS $URL/api/1.0/purchases/ --insecure

#Add 8 Devices
curl -i -H "Accept: application/json" -X POST -d "name=nh-demo-01&hardware=PE 1950&manufacturer=dell&serial_no=D4214212&aliases=nh-demo-01.device42.pvt,www.device42.com" -u $USER:$PASS $URL/api/device/ --insecure
curl -i -H "Accept: application/json" -X POST -d "name=nh-demo-02&hardware=PE 2950&manufacturer=dell&serial_no=D4214213" -u $USER:$PASS $URL/api/device/ --insecure
curl -i -H "Accept: application/json" -X POST -d "name=nh-demo-02&hardware=PE 2950&manufacturer=dell&serial_no=D4214213&aliases=nh-demo-02.device42.pvt" -u $USER:$PASS $URL/api/device/ --insecure
curl -i -H "Accept: application/json" -X POST -d "name=nh-demo-03&hardware=M1000e&manufacturer=dell&serial_no=D4214214&is_it_blade_host=yes&aliases=nh-demo-03.device42.pvt&contract_id=2" -u $USER:$PASS $URL/api/device/ --insecure
curl -i -H "Accept: application/json" -X POST -d "name=nh-demo-05&hardware=M100&manufacturer=dell&serial_no=D4214215&type=blade&blade_host=nh-demo-03&slot_no=1&is_it_virtual_host=yes&aliases=nh-demo-05.device42.pvt" -u $USER:$PASS $URL/api/device/ --insecure
curl -i -H "Accept: application/json" -X POST -d "name=nh-demo-06&hardware=M100&manufacturer=dell&serial_no=D4214216&type=blade&blade_host=nh-demo-03&slot_no=2&aliases=nh-demo-06.device42.pvt" -u $USER:$PASS $URL/api/device/ --insecure
curl -i -H "Accept: application/json" -X POST -d "name=nh-demo-07&hardware=M100&manufacturer=dell&serial_no=D4214217&type=blade&blade_host=nh-demo-03&slot_no=3&aliases=nh-demo-07.device42.pvt" -u $USER:$PASS $URL/api/device/ --insecure
curl -i -H "Accept: application/json" -X POST -d "name=nh-demo-08&type=virtual&virtual_host=nh-demo-05&aliases=nh-demo-08.device42.pvt" -u $USER:$PASS $URL/api/device/ --insecure

#Add a Device Custom Field
curl -i -H "Accept: application/json" -X PUT -d "name=nh-demo-08&key=Project&value=Callme&value2=MayBe&notes=I threw a wish in the well Don't ask me"  -u $USER:$PASS $URL/api/1.0/device/custom_field/ --insecure

#Add another Device Custom Field Using an Alias
curl -i -H "Accept: application/json" -X PUT -d "name=nh-demo-01.device42.pvt&key=Project&value=Manhattan&value2=MayBe&notes=I threw a wish in the well Don't ask me"  -u $USER:$PASS $URL/api/1.0/device/custom_field/ --insecure

#Add a Device URL
curl -i -H "Accept: application/json" -X POST -d "device=nh-demo-08.device42.pvt&type=http&host=www.device42.com&port=8080&url_suffix=awesome&notes=cool" -u $USER:$PASS $URL/api/1.0/device/url/ --insecure

#Add a Device to a Rack
curl -i -H "Accept: application/json" -X POST -d "device=nh-demo-01.device42.pvt&rack_id=1&start_at=2&orientation=back" -u $USER:$PASS $URL/api/1.0/device/rack/ --insecure

#Add an Asset (a Patch Panel)
curl -i -H "Accept: application/json" -X POST -d "name=nh-asset-01&type=patch panel&vendor=dell&service_level=In Production&rack_id=1&start_at=4&size=2&customer=abc inc&serial_no=1234&asset_no=d42"  -u $USER:$PASS $URL/api/1.0/assets/ --insecure

#Add an End User
curl -i -H "Accept: application/json" -X POST -d "name=john smith&email=jsmith@example.com&contact=nobody knows&location=basement&notes=he has the red stapler" -u $USER:$PASS $URL/api/1.0/endusers/ --insecure

#Add an Asset Lifecycle Event
curl -i -H "Accept: application/json" -X PUT -d "asset_id=1&date=2013-02-02&type=Installed&user=john smith&notes=test 123"   -u $USER:$PASS $URL/api/1.0/lifecycle_event/ --insecure

#Add a Device Lifecycle Event
curl -i -H "Accept: application/json" -X PUT -d "device=nh-demo-01.device42.pvt&date=2013-02-02&type=Installed&notes=test 123"   -u $USER:$PASS $URL/api/1.0/lifecycle_event/ --insecure

#Add 2 Switch Devices
curl -i -H "Accept: application/json" -X POST -d "name=nh-switch-01&hardware=2924XL&manufacturer=cisco&serial_no=D42142S01&is_it_switch=yes&aliases=nh-switch-01.device42.pvt&contract_id=3" -u $USER:$PASS $URL/api/device/ --insecure
curl -i -H "Accept: application/json" -X POST -d "name=nh-switch-02&hardware=6509E&manufacturer=cisco&serial_no=D42142S02&is_it_switch=yes&aliases=nh-switch-02.device42.pvt&contract_id=3" -u $USER:$PASS $URL/api/device/ --insecure

#Add 2 VLANs
curl -i -H "Accept: application/json" -X POST -d "number=10&name=test&description=new created from the api&notes=really u need notes for this stuff?&switches=nh-switch-01,nh-switch-02"  -u $USER:$PASS $URL/api/1.0/vlans/ --insecure
curl -i -H "Accept: application/json" -X POST -d "number=20&description=new created from the api&switches=nh-switch-01,nh-switch-02"  -u $USER:$PASS $URL/api/1.0/vlans/ --insecure

#Add a Subnet
curl -i -H "Accept: application/json" -X POST  -d "network=10.10.40.0&type=static&mask_bits=24&name=Finance Group PCs&customer=Finance Group&description=restricted access&gateway=10.10.40.1"  -u $USER:$PASS $URL/api/1.0/subnets/ --insecure

#Add a IP Address
curl -i -H "Accept: application/json" -X POST -d "ipaddress=10.10.40.2&macaddress=112233445566&type=static&device=nh-demo-08.device42.pvt" -u $USER:$PASS $URL/api/ip/ --insecure

#Add a Switch Port to a Switch
curl -i -H "Accept: application/json" -X POST -d "port=fastethernet2/7&switch=nh-switch-01&description=test&vlan_ids=10,20"  -u $USER:$PASS $URL/api/1.0/switchports/ --insecure

#Add a Switch Port with a remote port
curl -i -H "Accept: application/json" -X POST -d "port=fastethernet2/8&switch=nh-switch-01&description=test&vlan_ids=10,20&remote_device=nh-switch-02&remote_port=fe1/1"  -u $USER:$PASS $URL/api/1.0/switchports/ --insecure

#Add a MAC Address
curl -i -H "Accept: application/json" -X POST -d "device=nh-demo-01.device42.pvt&macaddress=001122334455&vlan_id=12&port_name=eth0&port=fastethernet2/7&switch=nh-switch-01" -u $USER:$PASS $URL/api/1.0/macs/ --insecure

#Add an Application Component
curl -i -H "Accept: application/json" -X POST -d "name=SQLServer92&device=nh-demo-01.device42.pvt&notes=some notes here" -u $USER:$PASS $URL/api/1.0/appcomps/ --insecure

#Add a Custom Field for an Application Component
curl -i -H "Accept: application/json" -X PUT -d "name=SQLServer92&key=Project&value=Intranet Site&value2=In Dev&show_on_chart=yes&notes=Test notes" -u $USER:$PASS $URL/api/1.0/custom_fields/appcomp/ --insecure

#Add a Device Hardware CPU Component
curl -i -H "Accept: application/json" -X POST -d "device=nh-demo-01.device42.pvt&description=test description&count=2&speed=2300&cores=2&threads=4&part_no=123456&name=Intel Something&manufacturer=Intel" -u $USER:$PASS $URL/api/1.0/device/cpu/ --insecure

#Add a Device RAM Component
curl -i -H "Accept: application/json" -X POST -d "device=nh-demo-01.device42.pvt&count=4&size=2048&manufacturer=Dell"  -u $USER:$PASS $URL/api/1.0/device/ram/ --insecure         

#Add a Device Hard Disk Drive
curl -i -H "Accept: application/json" -X POST -d "device=nh-demo-01.device42.pvt&count=4&size=300&rpm=15k&manufacturer=Western Digital&raid_type=raid5&raid_group=10&description=Slots0-4"  -u $USER:$PASS $URL/api/1.0/device/hdd/ --insecure
 
#Add a Device Hardware Component
curl -i -H "Accept: application/json" -X POST -d "device=nh-demo-01.device42.pvt&count=4&name=Quad Port&connectivity=PCI&part_no=1234&manufacturer=Dell&type=nic&firmware=3.2.3&model_no=d42"  -u $USER:$PASS $URL/api/1.0/device/hw_component/ --insecure

#Add a Purchase to a Device using a Device Alias
curl -i -H "Accept: application/json" -X PUT -d "order_no=i856&reseller=device42 llc&start_date=2012-12-21&end_date=2013-01-01&renew_date=2014-01-01&notes=test&device=nh-demo-01.device42.pvt" -u $USER:$PASS $URL/api/1.0/purchases/ --insecure

