--V_Compliance_GFCScoreCard_KPI_V3
SELECT T.*,
       (CASE WHEN A.Score = 1 THEN 'Y' ELSE 'N' END) AS Flg_AdjustmentPositive,
	   (CASE WHEN B.SCORE = 1 THEN 'Y' ELSE 'N' END) AS Flg_AdjustmentNegative
  FROM [ZLAB_EDW].[dbo].[V_Compliance_GFCScoreCard_KPI_V3] AS T 
  LEFT JOIN [dbo].[V_Compliance_ScoreCard_Adjustment_Sam] AS A
  ON T.YearMonth = A.YearMonth
  AND T.UserID = A.UserID
  AND T.serialnum = A.Adjustment_detail
  AND T.issues = A.Issue_Source
  AND A.Issue_Type_Source = 'GFCScoreCard'
  LEFT JOIN [dbo].[ODS_Compliance_Adjustment_Negative_202410_202509] AS B
  ON T.YearMonth = B.YEARMONTH
  AND T.UserID = B.EMP_ID
  AND T.serialnum = B.ACTIVITYNO
  AND T.issues = B.ISSUECODE
  AND B.TYPE = 'Applicant'

--V_Compliance_TranscriptScoreCard_KPI_V3(date type modify to do)
SELECT T.[YearMonth]
      ,[ScoredYearmonth]
      ,[OrgType]
      ,[SubOrgType]
      ,[AccessDesc]
      ,[TerritoryL1]
      ,[TerritoryL1Name]
      ,[TerritoryUserL1]
      ,[TerritoryUserNameL1]
      ,[TerritoryUserL1_userpkid]
      ,[TerritoryL2]
      ,[TerritoryL2Name]
      ,[TerritoryUserL2]
      ,[TerritoryUserNameL2]
      ,[TerritoryUserL2_userpkid]
      ,[TerritoryL3]
      ,[TerritoryL3Name]
      ,[TerritoryUserL3]
      ,[TerritoryUserNameL3]
      ,[TerritoryUserL3_userpkid]
      ,[TerritoryL4]
      ,[TerritoryL4Name]
      ,[TerritoryUserL4]
      ,[TerritoryUserNameL4]
      ,[TerritoryUserL4_userpkid]
      ,[TerritoryL5]
      ,[TerritoryL5Name]
      ,[TerritoryUserL5]
      ,[TerritoryUserNameL5]
      ,[TerritoryUserL5_userpkid]
      ,T.[UserID]
      ,CONVERT(VARCHAR(10),[CompletedDate],23) AS [CompletedDate]
      ,CONVERT(VARCHAR(10),[DueDate],23) AS [DueDate]
      ,CONVERT(VARCHAR(10),[AssignedDate],23) AS [AssignedDate]
      ,[TranscriptStatus]
      ,[TrainingID]
      ,T.[TrainingTitle]
      ,T.[TrainingType]
      ,[UserName]
      ,[userpkid_list]
      ,(CASE WHEN A.Score = 1 THEN 'Y' ELSE 'N' END) AS Flg_AdjustmentPositive
	  ,(CASE WHEN B.SCORE = 1 THEN 'Y' ELSE 'N' END) AS Flg_AdjustmentNegative
FROM [dbo].[V_Compliance_TranscriptScoreCard_KPI_V3] AS T
INNER JOIN [ZLAB_EDW].[dbo].[ODS_Compliance_TrainingList] AS S
ON T.[TrainingTitle] = S.TRAININGTITLE
AND T.[TrainingType] = S.TRAININGTYPE
LEFT JOIN [dbo].[V_Compliance_ScoreCard_Adjustment_Sam] AS A 
ON T.YearMonth = A.YearMonth
AND T.UserID = A.UserID
AND T.TrainingTitle = A.Adjustment_detail
AND A.Issue_Source = '合规培训'
AND A.Issue_Type_Source = 'TranscriptScoreCard'
LEFT JOIN [dbo].[ODS_Compliance_Adjustment_Negative_202410_202509] AS B
 ON T.YearMonth = B.YEARMONTH
AND T.UserID = B.EMP_ID
AND T.TrainingTitle = B.ACTIVITYNO
AND B.ISSUECODE = '合规培训'
AND B.TYPE = 'Applicant';

--V_Compliance_PharmeyesMeetingScoreCard_KPI_V3
SELECT T.*,
       (CASE WHEN A.Score = 1 THEN 'Y' ELSE 'N' END) AS Flg_AdjustmentPositive,
	   (CASE WHEN B.SCORE = 1 THEN 'Y' ELSE 'N' END) AS Flg_AdjustmentNegative
FROM [dbo].[V_Compliance_PharmeyesMeetingScoreCard_KPI_V3] AS T
  LEFT JOIN [dbo].[V_Compliance_ScoreCard_Adjustment_Sam] AS A
  ON T.YearMonth = A.YearMonth
  AND T.UserID = A.UserID
  AND T.ActivityNo = A.Adjustment_detail
  AND T.issues = A.Issue_Source
  AND A.Issue_Type_Source = 'PharmeyesMeetingScoreCard'
  LEFT JOIN [dbo].[ODS_Compliance_Adjustment_Negative_202410_202509] AS B
  ON T.YearMonth = B.YEARMONTH
  AND T.UserID = B.EMP_ID
  AND T.ActivityNo = B.ACTIVITYNO
  AND T.issues = B.ISSUECODE
  AND B.TYPE = 'Applicant';

 --[V_Compliance_MeetingQualityScorecard_KPI_V3]
SELECT T.*,
       (CASE WHEN A.Score = 1 THEN 'Y' ELSE 'N' END) AS Flg_AdjustmentPositive,
	   (CASE WHEN B.SCORE = 1 THEN 'Y' ELSE 'N' END) AS Flg_AdjustmentNegative
FROM [dbo].[V_Compliance_MeetingQualityScorecard_KPI_V3] AS T
  LEFT JOIN [dbo].[V_Compliance_ScoreCard_Adjustment_Sam] AS A
  ON T.YearMonth = A.YearMonth
  AND T.UserID = A.UserID
  AND T.ActivityNo = A.Adjustment_detail
  AND T.issues = A.Issue_Source
  AND A.Issue_Type_Source = 'MeetingQualityScorecard'
  LEFT JOIN [dbo].[ODS_Compliance_Adjustment_Negative_202410_202509] AS B
  ON T.YearMonth = B.YEARMONTH
  AND T.UserID = B.EMP_ID
  AND T.ActivityNo = B.ACTIVITYNO
  AND T.issues = B.ISSUECODE
  AND B.TYPE = 'Applicant';

---------------------------------
 SELECT *
 FROM [dbo].[V_Compliance_ScoreCard_Adjustment_Sam];

 SELECT *
 FROM [dbo].[ODS_Compliance_Adjustment_Negative_202410_202509];
