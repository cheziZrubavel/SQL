USE [STA]
GO

/****** Object:  View [dbo].[FuelExpense_View]    Script Date: 06/25/2019 17:15:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


ALTER VIEW [dbo].[FuelExpense_View] as

select FirstName, LastName, Licensing_Number, ROWID,
ISNULL (cast([דצמבר_סונול]as nvarchar), '') as december_sonol,
ISNULL (cast([נובמבר_סונול]as nvarchar), '') as november_sonol,
ISNULL (cast([אוקטובר_סונול]as nvarchar), '') as october_sonol,
ISNULL (cast([ספטמבר_סונול]as nvarchar), '') as september_sonol,
ISNULL (cast([אוגוסט_סונול]as nvarchar), '') as august_sonol,
ISNULL (cast([יולי_סונול]as nvarchar), '') as yuli_sonol,
ISNULL (cast([יוני_סונול]as nvarchar), '') as yuni_sonol,
ISNULL (cast([מאי_סונול]as nvarchar), '') as may_sonol,
ISNULL (cast([אפריל_סונול]as nvarchar), '') as april_sonol,
ISNULL (cast([מרץ_סונול]as nvarchar), '') as march_sonol,
ISNULL (cast([פברואר_סונול]as nvarchar), '') as february_sonol,
ISNULL (cast([ינואר_סונול]as nvarchar), '') as january_sonol,
ISNULL (cast([דצמבר_פז]as nvarchar), '') as december_paz,
ISNULL (cast([נובמבר_פז]as nvarchar), '') as november_paz,
ISNULL (cast([אוקטובר_פז]as nvarchar), '') as october_paz,
ISNULL (cast([ספטמבר_פז]as nvarchar), '') as september_paz,
ISNULL (cast([אוגוסט_פז]as nvarchar), '') as august_paz,
ISNULL (cast([יולי_פז]as nvarchar), '') as yuli_paz,
ISNULL (cast([יוני_פז]as nvarchar), '') as yuni_paz,
ISNULL (cast([מאי_פז]as nvarchar), '') as may_paz,
ISNULL (cast([אפריל_פז]as nvarchar), '') as april_paz,
ISNULL (cast([מרץ_פז]as nvarchar), '') as march_paz,
ISNULL (cast([פברואר_פז]as nvarchar), '') as february_paz,
ISNULL (cast([ינואר_פז]as nvarchar), '') as january_paz,
ISNULL (cast([דצמבר_דלק]as nvarchar), '') as december_delek,
ISNULL (cast([נובמבר_דלק]as nvarchar), '') as november_delek,
ISNULL (cast([אוקטובר_דלק]as nvarchar), '') as october_delek,
ISNULL (cast([ספטמבר_דלק]as nvarchar), '') as september_delek,
ISNULL (cast([אוגוסט_דלק]as nvarchar), '') as august_delek,
ISNULL (cast([יולי_דלק]as nvarchar), '') as yuli_delek,
ISNULL (cast([יוני_דלק]as nvarchar), '') as yuni_delek,
ISNULL (cast([מאי_דלק]as nvarchar), '') as may_delek,
ISNULL (cast([אפריל_דלק]as nvarchar), '') as april_delek,
ISNULL (cast([מרץ_דלק]as nvarchar), '') as march_delek,
ISNULL (cast([פברואר_דלק]as nvarchar), '') as february_delek,
ISNULL (cast([ינואר_דלק]as nvarchar), '') as january_delek

 from (
 select cast(Fuel_Consumption_Last_Month as decimal(12,2)) as q1, 
 (CASE
WHEN MONTH(Mounth_Refueling) = 1 THEN 'ינואר'
WHEN MONTH(Mounth_Refueling) = 2 THEN 'פברואר'
WHEN MONTH(Mounth_Refueling) = 3 THEN 'מרץ'
WHEN MONTH(Mounth_Refueling) = 4 THEN 'אפריל'
WHEN MONTH(Mounth_Refueling) = 5 THEN 'מאי'
WHEN MONTH(Mounth_Refueling) = 6 THEN 'יוני'
WHEN MONTH(Mounth_Refueling) = 7 THEN 'יולי'
WHEN MONTH(Mounth_Refueling) = 8 THEN 'אוגוסט'
WHEN MONTH(Mounth_Refueling) = 9 THEN 'ספטמבר'
WHEN MONTH(Mounth_Refueling) = 10 THEN 'אוקטובר'
WHEN MONTH(Mounth_Refueling) = 11 THEN 'נובמבר'
WHEN MONTH(Mounth_Refueling) = 12 THEN 'דצמבר'
END) + '_' +Fuel_Company as q2, FirstName, LastName, Licensing_Number, 0 as ROWID
from A_FUEL_EXPENSES_FOR_MANAGERS
  ) AS s
  PIVOT (SUM (q1)
FOR [q2] IN 
(דצמבר_סונול,נובמבר_סונול,אוקטובר_סונול,ספטמבר_סונול,אוגוסט_סונול,יולי_סונול,יוני_סונול,מאי_סונול,אפריל_סונול,מרץ_סונול,פברואר_סונול,ינואר_סונול,
ינואר_פז,פברואר_פז,מרץ_פז,אפריל_פז,מאי_פז,יוני_פז,יולי_פז,אוגוסט_פז,ספטמבר_פז,אוקטובר_פז,נובמבר_פז,דצמבר_פז,
ינואר_דלק,פברואר_דלק,מרץ_דלק,אפריל_דלק,מאי_דלק,יוני_דלק,יולי_דלק,אוגוסט_דלק,ספטמבר_דלק,אוקטובר_דלק,נובמבר_דלק,דצמבר_דלק))
AS pvt 






GO


