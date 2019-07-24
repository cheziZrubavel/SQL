USE [STA]
GO

/****** Object:  View [dbo].[FuelExpense_View]    Script Date: 06/25/2019 17:15:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


ALTER VIEW [dbo].[FuelExpense_View] as

select FirstName, LastName, Licensing_Number, ROWID,
ISNULL (cast([�����_�����]as nvarchar), '') as december_sonol,
ISNULL (cast([������_�����]as nvarchar), '') as november_sonol,
ISNULL (cast([�������_�����]as nvarchar), '') as october_sonol,
ISNULL (cast([������_�����]as nvarchar), '') as september_sonol,
ISNULL (cast([������_�����]as nvarchar), '') as august_sonol,
ISNULL (cast([����_�����]as nvarchar), '') as yuli_sonol,
ISNULL (cast([����_�����]as nvarchar), '') as yuni_sonol,
ISNULL (cast([���_�����]as nvarchar), '') as may_sonol,
ISNULL (cast([�����_�����]as nvarchar), '') as april_sonol,
ISNULL (cast([���_�����]as nvarchar), '') as march_sonol,
ISNULL (cast([������_�����]as nvarchar), '') as february_sonol,
ISNULL (cast([�����_�����]as nvarchar), '') as january_sonol,
ISNULL (cast([�����_��]as nvarchar), '') as december_paz,
ISNULL (cast([������_��]as nvarchar), '') as november_paz,
ISNULL (cast([�������_��]as nvarchar), '') as october_paz,
ISNULL (cast([������_��]as nvarchar), '') as september_paz,
ISNULL (cast([������_��]as nvarchar), '') as august_paz,
ISNULL (cast([����_��]as nvarchar), '') as yuli_paz,
ISNULL (cast([����_��]as nvarchar), '') as yuni_paz,
ISNULL (cast([���_��]as nvarchar), '') as may_paz,
ISNULL (cast([�����_��]as nvarchar), '') as april_paz,
ISNULL (cast([���_��]as nvarchar), '') as march_paz,
ISNULL (cast([������_��]as nvarchar), '') as february_paz,
ISNULL (cast([�����_��]as nvarchar), '') as january_paz,
ISNULL (cast([�����_���]as nvarchar), '') as december_delek,
ISNULL (cast([������_���]as nvarchar), '') as november_delek,
ISNULL (cast([�������_���]as nvarchar), '') as october_delek,
ISNULL (cast([������_���]as nvarchar), '') as september_delek,
ISNULL (cast([������_���]as nvarchar), '') as august_delek,
ISNULL (cast([����_���]as nvarchar), '') as yuli_delek,
ISNULL (cast([����_���]as nvarchar), '') as yuni_delek,
ISNULL (cast([���_���]as nvarchar), '') as may_delek,
ISNULL (cast([�����_���]as nvarchar), '') as april_delek,
ISNULL (cast([���_���]as nvarchar), '') as march_delek,
ISNULL (cast([������_���]as nvarchar), '') as february_delek,
ISNULL (cast([�����_���]as nvarchar), '') as january_delek

 from (
 select cast(Fuel_Consumption_Last_Month as decimal(12,2)) as q1, 
 (CASE
WHEN MONTH(Mounth_Refueling) = 1 THEN '�����'
WHEN MONTH(Mounth_Refueling) = 2 THEN '������'
WHEN MONTH(Mounth_Refueling) = 3 THEN '���'
WHEN MONTH(Mounth_Refueling) = 4 THEN '�����'
WHEN MONTH(Mounth_Refueling) = 5 THEN '���'
WHEN MONTH(Mounth_Refueling) = 6 THEN '����'
WHEN MONTH(Mounth_Refueling) = 7 THEN '����'
WHEN MONTH(Mounth_Refueling) = 8 THEN '������'
WHEN MONTH(Mounth_Refueling) = 9 THEN '������'
WHEN MONTH(Mounth_Refueling) = 10 THEN '�������'
WHEN MONTH(Mounth_Refueling) = 11 THEN '������'
WHEN MONTH(Mounth_Refueling) = 12 THEN '�����'
END) + '_' +Fuel_Company as q2, FirstName, LastName, Licensing_Number, 0 as ROWID
from A_FUEL_EXPENSES_FOR_MANAGERS
  ) AS s
  PIVOT (SUM (q1)
FOR [q2] IN 
(�����_�����,������_�����,�������_�����,������_�����,������_�����,����_�����,����_�����,���_�����,�����_�����,���_�����,������_�����,�����_�����,
�����_��,������_��,���_��,�����_��,���_��,����_��,����_��,������_��,������_��,�������_��,������_��,�����_��,
�����_���,������_���,���_���,�����_���,���_���,����_���,����_���,������_���,������_���,�������_���,������_���,�����_���))
AS pvt 






GO


