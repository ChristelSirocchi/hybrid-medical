next_action(low_diabetes_risk) :-
    current_glucose(Glucose),
    current_bmi(Bmi),
    Glucose < 100,
    Bmi < 25.
    
next_action(alert_diabetes_risk) :-
    current_glucose(Glucose),
    current_bmi(Bmi),
    Glucose >= 126,
    Bmi >= 30.    
    
%next_action(alert_diabetes_risk) :-
%    \+ next_action(low_risk).