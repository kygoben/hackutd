import 'package:finteach/Domain/chapter.dart';
import 'package:flutter/material.dart';

// Personal finance topics that underprivledged students may not know about
List<Chapters> chaptersList = [
  Chapters(name: 'Credit', icon: Icons.credit_score),
  Chapters(name: 'Mortgages', icon: Icons.account_balance),
  Chapters(name: 'Retirement Planning', icon: Icons.savings),
  Chapters(name: 'Investments', icon: Icons.trending_up),
  Chapters(name: 'Real Estate', icon: Icons.business_center),
  Chapters(name: 'Budget Management', icon: Icons.attach_money),
  Chapters(name: 'College Planning', icon: Icons.school),
  Chapters(name: 'Taxes', icon: Icons.paid),
  Chapters(name: 'Insurance', icon: Icons.receipt),
  Chapters(name: 'Banking', icon: Icons.account_balance_wallet),
  Chapters(name: 'Debt', icon: Icons.money_off),
];

var rawData = [{
  "questions": [
    {
      "question": "What is the term for the risk that a lender may not receive the owed principal and interest, leading to disrupted cash flows and increased costs for collecting the debt?",
      "options": [
        "Default risk",
        "Interest rate risk",
        "Market risk",
        "Liquidity risk"
      ],
      "answer": 0
    },
    {
      "question": "Which of the following factors is NOT typically considered by credit rating agencies when assigning a credit rating?",
      "options": [
        "The economic conditions relevant to the borrower's operations",
        "The borrower's financial performance and condition",
        "The management quality and corporate governance of the borrower",
        "The borrower's choice of legal representation"
      ],
      "answer": 3
    },
    {
      "question": "In a 'tranche' structure of a collateralized debt obligation (CDO), which tranche typically has the highest credit rating?",
      "options": [
        "Equity Tranche",
        "Mezzanine Tranche",
        "Senior Tranche",
        "Junior Tranche"
      ],
      "answer": 2
    },
    {
      "question": "What does the 'Five C's of Credit' refer to?",
      "options": [
        "Character, Capacity, Capital, Collateral, Conditions",
        "Collateral, Capacity, Credit, Cash, Cost",
        "Credit, Capacity, Character, Cash-flow, Cost",
        "Character, Capital, Collateral, Cash-flow, Covenants"
      ],
      "answer": 0
    },
    {
      "question": "Which of the following best describes 'subprime' lending?",
      "options": [
        "Lending to individuals with poor credit histories typically at higher interest rates",
        "Lending below the prime rate to individuals with excellent credit histories",
        "Lending to individuals without checking their credit history",
        "Lending at rates below the standard market rate to prime borrowers"
      ],
      "answer": 0
    }
  ],
  "story_questions": [
    {
      "question": "Jessica took out a mortgage with a fixed interest rate, but two years later she received a notification that her payments would increase. What is the most likely reason for this change?",
      "options": [
        "The terms of the loan included a rate 'reset' based on market conditions.",
        "Jessica's credit score has significantly improved.",
        "There was a clerical error initially undercharging her.",
        "Her property taxes or homeowners' insurance premiums have increased, which are typically escrowed with the mortgage payment."
      ],
      "answer": 3
    },
    {
      "question": "Carlos was interested in a car loan and found out that the APR offered to him was significantly higher than the advertised rate. What could be a possible reason for this?",
      "options": [
        "The dealership made a mistake in their original advertisement.",
        "Carlos has an excellent credit score.",
        "The advertised rate is for borrowers with high credit scores, and Carlos's score is low.",
        "Interest rates have decreased since the advertisement was released."
      ],
      "answer": 2
    },
    {
      "question": "After reviewing her credit report, Naomi found an account listed that she did not recognize. What should be her first course of action?",
      "options": [
        "Close her existing bank accounts and open new ones.",
        "Report the account to the credit bureau as potentially fraudulent.",
        "Apply for new credit cards to balance her credit utilization.",
        "Ignore the account as it might be a common error on credit reports."
      ],
      "answer": 1
    },
    {
      "question": "Miguel is considering bankruptcy due to his inability to pay off his credit card debt. What will likely be the impact on his credit score if he files for bankruptcy?",
      "options": [
        "His score will improve because his debts will be forgiven.",
        "His score will not change since he is taking action to resolve his debts.",
        "His score will temporarily dip but quickly recover within a year.",
        "His score will significantly decrease and the bankruptcy will remain on his credit report for years."
      ],
      "answer": 3
    },
    {
      "question": "Layla received an offer for a credit card with a 0% introductory APR for 18 months. After the introductory period, the rate would go to a variable 15-25%. If she anticipates carrying a balance after the introductory period, what should be her main consideration?",
      "options": [
        "The benefits of earning rewards points during the introductory period.",
        "The potential increase in her credit limit after the introductory period.",
        "The specific variable rate she will receive and whether it's affordable.",
        "The number of months in the introductory period."
      ],
      "answer": 2
    }
  ]
},{
  "questions": [
    {
      "question": "Which of the following mortgage types does NOT typically require private mortgage insurance (PMI)?",
      "options": [
        "Conventional 97 loan",
        "FHA loan",
        "VA loan",
        "USDA loan"
      ],
      "answer": 2
    },
    {
      "question": "What is the effect of making a lump-sum payment directly to the principal balance of a mortgage?",
      "options": [
        "It reduces the total interest paid over the life of the loan.",
        "It extends the term of the loan.",
        "It increases the monthly payment.",
        "It has no effect on the principal balance."
      ],
      "answer": 0
    },
    {
      "question": "In an adjustable-rate mortgage (ARM), what is the 'index'?",
      "options": [
        "A fixed interest rate that remains constant throughout the life of the loan",
        "A benchmark interest rate to which the loan's interest rate is tied",
        "A cap on the amount the interest rate can increase",
        "The initial interest rate offered during the loan's introductory period"
      ],
      "answer": 1
    },
    {
      "question": "What does 'LTV' stand for in mortgage lending?",
      "options": [
        "Long-Term Valuation",
        "Loan to Value",
        "Loan Term Variance",
        "Liquidity Threshold Value"
      ],
      "answer": 1
    },
    {
      "question": "Which of the following terms refers to the charge a lender may assess for paying off a mortgage before a certain period?",
      "options": [
        "Early settlement fee",
        "Prepayment penalty",
        "Principal deduction charge",
        "Mortgage release fee"
      ],
      "answer": 1
    },
    {
      "question": "John took out an interest-only mortgage where he pays only the interest for the first 5 years. What happens after this period?",
      "options": [
        "The mortgage is fully paid off.",
        "He begins paying off the principal only.",
        "He must refinance the mortgage.",
        "He starts paying both principal and interest."
      ],
      "answer": 3
    },
    {
      "question": "Samantha has a fixed-rate mortgage and interest rates have dropped significantly since she took out her loan. What might she consider doing?",
      "options": [
        "Continuing with her current mortgage without any changes",
        "Applying for an adjustable-rate mortgage",
        "Refinancing her mortgage to secure a lower interest rate",
        "Switching to an interest-only mortgage"
      ],
      "answer": 2
    },
    {
      "question": "Alex and Jamie are looking at a $250,000 house and are considering a 20% down payment. What would be the amount of their down payment?",
      "options": [
        "\$40,000",
        "\$50,000",
        "\$60,000",
        "\$70,000"
      ],
      "answer": 1
    },
    {
      "question": "Emma is considering a balloon mortgage for her new property. What characteristic of a balloon mortgage should she be aware of?",
      "options": [
        "Equal monthly payments over the life of the loan",
        "Lower interest rates than conventional mortgages",
        "A large payment due at the end of the loan term",
        "No down payment required"
      ],
      "answer": 2
    },
    {
      "question": "If Max's monthly gross income is $4,000 and his total monthly debts come to $600, what is the maximum monthly mortgage payment he could qualify for with a 28/36 qualifying ratio?",
      "options": [
        "\$1,120",
        "\$1,440",
        "\$960",
        "\$1,600"
      ],
      "answer": 0
    }
  ]
}
,{
  "questions": [
    {
      "question": "What is the primary difference between a 401(k) and an IRA regarding contributions?",
      "options": [
        "Contributions to a 401(k) are always made post-tax, while IRA contributions can be made pre-tax or post-tax depending on the type.",
        "IRA contributions are limited by age, whereas 401(k) contributions are not.",
        "401(k) contributions are typically matched by employers, whereas IRA contributions are not.",
        "The contribution limit for a 401(k) is lower than that of an IRA."
      ],
      "answer": 2
    },
    {
      "question": "At what age can you start making penalty-free withdrawals from a traditional IRA?",
      "options": [
        "55",
        "59 1/2",
        "62",
        "65"
      ],
      "answer": 1
    },
    {
      "question": "Which of the following is not a typical feature of a defined benefit pension plan?",
      "options": [
        "Benefits are based on a formula that often includes salary history and length of employment.",
        "Investment risk is borne by the plan participant.",
        "Employers typically guarantee a specific retirement benefit amount for each participant.",
        "The plan often provides for lifetime annuity payments after retirement."
      ],
      "answer": 1
    },
    {
      "question": "What is the impact of early withdrawal from a retirement account on an individual's taxable income?",
      "options": [
        "Early withdrawals are tax-free and penalty-free if used for qualified educational expenses.",
        "Early withdrawals increase taxable income and may also be subject to an additional 10% early withdrawal penalty.",
        "Early withdrawals are not included in taxable income but are still subject to an additional 10% penalty.",
        "Early withdrawals reduce taxable income as they are considered an advance on retirement benefits."
      ],
      "answer": 1
    },
    {
      "question": "Which of the following statements is true regarding the required minimum distributions (RMDs) for retirement accounts?",
      "options": [
        "RMDs are not required for Roth IRAs during the owner's lifetime.",
        "RMDs must be taken from a traditional IRA starting at age 70 1/2, regardless of income needs.",
        "RMDs can be indefinitely postponed as long as the account holder is still employed.",
        "RMD amounts can be withdrawn tax-free if the individual's taxable income is below a certain threshold."
      ],
      "answer": 0
    },
    {
      "question": "Maggie has been contributing to her traditional IRA since she started working at age 25. Now at 45, she wants to withdraw some funds to help pay for her son's college tuition. What will be the consequence of this action?",
      "options": [
        "She will be able to withdraw funds without any penalties since it is for educational purposes.",
        "She will have to pay income taxes on the withdrawal, but will not face any penalties.",
        "She will have to pay income taxes and a 10% penalty on the withdrawal.",
        "She can withdraw her contributions tax-free, but earnings are subject to income taxes and penalties."
      ],
      "answer": 2
    },
    {
      "question": "John is 75 and has multiple retirement accounts: a 401(k), a traditional IRA, and a Roth IRA. He has not yet taken any RMDs. What action does he need to take to comply with IRS rules?",
      "options": [
        "Take RMDs from both the traditional IRA and the 401(k), but not the Roth IRA.",
        "Only take RMDs from the Roth IRA since it has the most favorable tax treatment.",
        "Take RMDs from all three accounts equally.",
        "Consolidate the accounts into one and take a single RMD from the consolidated account."
      ],
      "answer": 0
    },
    {
      "question": "Susan is planning to retire next year. She is considering rolling over her 401(k) into an IRA. Which of the following is not a valid reason for her to do this?",
      "options": [
        "To consolidate her retirement savings into one account for easier management.",
        "To access a wider variety of investment options.",
        "To avoid taking required minimum distributions at age 72.",
        "To possibly lower her account fees and expenses."
      ],
      "answer": 2
    },
    {
      "question": "Carlos is a self-employed individual who wants to establish a retirement plan for his business. Which of the following plans would allow him the highest potential contribution limit?",
      "options": [
        "SEP IRA",
        "Simple IRA",
        "Traditional IRA",
        "Roth IRA"
      ],
      "answer": 0
    },
    {
      "question": "Emma, age 67, retired last year and has a considerable amount in her traditional IRA. She also has a part-time job that covers her living expenses. What should she consider when planning her RMDs for her traditional IRA?",
      "options": [
        "She can delay her RMDs until she fully retires from her part-time job.",
        "She must take RMDs despite having adequate income from her part-time job.",
        "She can convert her traditional IRA to a Roth IRA to avoid RMDs.",
        "Her part-time income will not be affected by RMDs since she is past the age of 65."
      ],
      "answer": 1
    }
  ]
},{
  "questions": [
    {
      "question": "What is the term for the risk that arises from the unlikelihood that a party involved in a transaction will fail to meet their obligations?",
      "options": [
        "Market Risk",
        "Operational Risk",
        "Credit Risk",
        "Systematic Risk"
      ],
      "answer": 2
    },
    {
      "question": "Which derivative instrument obligates the buyer to purchase an asset at a future date at a price set at the time of the contract?",
      "options": [
        "Option",
        "Future",
        "Swap",
        "Forward Contract"
      ],
      "answer": 3
    },
    {
      "question": "In the Capital Asset Pricing Model (CAPM), the expected return on a security is typically modeled as the risk-free rate plus what other component?",
      "options": [
        "The security's variance",
        "The security's standard deviation",
        "The market premium multiplied by the security's beta",
        "The security's historical return rate"
      ],
      "answer": 2
    },
    {
      "question": "What term describes the process of diversifying investments across a range of different assets to reduce risk?",
      "options": [
        "Arbitration",
        "Speculation",
        "Hedging",
        "Asset Allocation"
      ],
      "answer": 3
    },
    {
      "question": "Which of the following is NOT a characteristic of a 'blue chip' stock?",
      "options": [
        "Large market capitalization",
        "Stable dividend records",
        "High price-to-earnings ratio",
        "Considered to have a safe investment profile"
      ],
      "answer": 2
    },
    {
      "question": "Alex invests in a portfolio that exactly replicates the S&P 500 Index. This strategy is best described as:",
      "options": [
        "Active management",
        "Market timing",
        "Indexing",
        "Sector rotation"
      ],
      "answer": 2
    },
    {
      "question": "Samantha is considering a bond that will pay interest semi-annually. If she is looking for a bond with the least interest rate risk, she should choose a bond with:",
      "options": [
        "A longer maturity and a higher coupon rate",
        "A longer maturity and a lower coupon rate",
        "A shorter maturity and a higher coupon rate",
        "A shorter maturity and a lower coupon rate"
      ],
      "answer": 2
    },
    {
      "question": "Daniel is analyzing a stock using fundamental analysis. He is likely to focus on the company's:",
      "options": [
        "Chart patterns and trading volumes",
        "Earnings, dividends, and the overall economic outlook",
        "Price-to-earnings ratio only",
        "CEO's leadership style and public reputation"
      ],
      "answer": 1
    },
    {
      "question": "Olivia has a bullish outlook on a tech stock but wants to limit her downside risk. Which options strategy is she most likely to use?",
      "options": [
        "Selling a put option",
        "Buying a call option",
        "Buying a put option",
        "Writing a call option"
      ],
      "answer": 1
    },
    {
      "question": "Michael is assessing a company whose stock price has fallen significantly due to a temporary product recall. He believes the stock will recover once the issue is resolved. This approach is known as:",
      "options": [
        "Contrarian investing",
        "Value investing",
        "Growth investing",
        "Momentum investing"
      ],
      "answer": 0
    }
  ]
},
{
  "questions": [
    {
      "question": "What is a cap rate in real estate investing?",
      "options": [
        "A government-imposed limit on how much rent can increase annually",
        "A ratio used to estimate the potential return on an investment property",
        "A fixed rate of return guaranteed by the real estate developer",
        "The interest rate on a real estate-backed loan"
      ],
      "answer": 1
    },
    {
      "question": "Which of the following is not a method commonly used in the appraisal of real estate property?",
      "options": [
        "Sales comparison approach",
        "Cost approach",
        "Income capitalization approach",
        "Future development approach"
      ],
      "answer": 3
    },
    {
      "question": "What does the term 'underwater mortgage' refer to?",
      "options": [
        "A mortgage with more principal owing than the property's market value",
        "A mortgage used for purchasing properties below sea level",
        "A loan taken out for an underwater development project",
        "A financial product designed for maritime properties"
      ],
      "answer": 0
    },
    {
      "question": "What is the primary difference between a Real Estate Investment Trust (REIT) and a Direct Real Estate Investment?",
      "options": [
        "REITs require property management, while direct investments do not",
        "Direct investments can only be in residential properties, while REITs can be in both residential and commercial",
        "REITs allow investment in real estate without owning property directly",
        "Direct investments offer more liquidity than REITs"
      ],
      "answer": 2
    },
    {
      "question": "In real estate, what is 'gazumping'?",
      "options": [
        "Outbidding another buyer after the seller has already accepted their offer",
        "The process of government reclaiming private property",
        "Increasing rental prices due to inflated demand",
        "The act of buying property through illegal means"
      ],
      "answer": 0
    },
    {
      "question": "Sarah is considering an investment in a property that generates $120,000 in rental income annually. The operating expenses are 40% of the rental income, and the capitalization rate is 8%. What is the approximate value of the property using the income capitalization approach?",
      "options": [
        "\$1,500,000",
        "\$1,000,000",
        "\$750,000",
        "\$2,250,000"
      ],
      "answer": 0
    },
    {
      "question": "A developer purchased a parcel of land for $2 million. If the land represents 25% of the total value of the project upon completion, what is the projected total value of the completed project?",
      "options": [
        "\$8 million",
        "\$10 million",
        "\$6 million",
        "\$2.5 million"
      ],
      "answer": 0
    },
    {
      "question": "Lucas is assessing a commercial property and notices that it has significant potential for increased rent over the next few years. Which of the following valuation methods is most likely to account for this future potential?",
      "options": [
        "Sales comparison approach",
        "Cost approach",
        "Income capitalization approach",
        "Replacement value approach"
      ],
      "answer": 2
    },
    {
      "question": "A real estate investor is looking at a property with a gross rent multiplier (GRM) of 10. The annual rent collected is $90,000. What is the value of the property based on the GRM?",
      "options": [
        "\$900,000",
        "\$1,000,000",
        "\$800,000",
        "\$1,100,000"
      ],
      "answer": 0
    },
    {
      "question": "After a natural disaster, a property owner's building is destroyed. She has insurance that covers replacement cost. If the building initially cost $500,000 to construct five years ago and the current inflation rate for construction costs is 4% per year, what is the minimum insurance payout she can expect?",
      "options": [
        "\$500,000",
        "\$608,328",
        "\$600,000",
        "\$520,000"
      ],
      "answer": 1
    }
  ]
},{
  "questions": [
    {
      "question": "Which of the following budgeting methods allocates expenses based on a set percentage of income for each category?",
      "options": [
        "Zero-based budgeting",
        "50/30/20 rule",
        "Envelope system",
        "Activity-based budgeting"
      ],
      "answer": 1
    },
    {
      "question": "What is a common strategy to manage budget overruns in project management?",
      "options": [
        "Request additional funds",
        "Cut costs in other project areas",
        "Increase the project scope",
        "Delay the project timeline"
      ],
      "answer": 1
    },
    {
      "question": "In the context of public sector budgeting, what is 'incremental budgeting'?",
      "options": [
        "Creating a budget from scratch every year",
        "Adjusting the previous year's budget by a set rate",
        "Allocating funds based on project proposals",
        "Budgeting that only includes new expenditures"
      ],
      "answer": 1
    },
    {
      "question": "What does the term 'variance' refer to in budget management?",
      "options": [
        "The difference between budgeted and actual figures",
        "A change in the budgeting methodology",
        "The allocation of funds for unexpected expenses",
        "A government-imposed change in budget allocations"
      ],
      "answer": 0
    },
    {
      "question": "Which budgeting approach focuses on justifying expenses for each new period?",
      "options": [
        "Zero-based budgeting",
        "Incremental budgeting",
        "Value proposition budgeting",
        "Outcome-based budgeting"
      ],
      "answer": 0
    },
    {
      "question": "Alice is preparing a budget for her startup. She plans to allocate funds based on projected revenues rather than historical spending. Which budgeting method is she using?",
      "options": [
        "Zero-based budgeting",
        "Proportional budgeting",
        "Forecast-based budgeting",
        "Historical budgeting"
      ],
      "answer": 2
    },
    {
      "question": "Bob's company is facing a budget cut. He decides to prioritize projects that align closely with the company's strategic goals, potentially defunding others. This approach to budgeting is known as what?",
      "options": [
        "Priority-based budgeting",
        "Top-down budgeting",
        "Activity-based budgeting",
        "Zero-based budgeting"
      ],
      "answer": 0
    },
    {
      "question": "Carol's department was allocated $50,000 for the fiscal year. By the end of Q3, she had spent $37,500. Assuming her spending rate remains constant, how much over or under budget will she be by the end of Q4?",
      "options": [
        "\$2,500 under budget",
        "\$2,500 over budget",
        "Exactly on budget",
        "The information given is insufficient"
      ],
      "answer": 1
    },
    {
      "question": "Dave's business uses a budgeting method where every expense must be justified for each new period, starting from a 'zero base.' What is this budgeting method called?",
      "options": [
        "Incremental budgeting",
        "Zero-based budgeting",
        "Activity-based budgeting",
        "Baseline budgeting"
      ],
      "answer": 1
    },
    {
      "question": "Eva is comparing the budgeted amounts against the actual amounts spent and finds a significant positive variance in her raw materials budget. What does this indicate?",
      "options": [
        "She spent more on raw materials than planned",
        "She spent less on raw materials than planned",
        "She needs to revise her budget to allocate more funds to raw materials",
        "She has encountered an accounting error"
      ],
      "answer": 1
    }
  ]
},

{
  "questions": [
    {
      "question": "Which of the following standardized tests is primarily used for graduate school admissions in the United States?",
      "options": [
        "SAT",
        "ACT",
        "GRE",
        "LSAT"
      ],
      "answer": 2
    },
    {
      "question": "What type of financial aid does not need to be repaid upon graduation?",
      "options": [
        "Subsidized loans",
        "Unsubsidized loans",
        "Grants",
        "Private loans"
      ],
      "answer": 2
    },
    {
      "question": "Which act, passed in 1972, prohibits discrimination based on sex in education programs and activities receiving federal financial assistance?",
      "options": [
        "The Equal Pay Act",
        "Title IX",
        "The Civil Rights Act",
        "The Americans with Disabilities Act"
      ],
      "answer": 1
    },
    {
      "question": "In the context of U.S. higher education, what does FAFSA stand for?",
      "options": [
        "Federal Application For Student Aid",
        "Free Application For Student Assistance",
        "Free Application For Student Aid",
        "Federal Assistance For Students Act"
      ],
      "answer": 2
    },
    {
      "question": "Which of the following college savings plans offers tax advantages and is named after a section of the Internal Revenue Code?",
      "options": [
        "UGMA account",
        "Roth IRA",
        "529 plan",
        "Coverdell ESA"
      ],
      "answer": 2
    },
    {
      "question": "Jamie is interested in pursuing a career in law. Which standardized test should Jamie focus on for most law school admissions?",
      "options": [
        "MCAT",
        "GRE",
        "LSAT",
        "GMAT"
      ],
      "answer": 2
    },
    {
      "question": "Alex has been awarded a work-study job as part of his financial aid package. What is the primary characteristic of a work-study job?",
      "options": [
        "It is a high-paying job intended to cover tuition costs.",
        "It is a job on campus where the earnings are intended to go towards educational expenses.",
        "It is a job unrelated to the student's field of study.",
        "It is a full-time job offered to students after graduation."
      ],
      "answer": 1
    },
    {
      "question": "Taylor is looking into college endowments to understand how they impact tuition costs. What is a college endowment primarily used for?",
      "options": [
        "Funding student social events exclusively",
        "Paying for all students' textbooks",
        "Supporting faculty salaries, campus maintenance, and financial aid",
        "Covering transportation costs for all students"
      ],
      "answer": 2
    },
    {
      "question": "Morgan is applying to colleges and has several options for early admission. What is a potential disadvantage of binding early decision programs?",
      "options": [
        "Students can apply to as many colleges as they want.",
        "Students have until the end of the academic year to decide.",
        "Students must withdraw applications to other schools if accepted.",
        "Students receive less financial aid when applying early."
      ],
      "answer": 2
    },
    {
      "question": "Sam is researching ways to reduce college expenses. Which option typically does NOT lead to cost savings?",
      "options": [
        "Attending a community college before transferring to a four-year university",
        "Applying for scholarships and grants",
        "Choosing a college with higher tuition in hopes of better financial aid packages",
        "Enrolling in an in-state public university"
      ],
      "answer": 2
    }
  ]
}





];


