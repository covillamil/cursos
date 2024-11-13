SELECT 
    System.Timestamp as WindowEnd, SwitchNum, COUNT(*) as CallCount 
FROM
    CallStream TIMESTAMP BY CallRecTime 
GROUP BY TUMBLINGWINDOW(s, 5), SwitchNum