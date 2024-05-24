# Health Monitor System

This repository contains code for a Health Monitor System developed to assess diabetes risk based on patient health data. The system consists of a Java-based PMDA (Personal Medical Assistant Agents) incorporating a knowledge base in tuProlog. It includes three main components: the environment, the health monitor agent, and the knowledge base.

## Contents

- **Hybrid_WOA.ipynb**: Jupyter notebook containing code to repeat all experiments.
- **pima_indians_imputed.csv**: Dataset analysed by the experiments.
- **woa_cv_predictions.csv**: Predictions made by ML models.
- **woa_cv_results.csv**: Performance metrics for ML models.

The **Health Monitor** folder contains the Java implementation of the PMDA:

- **2p-4.0.3.jar**: tuProlog JAR file.
- **Agent.class**: Java class file for the agent.
- **Environment.class**: Java class file for the environment simulation.
- **HealthMonitorAgent.class**: Java class file for the health monitor agent.
- **Main.class**: Java class file for the main program.
- **health_monitor.pl**: tuProlog file containing the main knowledge base.
- **health_monitor_update0.pl**: tuProlog file containing the knowledge base updated with all rules recommended by ML.
- **health_monitor_update1.pl**: tuProlog file containing the knowledge base updated selecting rules according to criterion 1 - null false negative rate.
- **health_monitor_update2.pl**: tuProlog file containing the knowledge base updated selecting rules according to criterion 2 - minimal accuracy.
- **health_monitor_update3.pl**: tuProlog file containing the knowledge base updated selecting rules according to criterion 3 - knowledge fragmentation.
- **health_monitor_update4.pl**: tuProlog file containing the knowledge base updated selecting rules according to criterion 4 - explanation readability.

## Running the Program

To run the program, follow these steps:

1. **Add tuProlog JAR Files to Your Project**:
   - Right-click on your project in the Project Explorer and select **Build Path > Configure Build Path**.
   - In the **Properties for <your project>** window, go to the **Libraries** tab.
   - Click **Add External JARs...** and browse to the location where you downloaded the tuProlog JAR files. Select the JAR files and click **Open**.
   - Click **Apply** and **Close** to add the JAR files to your project's build path.

2. **Execute the Program**: Run the Java program (**Main.class**) to start the Health Monitor System. Ensure that all required files and dependencies are correctly configured and accessible.

If you encounter any issues or have questions, feel free to contact the repository owner.
