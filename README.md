# Bank_Loan_Report-Tableau
An interactive Bank Loan project analyzing 38K+ loan records using Excel, SQL, and Tableau. Provides insights into loan performance, borrower behavior, and risk segmentation through dynamic visualizations.
________________________________________________________________________________________________________________________________________________________________________________________________________________

<h2>📋 Table of Contents</h2>

•	<a href='https://github.com/Tamal12322/Bank_Loan_Report-Tableau/tree/main?tab=readme-ov-file#-project-overview'>Project Overview </a><br>
• <a href='https://github.com/Tamal12322/Bank_Loan_Report-Tableau/tree/main?tab=readme-ov-file#-objectives'>Objectives </a><br>
•	<a href='https://github.com/Tamal12322/Bank_Loan_Report-Tableau/tree/main?tab=readme-ov-file#%E2%84%B9%EF%B8%8F-data-source'>Data Source </a><br>
•	<a href='https://github.com/Tamal12322/Bank_Loan_Report-Tableau/tree/main?tab=readme-ov-file#%EF%B8%8F-methodology'>Methodology </a><br>
•	<a href='https://github.com/Tamal12322/Bank_Loan_Report-Tableau/tree/main?tab=readme-ov-file#-dashboard-interface'>Dashboard Interface </a><br>
•	<a href='https://github.com/Tamal12322/Bank_Loan_Report-Tableau/tree/main?tab=readme-ov-file#-key-insights--findings'>Key Insights & Findings </a><br>
•	<a href='https://github.com/Tamal12322/Bank_Loan_Report-Tableau/tree/main?tab=readme-ov-file#-tools--technologies-used'>Tools & Technologies Used </a><br>
•	<a href='https://github.com/Tamal12322/Bank_Loan_Report-Tableau/tree/main?tab=readme-ov-file#-future-work--improvements'>Future Work & Improvements </a><br>
•	<a href='https://github.com/Tamal12322/Bank_Loan_Report-Tableau/tree/main?tab=readme-ov-file#-conclusion'>Conclusion </a><br>


________________________________________________________________________________________________________________________________________________________________________________________________________________

<h2>📘 Project Overview</h2>

This Bank Loan project provides a comprehensive analysis of 38,000+ loan applications using interactive Tableau visualizations. It covers key financial metrics such as funded amounts, repayment trends, interest rates, and debt-to-income ratios. The dashboard highlights the distinction between good and bad loans, helping identify credit risk patterns. It also analyses loan performance based on borrower attributes like home ownership, employment length, and loan purpose. This project aims to support data-driven decisions in loan management and underwriting.

________________________________________________________________________________________________________________________________________________________________________________________________________________

<h2>🎯 Objectives</h2>

•	Track and analyse key loan metrics such as total loan applications, total funded amount, total amount received, average interest rates, and debt-to-income ratios, including Month-to-Date (MTD) and Month-over-Month (MoM) trends.<br>

•	Classify and evaluate Good vs. Bad Loans based on loan status (e.g., Fully Paid, Current, Charged Off), and calculate related KPIs like funded amount, received amount, and application counts for each category.<br>

•	Visualize loan performance across various dimensions including time (monthly trends), geographic distribution (by state), loan terms, employment length, loan purposes, and home ownership status using charts like line graphs, maps, donuts, bar charts, and treemaps.<br>

•	Create an interactive loan status grid to offer a snapshot of loan health metrics across different statuses, aiding in risk assessment and performance tracking.<br>

•	Develop a detailed dashboard view to allow users to explore individual loan records including borrower details, purpose, grade, sub-grade, and payment history.<br>

•	Enable data-driven decision-making by presenting dynamic, intuitive dashboards that support strategic planning and improve lending policies.<br>

________________________________________________________________________________________________________________________________________________________________________________________________________________


<h2>ℹ️ Data Source</h2>

The project is based on a comprehensive <a href='https://github.com/Tamal12322/Bank_Loan_Report-Tableau/blob/main/financial_loan.csv'>dataset</a> stored in csv file which encompasses various aspects of bank loans.
________________________________________________________________________________________________________________________________________________________________________________________________________________

<h2>🛠️ Methodology</h2>

1.	Data Collection: Imported the raw loan data (financial_loan.csv) consisting of 38,000+ records with borrower profiles, loan amounts, repayment statuses, and financial indicators.<br>
2.	Data Cleaning & Preprocessing: Handled missing values, standardized date formats, categorized loan statuses (e.g., Good vs. Bad), and created derived fields like Month-to-Date (MTD) and Month-over-Month (MoM) metrics.<br>
3.	KPI Identification: Defined and calculated key performance indicators (KPIs) including Total Loan Applications, Funded Amount, Amount Received, Interest Rate, and Debt-to-Income (DTI) Ratio.<br>
4.	Loan Classification: Segregated loans into "Good" (Fully Paid or Current) and "Bad" (Charged Off) categories for performance and risk analysis.<br>
5.	Data Aggregation: Summarized data across multiple dimensions such as loan status, issue dates, loan purpose, state, term length, and employment history.<br>
6.	Dashboard Development – Summary View: Created a high-level dashboard displaying total loans, funding, repayment, interest trends, and DTI using cards and KPI visuals in Tableau.<br>
7.	Dashboard Development – Analytical View: Built interactive charts (line graphs, bar charts, treemaps, maps, donuts) to visualize trends by time, geography, employment length, home ownership, and loan purpose.<br>
8.	Dashboard Development – Detailed View: Designed a comprehensive table view for filtering and exploring individual loan records with granular details for audit and exploration.<br>
9.	Interactivity & UX Enhancements: Integrated filters for dynamic exploration, allowing users to filter data by Purpose, Grade, or Verification Status.<br>
10.	Insight Generation & Reporting: Interpreted the dashboards to generate actionable insights on loan performance, borrower profiles, and risk trends to support decision-making and strategic planning.<br>

