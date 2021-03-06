state CT_Tags::TCA_A.Link_To_Global (Test : in  integer) is
instGSF = find-one Global_SubF where idGSF = 1
instTS  = find-one TCA_Super where idTS = 1

link instTS R6 instGSF

newGSF = instTS -> R6.Global_SubF

if newGSF != UNDEFINED then
   [] = RPT2:Test_Passed["Link succesefull", Test, 0]
else
   [] = RPT3:Test_Failed["Link unsuccesefull", Test, -10]
endif

generate TCAA1:Link_To_Global(Test) to this