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
    
% ML rule 1
next_action(alert_diabetes_risk) :-
    current_glucose(Glucose),
    current_diabetes_pedigree_function(DiabetesPedigreeFunction),
    Glucose > 143.5,
    DiabetesPedigreeFunction > 0.32.

% ML rule 3
next_action(alert_diabetes_risk) :-
    current_glucose(Glucose),
    current_diabetes_pedigree_function(DiabetesPedigreeFunction),
    current_bmi(BMI),
    Glucose > 143.5,
    DiabetesPedigreeFunction =< 0.32,
    BMI > 31.40.

% ML rule 4
next_action(low_diabetes_risk) :-
    current_glucose(Glucose),
    current_pregnancies(Pregnancies),
    current_bmi(BMI),
    Glucose =< 143.5,
    Pregnancies =< 7.5,
    BMI =< 45.44.

% ML rule 5
next_action(alert_diabetes_risk) :-
    current_glucose(Glucose),
    current_pregnancies(Pregnancies),
    current_bmi(BMI),
    Glucose =< 143.5,
    Pregnancies =< 7.5,
    BMI > 45.44.

% ML rule 7
next_action(low_diabetes_risk) :-
    current_glucose(Glucose),
    current_pregnancies(Pregnancies),
    current_diabetes_pedigree_function(DiabetesPedigreeFunction),
    current_blood_pressure(BloodPressure),
    Glucose =< 143.5,
    Pregnancies > 7.5,
    DiabetesPedigreeFunction =< 0.50,
    BloodPressure =< 91.0.
