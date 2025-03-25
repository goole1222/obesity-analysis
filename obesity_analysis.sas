
/* 1. 匯入 Kaggle CSV 資料 */
proc import datafile="C:\你的路徑\ObesityDataSet_raw_and_data_sinthetic.csv"
    out=obesity
    dbms=csv
    replace;
    getnames=yes;
run;

/* 2. 描述性統計 */
proc means data=obesity n mean std min max;
    var Age Height Weight FCVC NCP CH2O FAF TUE;
run;

/* 3. 建立二元肥胖變數 */
data obesity2;
    set obesity;
    if NObeyesdad in ('Obesity_Type_I', 'Obesity_Type_II', 'Obesity_Type_III') then obese=1;
    else obese=0;
run;

/* 4. Logistic Regression 分析 */
proc logistic data=obesity2 descending;
    class Gender(ref='Female') family_history_with_overweight(ref='no') / param=ref;
    model obese = Age Height Weight FCVC NCP CH2O FAF TUE Gender family_history_with_overweight;
run;

/* 5. 匯出清理後資料 */
proc export data=obesity2
    outfile="C:\你的路徑\obesity_clean.csv"
    dbms=csv
    replace;
run;