________________________________________________________________________________________________________________________________________________________________________________________________________________

<h2>📊 Dashboard Interface</h2>

<h3>Summary Panel</h3>
<img src="https://github.com/Tamal12322/Bank_Loan_Report-Tableau/blob/main/Summary%20Screenshot.png">

<h3>Overview Panel</h3>
<img src="https://github.com/Tamal12322/Bank_Loan_Report-Tableau/blob/main/Overview%20Screenshot.png">

<h3>Details Panel</h3>
<img src="https://github.com/Tamal12322/Bank_Loan_Report-Tableau/blob/main/Details%20Screenshot.png">

________________________________________________________________________________________________________________________________________________________________________________________________________________

<h2>📌 Key Insights & Findings</h2>

1.	High Approval Rate of Good Loans: Over 86% of loan applications fall under the "Good Loan" category (Fully Paid or Current), indicating effective underwriting and low default risk.<br>
2.	Significant Gap in Recovery from Bad Loans: While 13.8% of loans are classified as "Bad Loans" (Charged Off), the amount received from these loans is significantly lower compared to the amount funded—highlighting potential loss areas.<br>
3.	Monthly Trends Show Seasonality: Loan application volumes and funding amounts show noticeable monthly fluctuations, suggesting seasonal lending behaviour or promotional impact.<br>
4.	Short-Term Loans Are Preferred: Around 73% of loans issued are for 36 months, suggesting borrower preference for shorter repayment cycles, possibly due to lower total interest burden.<br>
5.	Experienced Borrowers Apply More: Most loans are applied by borrowers with 10+ years of employment, showing a correlation between job stability and credit-seeking behaviour.<br>
6.	Home Ownership Influences Loan Volume: Borrowers who rent or have a mortgage account for the highest loan applications, indicating a greater credit need among non-homeowners.<br>
7.	Debt Consolidation is the Top Loan Purpose: A large portion of loans is taken for debt consolidation and credit card refinancing, reflecting common financial strategies among consumers to manage existing debts.<br>

________________________________________________________________________________________________________________________________________________________________________________________________________________

<h2>🧰 Tools & Technologies Used</h2>

•	Microsoft Excel: Utilized for initial data cleaning, formatting, and exploratory data analysis (EDA). Excel helped in identifying missing values, understanding data structure, and performing preliminary aggregations.<br>

•	SQL (Structured Query Language): Used to perform complex queries, data filtering, joins, and aggregations from the raw dataset. SQL was instrumental in deriving KPIs like total loan applications, average interest rate, and segregating good vs bad loans based on loan status.<br>

•	Tableau: Employed to design interactive dashboards and visualizations. Tableau enabled the creation of summary views, trend analyses, and categorical breakdowns (e.g., by state, loan purpose, and employment length) through dynamic charts and filters.<br>

________________________________________________________________________________________________________________________________________________________________________________________________________________

<h2>🔮 Future Work & Improvements</h2>

1.	Incorporate Credit Score Data: Including borrowers' credit scores can enhance risk profiling and improve the accuracy of good vs bad loan classification.<br>
2.	Predictive Modelling for Loan Default: Implement machine learning models (e.g., logistic regression, decision trees) to predict the likelihood of loan default based on historical data and borrower attributes.<br>
3.	Customer Segmentation Analysis: Perform cluster analysis to segment borrowers based on income, employment, and repayment behaviours, enabling targeted marketing and credit strategies.<br>
4.	Advanced KPI Benchmarking: Introduce benchmarks and industry comparisons to evaluate loan performance against competitors or historical baselines.<br>
5.	Enhanced Geographic Analysis: Integrate demographic and economic indicators (e.g., unemployment rate, average income) at the state or city level to better understand regional lending risks and opportunities.<br>

________________________________________________________________________________________________________________________________________________________________________________________________________________

<h2>✅ Conclusion</h2>

This Bank Loan Dashboard project successfully provides a comprehensive view of the lending portfolio through data-driven insights and interactive visualizations. By analysing over 38,000 loan records, we evaluated key financial metrics, identified patterns in borrower behaviour, and segmented loans into good and bad categories. Tools like Excel, SQL, and Tableau enabled efficient data handling, KPI calculation, and intuitive reporting. The project highlights crucial trends such as seasonal lending activity, preferred loan terms, and the impact of employment and home ownership on credit behaviour. These insights can guide strategic decisions in loan approvals, risk management, and customer targeting. Future enhancements such as predictive modelling and real-time dashboards can further strengthen the system's analytical capabilities.


