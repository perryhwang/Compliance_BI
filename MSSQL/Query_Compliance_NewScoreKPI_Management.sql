WITH MergeData AS (
--KPI1 PharmeyesMeetingScoreCard
SELECT [YearMonth]
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
      ,[UserID]
--      ,[MeetingName]
--      ,[IsSelected]
--      ,[issues]
--      ,[issues_Flg]
--      ,[issues_i]
      ,[ActivityNo]
--      ,[CheckVersion]
--      ,[Confirmed]
      ,[UserName]
      ,[userpkid_list]
      ,1 AS KPI 
      ,'PharmeyesMeetingScoreCard' AS KPIDesc
      ,'' AS Comments
	  ,(CASE WHEN SUM([issues_Flg])>1 THEN 1 ELSE SUM([issues_Flg]) END)  AS IssueScore 
       ,STRING_AGG([issues], ',') WITHIN GROUP (ORDER BY [issues]) AS issueslist
  FROM [ZLAB_EDW].[dbo].[V_Compliance_PharmeyesMeetingScoreCard_KPI_V3]
  GROUP BY
       [YearMonth]
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
      ,[UserID]
--      ,[MeetingName]
--      ,[IsSelected]
--      ,[issues]
--      ,[issues_Flg]
--      ,[issues_i]
      ,[ActivityNo]
--      ,[CheckVersion]
--      ,[Confirmed]
      ,[UserName]
      ,[userpkid_list]

UNION ALL

--KPI2 MeetingQualityScorecard
SELECT [YearMonth]
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
      ,[UserID]
--      ,[MeetingName]
--      ,[IsSelected]
--      ,[issues]
--      ,[issues_Flg]
--      ,[issues_i]
      ,[ActivityNo]
--      ,[CheckVersion]
--      ,[Confirmed]
      ,[UserName]
      ,[userpkid_list]
      ,2 AS KPI 
      ,'MeetingQualityScorecard' AS KPIDesc
      ,'' AS Comments
	  ,(CASE WHEN SUM([issues_Flg])>1 THEN 1 ELSE SUM([issues_Flg]) END)  AS IssueScore 
       ,STRING_AGG([issues], ',') WITHIN GROUP (ORDER BY [issues]) AS issueslist
  FROM [ZLAB_EDW].[dbo].[V_Compliance_MeetingQualityScorecard_KPI_V3]
  GROUP BY
       [YearMonth]
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
      ,[UserID]
--      ,[MeetingName]
--      ,[IsSelected]
--      ,[issues]
--      ,[issues_Flg]
--      ,[issues_i]
      ,[ActivityNo]
--      ,[CheckVersion]
--      ,[Confirmed]
      ,[UserName]
      ,[userpkid_list]

UNION ALL
 --KPI3 GFCScoreCard
SELECT [YearMonth]
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
      ,[UserID]
--      ,[MeetingName]
--      ,[IsSelected]
--      ,[issues]
--      ,[issues_Flg]
--      ,[issues_i]
       ,[serialnum] as [ActivityNo]
--      ,[CheckVersion]
--      ,[Confirmed]
      ,[UserName]
      ,[userpkid_list]
      ,3 AS KPI 
      ,'GFCScoreCard' AS KPIDesc
      ,'' AS Comments
	  ,(CASE WHEN SUM([issues_Flg])>1 THEN 1 ELSE SUM([issues_Flg]) END)  AS IssueScore 
       ,STRING_AGG([issues], ',') WITHIN GROUP (ORDER BY [issues]) AS issueslist
  FROM [ZLAB_EDW].[dbo].[V_Compliance_GFCScoreCard_KPI_V3]
  GROUP BY
       [YearMonth]
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
      ,[UserID]
--      ,[MeetingName]
--      ,[IsSelected]
--      ,[issues]
--      ,[issues_Flg]
--      ,[issues_i]
      ,[serialnum]
--      ,[CheckVersion]
--      ,[Confirmed]
      ,[UserName]
      ,[userpkid_list]

UNION ALL

--KPI4 TranscriptScoreCard
SELECT [YearMonth]
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
      ,[UserID]
--      ,[MeetingName]
--      ,[IsSelected]
--      ,[issues]
--      ,[issues_Flg]
--      ,[issues_i]
       ,[ActivityNo]
--      ,[CheckVersion]
--      ,[Confirmed]
      ,[UserName]
      ,[userpkid_list]
      ,4 AS KPI 
      ,'TranscriptScoreCard' AS KPIDesc
      ,'' AS Comments
	  ,[issues_Flg] AS IssueScore 
      ,(CASE WHEN [issues_Flg] = 0 THEN '' ELSE '合规培训' END) AS issueslist

FROM
(
SELECT DISTINCT
       [YearMonth]
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
      ,[UserID]
--      ,[MeetingName]
--      ,[IsSelected]
--      ,[issues]
--      ,[issues_Flg]
--      ,[issues_i]
       ,bb.TRAININGTITLE as [ActivityNo]
--      ,[CheckVersion]
--      ,[Confirmed]
      ,aa.[UserName]
      ,aa.[userpkid_list]
 --     ,4 AS KPI 
 --     ,'TranscriptScoreCard' AS KPIDesc
--      ,'' AS Comments
	  ,(CASE WHEN ((LEN([CompletedDate]) > 0 AND DATEDIFF(DAY, [CompletedDate], [DueDate]) < 0) 
	  OR (LEN([CompletedDate]) = 0 AND DATEDIFF(DAY, GETDATE(), [DueDate]) < 0) ) AND bb.KPIFLAG = 'Y'
			THEN 1 
			ELSE 0 
		END) AS [issues_Flg]

  FROM [ZLAB_EDW].[dbo].[V_Compliance_TranscriptScoreCard_KPI_V3] AS aa 
  LEFT JOIN [ZLAB_EDW].[dbo].[ODS_Compliance_TrainingList] AS bb
  ON aa.[TrainingTitle] = bb.TRAININGTITLE
  AND aa.[TrainingType] = bb.TRAININGTYPE
 ) AS T

),
AdjustmentsPositive AS (
 --AdjustmentsPositive
    SELECT
        YearMonth,
        UserID,
        Adjustment_detail AS ActivityNo,
        Issue_Type_Source AS KPIDesc,
        STRING_AGG(Issue_Source, ',') WITHIN GROUP (ORDER BY Issue_Source) AS issueslist,
        Score
    FROM [ZLAB_EDW].[dbo].[V_Compliance_ScoreCard_Adjustment_Sam_v3]
    WHERE State = 'Approved'
    GROUP BY 
        YearMonth,
        UserID,
        Adjustment_detail,
        Issue_Type_Source,
        Score
),
AdjustmentsNegative AS(
 --AdjustmentsNegative
/*SELECT
        [YearMonth]
	   ,Emp_No as UserID
      ,ISNULL(SUM(Score),0) AS IssueScore

        FROM [ZLAB_EDW].[dbo].[ODS_Compliance_Scorecard_Adjustment_Negative]
		GROUP BY 
       [YearMonth]
	   ,Emp_No
	   */
SELECT 
      [YEARMONTH] AS YearMonth,
      [EMP_ID] AS UserID,
	  SUM(IssueScoreApplicant) AS IssueScoreApplicant,
	  SUM(IssueScoreApprover) AS IssueScoreApprover
FROM
(
SELECT DISTINCT 
      [YEARMONTH],
      [EMP_ID],
	  [ACTIVITYNO],
	  [TYPE],
      CASE [TYPE] WHEN 'Applicant' THEN 1 ELSE 0 END AS IssueScoreApplicant,
      CASE [TYPE] WHEN 'Approver' THEN 1 ELSE 0 END AS IssueScoreApprover
FROM [ZLAB_EDW].[dbo].[ODS_Compliance_Adjustment_Negative_202410_202509] 
) AS T
GROUP BY 
      [YEARMONTH],
      [EMP_ID]
),
V_Compliance_KPI_Person AS 
(
SELECT T.[YearMonth]
      ,T.[OrgType]
      ,T.[SubOrgType]
      ,T.[AccessDesc]
      ,T.[TerritoryL1]
      ,T.[TerritoryL1Name]
      ,T.[TerritoryUserL1]
      ,T.[TerritoryUserNameL1]
      ,T.[TerritoryUserL1_userpkid]
      ,T.[TerritoryL2]
      ,T.[TerritoryL2Name]
      ,T.[TerritoryUserL2]
      ,T.[TerritoryUserNameL2]
      ,T.[TerritoryUserL2_userpkid]
      ,T.[TerritoryL3]
      ,T.[TerritoryL3Name]
      ,T.[TerritoryUserL3]
      ,T.[TerritoryUserNameL3]
      ,T.[TerritoryUserL3_userpkid]
      ,T.[TerritoryL4]
      ,T.[TerritoryL4Name]
      ,T.[TerritoryUserL4]
      ,T.[TerritoryUserNameL4]
      ,T.[TerritoryUserL4_userpkid]
      ,T.[TerritoryL5]
      ,T.[TerritoryL5Name]
      ,T.[TerritoryUserL5]
      ,T.[TerritoryUserNameL5]
      ,T.[TerritoryUserL5_userpkid]
      ,T.[UserID]
--      ,[MeetingName]
--      ,[IsSelected]
--      ,[issues]
--      ,[issues_Flg]
--      ,[issues_i]
      ,T.[ActivityNo]
--      ,[CheckVersion]
--      ,[Confirmed]
      ,T.[UserName]
      ,T.[userpkid_list]
      ,T.KPI 
      ,T.KPIDesc
      ,T.Comments
	  ,IssueScore 
    ,ISNULL(A.Score, 0) AS PositiveIssueScore
FROM MergeData AS T
LEFT JOIN AdjustmentsPositive AS A
ON T.YearMonth = A.YearMonth
AND T.UserID = A.UserID
AND T.ActivityNo = A.ActivityNo
AND T.KPIDesc = A.KPIDesc
AND T.issueslist = A.issueslist
--AND (T.YearMonth Between '2024-04' AND '2024-06')
),
V_Compliance_KPI_Operation AS (
SELECT a.[YearMonth]
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
      ,a.[UserID]
      ,[UserName]
      ,UserLevel
      ,[userpkid_list]
	  ,CountByL1
	  ,CountByL2
	  ,CountByL3
	  ,CountByL4
	  ,IssueScoreKPI1
	  ,IssueScoreKPI2
	  ,IssueScoreKPI3
	  ,IssueScoreKPI4
	  ,IssueScorePositive
	  ,ISNULL(b.IssueScoreApplicant,0) + ISNULL(b.IssueScoreApprover,0) as IssueScoreNegative
	  ,ISNULL(b.IssueScoreApprover,0) as IssueScoreNegativeApprover
	  ,ISNULL(b.IssueScoreApplicant,0) as IssueScoreNegativePerson
	  ,(IssueScoreKPI1 + IssueScoreKPI2 + IssueScoreKPI3 + IssueScoreKPI4) as TotalIssueScore
	  ,(IssueScoreKPI1 + IssueScoreKPI2 + IssueScoreKPI3 + IssueScoreKPI4 + ISNULL(b.IssueScoreApplicant,0) + ISNULL(b.IssueScoreApprover,0) - IssueScorePositive) as TotalIssueScoreWithAdj --KP1(1~5)+Negative-Positive
	  --,SUM(IssueScoreKPI1 + IssueScoreKPI2 + IssueScoreKPI3 + IssueScoreKPI4 + ISNULL(b.IssueScoreApplicant,0) + ISNULL(b.IssueScoreApprover,0) - IssueScorePositive) OVER(PARTITION BY a.[YearMonth],[OrgType],[SubOrgType],[TerritoryUserL1]) - (IssueScoreKPI1 + IssueScoreKPI2 + IssueScoreKPI3 + IssueScoreKPI4 + ISNULL(b.IssueScoreApplicant,0) + ISNULL(b.IssueScoreApprover,0) - IssueScorePositive) as TotalTeamIssueScoreL1
	  --,SUM(IssueScoreKPI1 + IssueScoreKPI2 + IssueScoreKPI3 + IssueScoreKPI4 + ISNULL(b.IssueScoreApplicant,0) + ISNULL(b.IssueScoreApprover,0) - IssueScorePositive) OVER(PARTITION BY a.[YearMonth],[OrgType],[SubOrgType],[TerritoryUserL1],[TerritoryUserL2]) - (IssueScoreKPI1 + IssueScoreKPI2 + IssueScoreKPI3 + IssueScoreKPI4 + ISNULL(b.IssueScoreApplicant,0) + ISNULL(b.IssueScoreApprover,0) - IssueScorePositive) as TotalTeamIssueScoreL2
	  --,SUM(IssueScoreKPI1 + IssueScoreKPI2 + IssueScoreKPI3 + IssueScoreKPI4 + ISNULL(b.IssueScoreApplicant,0) + ISNULL(b.IssueScoreApprover,0) - IssueScorePositive) OVER(PARTITION BY a.[YearMonth],[OrgType],[SubOrgType],[TerritoryUserL1],[TerritoryUserL2],[TerritoryUserL3]) - (IssueScoreKPI1 + IssueScoreKPI2 + IssueScoreKPI3 + IssueScoreKPI4 + ISNULL(b.IssueScoreApplicant,0) + ISNULL(b.IssueScoreApprover,0) - IssueScorePositive) as TotalTeamIssueScoreL3
	  --,SUM(IssueScoreKPI1 + IssueScoreKPI2 + IssueScoreKPI3 + IssueScoreKPI4 + ISNULL(b.IssueScoreApplicant,0) + ISNULL(b.IssueScoreApprover,0) - IssueScorePositive) OVER(PARTITION BY a.[YearMonth],[OrgType],[SubOrgType],[TerritoryUserL1],[TerritoryUserL2],[TerritoryUserL3],[TerritoryUserL4]) - (IssueScoreKPI1 + IssueScoreKPI2 + IssueScoreKPI3 + IssueScoreKPI4 + ISNULL(b.IssueScoreApplicant,0) + ISNULL(b.IssueScoreApprover,0) - IssueScorePositive) as TotalTeamIssueScoreL4

	  
FROM
(
SELECT [YearMonth]
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
      ,[UserID]
      ,[UserName]
      ,UserLevel
      ,CONCAT([TerritoryUserL1_userpkid],',',[TerritoryUserL2_userpkid],',',[TerritoryUserL3_userpkid],',',[TerritoryUserL4_userpkid],',',[TerritoryUserL5_userpkid],',',[userpkid_list]) AS [userpkid_list]
	  ,COUNT([UserID]) OVER(PARTITION BY [YearMonth],[OrgType],[SubOrgType],[TerritoryUserL1])-1 AS CountByL1
	  ,COUNT([UserID]) OVER(PARTITION BY [YearMonth],[OrgType],[SubOrgType],[TerritoryUserL1],[TerritoryUserL2])-1 AS CountByL2
	  ,COUNT([UserID]) OVER(PARTITION BY [YearMonth],[OrgType],[SubOrgType],[TerritoryUserL1],[TerritoryUserL2],[TerritoryUserL3])-1 AS CountByL3
	  ,COUNT([UserID]) OVER(PARTITION BY [YearMonth],[OrgType],[SubOrgType],[TerritoryUserL1],[TerritoryUserL2],[TerritoryUserL3],[TerritoryUserL4])-1 AS CountByL4
	  ,SUM(IssueScoreKPI1) AS IssueScoreKPI1--KPI1 Score
	  ,SUM(IssueScoreKPI2) AS IssueScoreKPI2--KPI2 Score
	  ,SUM(IssueScoreKPI3) AS IssueScoreKPI3--KPI3 Score
	  ,SUM(IssueScoreKPI4) AS IssueScoreKPI4--KPI4 Score
	  ,SUM(IssueScorePositive) AS IssueScorePositive--IssueScorePositive

FROM 
(
SELECT [YearMonth]
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
      ,[UserID]
      ,[UserName]
      ,(CASE WHEN LEN([UserID])> 0 AND  [UserID] = [TerritoryUserL1] THEN 'L1'
		     WHEN LEN([UserID])> 0 AND  [UserID] = [TerritoryUserL2] THEN 'L2'
		     WHEN LEN([UserID])> 0 AND  [UserID] = [TerritoryUserL3] THEN 'L3'
		     WHEN LEN([UserID])> 0 AND  [UserID] = [TerritoryUserL4] THEN 'L4'
		     WHEN LEN([UserID])> 0 AND  [UserID] = [TerritoryUserL5] THEN 'L5'
			 WHEN LEN([UserID])= 0 AND  LEN([TerritoryUserNameL5])>0 THEN 'L5'
			 WHEN LEN([UserID])= 0 AND  LEN([TerritoryUserNameL4])>0 THEN 'L4'
			 WHEN LEN([UserID])= 0 AND  LEN([TerritoryUserNameL3])>0 THEN 'L3'
			 WHEN LEN([UserID])= 0 AND  LEN([TerritoryUserNameL2])>0 THEN 'L2'
			 WHEN LEN([UserID])= 0 AND  LEN([TerritoryUserNameL1])>0 THEN 'L1'
        END) AS UserLevel
		,KPI
      ,[userpkid_list]
,(CASE WHEN KPI = 1 THEN IssueScore ELSE 0 END) AS IssueScoreKPI1
,(CASE WHEN KPI = 2 THEN IssueScore ELSE 0 END) AS IssueScoreKPI2
,(CASE WHEN KPI = 3 THEN IssueScore ELSE 0 END) AS IssueScoreKPI3
,(CASE WHEN KPI = 4 THEN IssueScore ELSE 0 END) AS IssueScoreKPI4
,CAST(PositiveIssueScore AS INT) AS IssueScorePositive

FROM V_Compliance_KPI_Person
WHERE YearMonth Between '2024-04' AND FORMAT(DATEADD(MONTH,-1,GETDATE()),'yyyy-MM')
) AS C 
GROUP BY 
       [YearMonth]
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
      ,[UserID]
      ,[UserName]
      ,UserLevel
	  ,[userpkid_list]
	  ) as A LEFT JOIN AdjustmentsNegative as B
	  on A.[YearMonth] = B.YearMonth
	 and A.UserID = B.UserID

	 )
