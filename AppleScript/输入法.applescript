--"ABC-QWERTZ" => "ABC - QWERTZ"
--"US Extended" => "ABC����չ��"
--"US" => "����"  "ABC" => "ABC"
--"USInternational-PC" => "���������� - PC��"
--"TibetanOtaniUS" => "���ģ�Otani��"
--"ABC-AZERTY" => "ABC - AZERTY"


set info to do shell script "plutil -p '/System/Library/Keyboard Layouts/AppleKeyboardLayouts.bundle/Contents/Resources/zh_CN.lproj/InfoPlist.strings' | grep 'ABC\\|US'"

display dialog info
