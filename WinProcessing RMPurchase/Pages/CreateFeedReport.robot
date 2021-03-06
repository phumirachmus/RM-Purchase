*** Settings ***
Library             SikuliLibrary
Resource            ..\\Utils\\SikuliUtils.robot
Resource		    ..\\Utils\\TestUtils.robot
Resource		    ..\\Utils\\RobotUtils.robot
Resource		    ..\\Utils\\DateUtils.robot

*** Variables ***
#Picture
${FeedReport}        FeedReport.png
${AddBtn}            AddBtn.png
${MaterialType}      MaterialType.png
${Farm}              Farm.png
${Sump}              Sump.png
${Gen}               Gen.png
${AverageSize}       AverageSize.png
${InitialSize}       InitialSize.png
${FinalSize}         FinalSize.png
${Weight1}           Weight1.png
${SaveBtn}           SaveBtn.png
${YesBtn1}           YesBtn1.png
${OkBtn1}            OkBtn1.png
${ExitBTn}           ExitBTn.png
${PlanNo}            PlanNo.png

#Input
${MaterialInput}         A1
${FarmInput}             22-01-014580
${SumpInput}             1
${GenInput}              1
${AverageSizeInput}      25
${InitialSizeInput}      20
${FinalSizeInput}        30
${WeightInput}           1000

#Picture
${PurchasePlan}          PurchasePlan.png
${PurchaseTeam}          PurchaseTeam.png
${WeeklyPlan}            WeeklyPlan.png
${Material}              Material.png
${CatchDate}             CatchDate.png
${AddBtn1}               AddBtn1.png
${SelectBox}             SelectBox.png
${ShrimpFarm}            ShrimpFarm.png
${ShrimpNeed}            ShrimpNeed.png
${SaveBtn}               SaveBtn.png
${SaveBtn1}              SaveBtn1.png
${YesBtn2}               YesBtn2.png
${OkBtn1}                OkBtn1.png
${OkBtn2}                OkBtn2.png
${ExitBTn}               ExitBTn.png
${Question}              Question.png
${SortButton1}           SortButton1.png
${SortButton2}           SortButton2.png
${RequireButton}         RequireButton.png
${DescButton}            DescButton.png
${OkBtn3}                OkBtn3.png
${ClearButton}           ClearButton.png
${Gen2}                  Gen2.png
${test}                  test.png
${SortButton3}           SortButton3.png
${PlanHarvestDate}       PlanHarvestDate.png
${FarmDetail}            FarmDetail.png
${Sequence}              Sequence.png
${Scroll5}               Scroll5.png
${Key}                   Key.png
${RemainWeight}          RemainWeight.png   
${OweWeight}             OweWeight.png
${Scroll6}               Scroll6.png
             
        
#Input
${WeeklyPlanInput}       202051
${PurchaseTeamInput}     02
${MaterialInput1}        1120025
${CatchDateInput}        

*** Keywords ***
Choose Feed Report and Purchase Plan From Sidebar
    # Create Feed Report
    Double Click in Area with Sikuli -> ${FeedReport} ${FeedReport}
    Click Button with Sikuli -> ${AddBtn} timeout ${5} sec.
    Click Button with Sikuli -> ${MaterialType} timeout ${3} sec.
    ${GetPlan} =     Get text after image ${PlanNo} for another 40 pixels 
    Log To Console     ${GetPlan}
    sleep  2s
    Input text and Press Enter in ${MaterialType} with -> ${MaterialInput}
    Input text and Press Enter in ${Farm} with -> ${FarmInput}
    Input text and Press Enter in ${Sump} with -> ${SumpInput}
    ${Number} =     Get random number for 3
    Input text and Press Enter in ${Gen} with -> ${Number}
    #Input text and Press Enter in ${Gen} with -> ${GenInput}
    Input text and Press Enter in ${AverageSize} with -> ${AverageSizeInput}
    Input text and Press Enter in ${InitialSize} with -> ${InitialSizeInput}
    Input text and Press Enter in ${FinalSize} with -> ${FinalSizeInput}
    Double Click in Area with Sikuli and Deleted then Input Text-> ${Weight1} ${Weight1} with -> ${WeightInput}
    Click Button with Sikuli -> ${SaveBtn} timeout ${3} sec.
    Click Button with Sikuli -> ${YesBtn1} timeout ${3} sec.
    Click Button with Sikuli -> ${OkBtn1} timeout ${3} sec.
    Click Button with Sikuli -> ${ExitBTn} timeout ${3} sec.
    Click Button with Sikuli -> ${ExitBTn} timeout ${3} sec.
    Click Button with Sikuli -> ${OkBtn1} timeout ${3} sec.
    [Return]    ${Number}
    # Choose Purchase Plan From Sidebar 
    Double Click in Area with Sikuli -> ${PurchasePlan} ${PurchasePlan}
    Input text and Press Enter in ${WeeklyPlan} with -> ${GetPlan}
    Input text and Press Enter in ${PurchaseTeam} with -> ${PurchaseTeamInput}
    Click Button with Sikuli -> ${AddBtn1} timeout ${5} sec.
    Click Button with Sikuli -> ${Material} timeout ${5} sec.
    sleep     1s
    Input text and Press Enter in ${Material} with -> ${MaterialInput1}
    ${CatchDateInput} =      Get buddhist today
    Input text and Press Enter in ${CatchDate} with -> ${CatchDateInput}
    click in Area with Sikuli -> ${SortButton1} ${SortButton2} 
    Click Button with Sikuli -> ${ClearButton} timeout ${3} sec.
    Click Button with Sikuli -> ${RequireButton} timeout ${3} sec.
    Click Button with Sikuli -> ${DescButton} timeout ${3} sec.
    Click Button with Sikuli -> ${OweWeight} timeout ${3} sec.
    Click Button with Sikuli -> ${DescButton} timeout ${3} sec.
    click Button with Sikuli -> ${OkBtn3} timeout ${3} sec. 
    click in Area with Sikuli -> ${ShrimpNeed} ${SelectBox} 
    click in Area with Sikuli -> ${SortButton3} ${SortButton2} 
    Click Button with Sikuli -> ${ClearButton} timeout ${3} sec.
    Click Button with Sikuli -> ${PlanHarvestDate} timeout ${3} sec.
    Click Button with Sikuli -> ${DescButton} timeout ${3} sec.
    click in Area with Sikuli -> ${Scroll6} ${Scroll5} 
    Click Button with Sikuli -> ${RemainWeight} timeout ${3} sec.
    Click Button with Sikuli -> ${DescButton} timeout ${3} sec.
    click Button with Sikuli -> ${OkBtn3} timeout ${3} sec.
    click in Area with Sikuli -> ${FarmDetail} ${SelectBox}   
    Click Button with Sikuli -> ${SaveBtn} timeout ${3} sec.
    Click in Area with Sikuli -> ${Question} ${YesBtn2}  
    Click Button with Sikuli -> ${SaveBtn1} timeout ${3} sec.
    Click in Area with Sikuli -> ${Question} ${YesBtn2}  
    Click Button with Sikuli -> ${OkBtn2} timeout ${3} sec.
    Click Button with Sikuli -> ${ExitBTn} timeout ${3} sec.
    Click Button with Sikuli -> ${OkBtn1} timeout ${3} sec.