-----Get DataSet
SELECT 
       [YearMonth]
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
      ,[UserID]
      ,[UserName]
      ,UserLevel
	  ,CountTeam
	  ,IssueScoreKPI1
	  ,IssueScoreKPI2
	  ,IssueScoreKPI3
	  ,IssueScoreKPI4
	  ,IssueScorePositive
	  ,IssueScoreNegative
	  ,IssueScoreNegativeApprover
	  ,IssueScoreNegativePerson
      ,TotalPersonIssueScore 
	  ,TotalPersonIssueScoreWithAdj 
	  ,TotalTeamIssueScore
	  ,TotalTeamIssueScoreWithAdj
	  ,AvgTeamIssueScore
	  ,AvgTeamIssueScoreWithAdj
	  ,TotalPersonIssueScore + AvgTeamIssueScore AS TotalIssueScore
	  ,TotalPersonIssueScoreWithAdj + AvgTeamIssueScoreWithAdj AS TotalIssueScoreWithAdj
	  ,12 - TotalPersonIssueScore - AvgTeamIssueScore AS TotalReminingScore
	  ,12 - TotalPersonIssueScoreWithAdj - AvgTeamIssueScoreWithAdj AS TotalReminingScore
FROM
(
SELECT 
       [YearMonth]
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
      ,[UserID]
      ,[UserName]
      ,UserLevel
	  ,CountTeam
	  ,IssueScoreKPI1
	  ,IssueScoreKPI2
	  ,IssueScoreKPI3
	  ,IssueScoreKPI4
	  ,IssueScorePositive
	  ,IssueScoreNegative
	  ,IssueScoreNegativeApprover
	  ,IssueScoreNegativePerson
      ,TotalPersonIssueScore 
	  ,TotalPersonIssueScoreWithAdj
	  ,(CASE UserLevel 
	      WHEN 'L1' THEN TotalTeamIssueScoreL1
		  WHEN 'L2' THEN TotalTeamIssueScoreL2
		  WHEN 'L3' THEN TotalTeamIssueScoreL3
		  WHEN 'L4' THEN TotalTeamIssueScoreL4
		  ELSE 0
		  END) AS TotalTeamIssueScore
	  ,(CASE UserLevel 
	      WHEN 'L1' THEN TotalTeamIssueScoreWithAdjL1
		  WHEN 'L2' THEN TotalTeamIssueScoreWithAdjL2
		  WHEN 'L3' THEN TotalTeamIssueScoreWithAdjL3
		  WHEN 'L4' THEN TotalTeamIssueScoreWithAdjL4
		  ELSE 0
		  END) AS TotalTeamIssueScoreWithAdj
	  ,(CASE  
	      WHEN CountTeam = 0 THEN 0
		  WHEN UserLevel = 'L1' THEN CAST(TotalTeamIssueScoreL1 AS decimal(8,2))/CountTeam
		  WHEN UserLevel = 'L2' THEN CAST(TotalTeamIssueScoreL2 AS decimal(8,2))/CountTeam
		  WHEN UserLevel = 'L3' THEN CAST(TotalTeamIssueScoreL3 AS decimal(8,2))/CountTeam
		  WHEN UserLevel = 'L4' THEN CAST(TotalTeamIssueScoreL4 AS decimal(8,2))/CountTeam
		  ELSE 0.00
		  END) AS AvgTeamIssueScore
	  ,(CASE 
		  WHEN CountTeam = 0 THEN 0
	      WHEN UserLevel = 'L1' THEN CAST(TotalTeamIssueScoreWithAdjL1 AS decimal(8,2))/CountTeam
		  WHEN UserLevel = 'L2' THEN CAST(TotalTeamIssueScoreWithAdjL2 AS decimal(8,2))/CountTeam
		  WHEN UserLevel = 'L3' THEN CAST(TotalTeamIssueScoreWithAdjL3 AS decimal(8,2))/CountTeam
		  WHEN UserLevel = 'L4' THEN CAST(TotalTeamIssueScoreWithAdjL4 AS decimal(8,2))/CountTeam
		  ELSE 0
		  END) AS AvgTeamIssueScoreWithAdj
	  --,AS TotalIssueScore
	  --,AS TotalIssueScoreWithAdj
FROM
(
--Level 2-5
SELECT 
       [YearMonth]
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
      ,[UserID]
      ,[UserName]
      ,UserLevel
	  ,IssueScoreKPI1
	  ,IssueScoreKPI2
	  ,IssueScoreKPI3
	  ,IssueScoreKPI4
	  ,IssueScorePositive
	  ,IssueScoreNegative
	  ,IssueScoreNegativeApprover
	  ,IssueScoreNegativePerson
      ,TotalIssueScore as TotalPersonIssueScore
	  ,TotalIssueScoreWithAdj as TotalPersonIssueScoreWithAdj
	  ,SUM(TotalIssueScore) OVER(PARTITION BY [YearMonth],[OrgType],[SubOrgType],[TerritoryUserL1]) - TotalIssueScore as TotalTeamIssueScoreL1
	  ,SUM(TotalIssueScore) OVER(PARTITION BY [YearMonth],[OrgType],[SubOrgType],[TerritoryUserL1],[TerritoryUserL2]) - TotalIssueScore as TotalTeamIssueScoreL2
	  ,SUM(TotalIssueScore) OVER(PARTITION BY [YearMonth],[OrgType],[SubOrgType],[TerritoryUserL1],[TerritoryUserL2],[TerritoryUserL3]) - TotalIssueScore as TotalTeamIssueScoreL3
	  ,SUM(TotalIssueScore) OVER(PARTITION BY [YearMonth],[OrgType],[SubOrgType],[TerritoryUserL1],[TerritoryUserL2],[TerritoryUserL3],[TerritoryUserL4]) - TotalIssueScore as TotalTeamIssueScoreL4
	  ,SUM(TotalIssueScoreWithAdj) OVER(PARTITION BY [YearMonth],[OrgType],[SubOrgType],[TerritoryUserL1]) - TotalIssueScoreWithAdj as TotalTeamIssueScoreWithAdjL1
	  ,SUM(TotalIssueScoreWithAdj) OVER(PARTITION BY [YearMonth],[OrgType],[SubOrgType],[TerritoryUserL1],[TerritoryUserL2]) - TotalIssueScoreWithAdj as TotalTeamIssueScoreWithAdjL2
	  ,SUM(TotalIssueScoreWithAdj) OVER(PARTITION BY [YearMonth],[OrgType],[SubOrgType],[TerritoryUserL1],[TerritoryUserL2],[TerritoryUserL3]) - TotalIssueScoreWithAdj as TotalTeamIssueScoreWithAdjL3
	  ,SUM(TotalIssueScoreWithAdj) OVER(PARTITION BY [YearMonth],[OrgType],[SubOrgType],[TerritoryUserL1],[TerritoryUserL2],[TerritoryUserL3],[TerritoryUserL4]) - TotalIssueScoreWithAdj as TotalTeamIssueScoreWithAdjL4
	  ,(CASE UserLevel 
	      WHEN 'L1' THEN CountByL1
		  WHEN 'L2' THEN CountByL2
		  WHEN 'L3' THEN CountByL3
		  WHEN 'L4' THEN CountByL4
		  ELSE 0
		  END) AS CountTeam

FROM  V_Compliance_KPI_Operation 
WHERE UserLevel <> 'L1'

UNION ALL
--Level 1
SELECT 
       [YearMonth]
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
      ,[TerritoryUserL1] as [UserID]
      ,[TerritoryUserNameL1] as [UserName]
      ,UserLevel
	  ,SUM(IssueScoreKPI1) IssueScoreKPI1
	  ,SUM(IssueScoreKPI2) IssueScoreKPI2
	  ,SUM(IssueScoreKPI3) IssueScoreKPI3
	  ,SUM(IssueScoreKPI4) IssueScoreKPI4
	  ,SUM(IssueScorePositive) IssueScorePositive
	  ,SUM(IssueScoreNegative) IssueScoreNegative
	  ,SUM(IssueScoreNegativeApprover) IssueScoreNegativeApprover
	  ,SUM(IssueScoreNegativePerson) IssueScoreNegativePerson
	  ,SUM(TotalPersonIssueScore) TotalPersonIssueScore
	  ,SUM(TotalPersonIssueScoreWithAdj) TotalPersonIssueScoreWithAdj
	  ,SUM(TotalTeamIssueScoreL1) TotalTeamIssueScoreL1
	  ,0 TotalTeamIssueScoreL2
	  ,0 TotalTeamIssueScoreL3
	  ,0 TotalTeamIssueScoreL4
	  ,SUM(TotalTeamIssueScoreWithAdjL1) TotalTeamIssueScoreWithAdjL1
	  ,0 TotalTeamIssueScoreWithAdjL2
	  ,0 TotalTeamIssueScoreWithAdjL3
	  ,0 TotalTeamIssueScoreWithAdjL4
	  ,COUNT([UserID]) CountTeam
FROM
(
SELECT 
       [YearMonth]
      ,[OrgType]
      ,[SubOrgType]
      ,[AccessDesc]
      ,[TerritoryL1]
      ,[TerritoryL1Name]
      ,[TerritoryUserL1]
      ,[TerritoryUserNameL1]
      ,[TerritoryUserL1_userpkid]
      ,'' [TerritoryL2]
      ,'' [TerritoryL2Name]
      ,'' [TerritoryUserL2]
      ,'' [TerritoryUserNameL2]
      ,'' [TerritoryUserL2_userpkid]
      ,'' [TerritoryL3]
      ,'' [TerritoryL3Name]
      ,'' [TerritoryUserL3]
      ,'' [TerritoryUserNameL3]
      ,'' [TerritoryUserL3_userpkid]
      ,'' [TerritoryL4]
      ,'' [TerritoryL4Name]
      ,'' [TerritoryUserL4]
      ,'' [TerritoryUserNameL4]
      ,'' [TerritoryUserL4_userpkid]
      ,'' [TerritoryL5]
      ,'' [TerritoryL5Name]
      ,'' [TerritoryUserL5]
      ,'' [TerritoryUserNameL5]
      ,'' [TerritoryUserL5_userpkid]
      --,[TerritoryUserL1] as [UserID]
      --,[TerritoryUserNameL1] as [UserName]
	  ,[UserID]
	  ,[UserName]
      ,'L1' UserLevel
	  ,(CASE WHEN [TerritoryUserL1]=[UserID] THEN IssueScoreKPI1 ELSE 0 END) IssueScoreKPI1
	  ,(CASE WHEN [TerritoryUserL1]=[UserID] THEN IssueScoreKPI2 ELSE 0 END) IssueScoreKPI2
	  ,(CASE WHEN [TerritoryUserL1]=[UserID] THEN IssueScoreKPI3 ELSE 0 END) IssueScoreKPI3
	  ,(CASE WHEN [TerritoryUserL1]=[UserID] THEN IssueScoreKPI4 ELSE 0 END) IssueScoreKPI4
	  ,(CASE WHEN [TerritoryUserL1]=[UserID] THEN IssueScorePositive ELSE 0 END) IssueScorePositive
	  ,(CASE WHEN [TerritoryUserL1]=[UserID] THEN IssueScoreNegative ELSE 0 END) IssueScoreNegative
	  ,(CASE WHEN [TerritoryUserL1]=[UserID] THEN IssueScoreNegativeApprover ELSE 0 END) IssueScoreNegativeApprover
	  ,(CASE WHEN [TerritoryUserL1]=[UserID] THEN IssueScoreNegativePerson ELSE 0 END) IssueScoreNegativePerson
	  ,(CASE WHEN [TerritoryUserL1]=[UserID] THEN TotalIssueScore ELSE 0 END) TotalPersonIssueScore
	  ,(CASE WHEN [TerritoryUserL1]=[UserID] THEN TotalIssueScoreWithAdj ELSE 0 END) TotalPersonIssueScoreWithAdj
	  ,(CASE WHEN [TerritoryUserL1]<>[UserID] THEN TotalIssueScore ELSE 0 END) TotalTeamIssueScoreL1
	  ,0 TotalTeamIssueScoreL2
	  ,0 TotalTeamIssueScoreL3
	  ,0 TotalTeamIssueScoreL4
	  ,(CASE WHEN [TerritoryUserL1]<>[UserID] THEN TotalIssueScoreWithAdj ELSE 0 END) TotalTeamIssueScoreWithAdjL1
	  ,0 TotalTeamIssueScoreWithAdjL2
	  ,0 TotalTeamIssueScoreWithAdjL3
	  ,0 TotalTeamIssueScoreWithAdjL4

FROM  V_Compliance_KPI_Operation 
) b
GROUP BY 
       [YearMonth]
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
	  ,UserLevel
) T
) T1
