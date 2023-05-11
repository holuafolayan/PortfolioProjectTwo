SELECT *
FROM BOEReport..BusinessCredit_Gross$

SELECT *
FROM BOEReport..['Repayment $']

SELECT *
FROM BOEReport..['ODBalances $']


SELECT BCG.AHF,BCG.Man,BCG.[M&Q],BCG.EDU,BCG.WSRR,RP.[AHFRepayment  ],RP.[ ManRepayment],RP.[M&Qrepayment ],RP.[EduRepayment ],RP.WSRRepayment
FROM BOEReport..BusinessCredit_Gross$ BCG
INNER JOIN BOEReport..['Repayment $'] RP
ON BCG.Date=RP.Date
ORDER BY 1,2 ASC 


SELECT BCG.AHF,BCG.Man,BCG.[M&Q],BCG.EDU,BCG.WSRR,RP.[AHFRepayment  ],RP.[ ManRepayment],RP.[M&Qrepayment ],RP.[EduRepayment ],RP.WSRRepayment, 
ODB.AHF,ODB.MANU,ODB.[M&Q],ODB.EDU,ODB.[ WSRR]
FROM BOEReport..BusinessCredit_Gross$ BCG
INNER JOIN BOEReport..['Repayment $'] RP
ON BCG.Date=RP.Date
INNER JOIN BOEReport..['ODBalances $'] ODB
ON BCG.Date=ODB.Date
ORDER BY 1,2 DESC;


SELECT BCG.AHF,BCG.Man,BCG.[M&Q],BCG.EDU,BCG.WSRR, 
ODB.AHF,ODB.MANU,ODB.[M&Q],ODB.EDU,ODB.[ WSRR], 
LNR.AHF,LNR.MANU,LNR.[M&Q],LNR.EDU,LNR.[ WSRR],
RP.[AHFRepayment  ],RP.[ ManRepayment],
RP.[M&Qrepayment ],RP.[EduRepayment ],RP.WSRRepayment
FROM BOEReport..BusinessCredit_Gross$ BCG
INNER JOIN BOEReport..['Repayment $'] RP
ON BCG.Date=RP.Date
INNER JOIN BOEReport..['ODBalances $'] ODB
ON BCG.Date=ODB.Date
INNER JOIN BOEReport..[LoansNRepo$] LNR
ON BCG.Date=LNR.Date
ORDER BY 1,2 DESC 

SELECT *
FROM BOEReport..LoanODBal$ LoD;

SELECT *
FROM BOEReport..[Consumer$] CoN;

SELECT LoD.[ Bal(Loans and Repos) ],LoD.[Bal (Overdraft) ],CoN.[Outstanding Credit ]
FROM BOEReport..LoanODBal$ LoD
INNER JOIN BOEReport..[Consumer$] CoN
ON LoD.Date=CoN.Date



