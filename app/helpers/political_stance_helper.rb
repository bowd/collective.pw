module PoliticalStanceHelper
  def questions
    [
      {
        section: 'State',
        item: 'Government',
        question: 'What type of government do you consider best?',
        hint: 'The system by which the state is controlled. Most western countries have adopted a multi-party democracy system in which multiple parties can compete in elections while in a two party democracy the winner-take-all election rules favour the two main parties. The earliest form of democracy was a direct democracy in which citizens could vote directly to change policy instead of voting for representatives. Less democratic states can have a one party system in which only one main party is allowed or in the case of a monarchy the power could be concentrated to one person.',
        type: :single_choice,
        options: [
          'Direct democracy',
          'Multi-party democracy',
          'Two-party deomcracy',
          'One party system',
          'Monarchy'
        ]
      },
      {
        section: 'State',
        item: 'Sovereignity',
        question: 'What form of sovereignity appeals to you?',
        hint: 'The extend of rights and powers of a governing institution to govern itself without outside interference. Today the most popular sovereign systems is unitary and federal.',
        type: :single_choice,
        options: [
          {item: 'Imperial', hint: 'Central authority governing a collection of nations or people'},
          {item: 'Ethnic', hint: 'State\'s sovereignity extends to a single ethnic group with no foreign influences'},
          {item: 'Corporate', hint: 'Major interest or corporate groups can hold or share sovereign power with the state'},
          {item: 'Federal', hint: 'States with limited autonomy under a federal state'},
          {item: 'Unitary', hint: 'A single state with a central government'},
          {item: 'Confederal', hint: 'A union of highly autonomous states'},
          {item: 'Global', hint: 'A state that comprises all or most of the world'},
          {item: 'Supranation', hint: 'A central authority comprised of individual governments of member states'},
          {item: 'Decentralized', hint: 'Governing by non-hierarchical institutions'}
        ]
      },
      {
        section: 'State',
        item: 'Religion',
        hint: 'Religious influence on the state can vary from religious figures having direct power and control of the government to irreligious in which the state promotes for the reduction of religious influence. State religion doesn\'t necessarily mean widespread religious influence but does imply that a specific religion can receive special status or funding from the state. Most western countries today are secular, meaning that state and religious institutions are separated.',
        question: 'How should the state be with respect to religion?',
        type: :single_choice,
        options: [
          'Irreligious',
          'Secular',
          'State religion',
          'Law based on religious texts',
          'State governed by religious authorities'
        ]
      },
      {
        section: 'State',
        item: 'Death Penalty',
        question: 'Which of these should fall under the death penalty?',
        hint: 'The government enforced punishment by death for commiting certain crimes. Today around 36 countries actively practice capital punishment while laws regarding the range of crimes punishable and actual frequency of use by the state varies. The majority of countries in the western world has abolished capital punishment for all crimes while in other countries it can be used even for non-fatal offenses.',
        type: :multiple_choice,
        options: [
          {item: 'War crimes'},
          {item: 'Murder'},
          {item: 'Treason'},
          {item: 'Orientation'},
          {item: 'Religion', hint: 'Death penalty for apostasy'},
          {item: 'Dissident', hint: 'Death penalty for opposing government policies'},
          {item: 'Race'}
        ]
      },
      {
        section: 'State',
        item: 'Ethnocentrism',
        question: 'Where should the state stand regarding minorities?',
        hint: 'Policies affecting minority populations based on their ethnicity, cultural identity or race. Equal rights means that everyone can have access to the same legal system and laws while equal benefits refers to equal access to economic benefits like social security or healthcare.',
        type: :single_choice,
        options: [
          'Affirmative Action',
          'Equal rights and benefits to minorities',
          'Equal rights to minorities but no equal benefits',
          'Limited rights to minorities',
          'No rights to minorities'
        ]
      },
      {
        section: 'State',
        item: 'War',
        question: 'What should the state\'s attiude on war be?',
        hint: 'The state policies regarding the use of military forces. Neutrals can sometimes join a conflict if requested by allies or the international community while isolationists prefer to abstain from all wars unless directly attacked. Pacifists on the other hand promote for the eventual abolishment of military and alternative solutions to solve conflicts and inverventionists can join wars without regard of the international community to pursuit the nation\'s interests. Expansionists promote war as a main policy to expand territorial influence.',
        type: :single_choice,
        options: [
          'Pacifist',
          'Isolationist',
          'Neutral',
          'Interventionist',
          {item: 'Expansionist', hint: 'Will force at least a 5% military budget'}
        ]
      },
      {
        section: 'State',
        item: 'Immigration',
        question: 'In which of the following situations should immigration be allowed?',
        hint: 'The national policies for controlling immigration of people. Some countries can maintain strict regulations for the entry of immigrants while others can promote lax immigration policies to attract cheap labour or establish entry requirements to attract educated labour and business investors. Refugees differ from asylees in that they don\'t necessarily have to be in the country to apply for asylum.',
        type: :multiple_choice,
        options: [
          'Business',
          'Education',
          'Seeking employment',
          'Asylees',
          'Refugees',
          'Only specfic countries',
        ]
      },
      {
        section: 'Social',
        item: 'Abortion',
        question: 'What is your stance on abortion?',
        hint: 'The policies regulating the availability or restriction of doctor induced pregnancy termination. Abortion can be a controversial subject in many countries for religious, moral or practical reasons. In most of the western world abortion is legal on request while in other countries it might only be allowed for health, socioeconomic reasons and in cases of rape.',
        type: :single_choice,
        options: [
          'Legal on request',
          'Allowed for socioeconomic reasons',
          'Only when life in danger or rape',
          'Only when life in danger',
          'Completely illegal'
        ]
      },
      {
        section: 'Social',
        item: 'Homosexuals',
        question: 'What is your stance on homosexuals?',
        type: :single_choice,
        hint: 'Laws affecting gay, lesbian and bisexual people can vary greatly by country from completely enjoying equal rights including marriage and adoption to being completely illegal and even punishable by death. A common practice that started in Denmark are the civil unions in which people  of the opposite sex can register as partners and benefit from some marriage laws regarding tax breaks and shared  responsibilities.',
        options: [
          'Marriage and adoption allowed',
          'Marriage allowed, no adoption',
          'Civil Unions allowed',
          'No unions recognized',
          'Homosexual behaviour illegal'
        ]
      },
      {
        section: 'Social',
        item: 'Prostitution',
        question: 'How should prostitution be treated?',
        hint: 'Laws regarding the restriction or regulation of engaging in sexual relations in exchange of payment. Even though its a common practice found in all parts of the world  its illegal in mary countries while it can be legal and regulated as a profession in countries mostly in Europe and South America. Critics of prostitution cite either religious or human rights issues while others argue for the distinction of exploitative prostitution from the one practiced by consenting adults.',
        type: :single_choice,
        options: [
          'Prostitution and brothels legal',
          'Prostitution legal, brothels illegal',
          'Illegal but decriminalized',
          'Illegal but decriminalized if selling',
          'Completely illegal'
        ]
      },
      {
        section: 'Social',
        item: 'Women',
        qestion: 'What is your stance on women\'s rights?',
        hint: 'The rights and opportunities of women and girls in society. In most of history women had traditionally limited rights compared to men while by the end of 20th century most of  the women around the world gained the right to vote. Limited rights for women still exist in many countries while in places with equal rights the main issue is wage equality.',
        type: :single_choice,
        options: [
          'Equal wage and paid maternity leave',
          'Equal wage laws',
          'Equal opportunities',
          'No voting allowed',
          'No employment or voting'
        ]
      },
      {
        section: 'Social',
        item: 'Euthanasia',
        qestion: 'Should euthanasia be legal?',
        type: :single_choice,
        hint: 'The intentional ending of a life in order to relieve pain and suffering, usually in patients with terminal diseases. Passive euthanasia refers to the cases when doctors remove any life supporting machinery or drugs that keep the patient alive while in active euthanasia the doctor directly administers a lethal substance to the patient.',
        options: [
          'Legal on request',
          'Legal pending mental evaluation',
          'Passive euthanasia only',
          'Passive euthanasia, if specified py patient',
          'Completely illegal'
        ]
      },
      {
        section: 'Personal',
        item: 'Free Speech',
        qestion: 'When should free speech be controller?',
        hint: 'The right to communicate an opinion or idea without fear of punishment or censorship by the government. Most countries have at least some form of free speech limitations like slander or incitement of violence and can be extended for obscenity or offending religious and ethnic groups. In extreme cases the government can enforce restrictions for criticizing state policies and officials.',
        type: :multiple_choice,
        options: [
          'Incites voilence',
          'Slander',
          'Obscenity',
          'Offending minorities',
          'Offending religions',
          'Criticising government',
        ]
      },
      {
        section: 'Personal',
        item: 'Gun Control',
        qestion: 'How hard should it be to get a gun?',
        hint: 'The laws and policies that regulate the possession, sale and use of firearms. Some countries can have strict  control and regulation for owning a firearm or even be completely illegal while other countries can have relatively few restrictions.',
        type: :single_choice,
        options: [
          'No licence required',
          'Mandatory background checks',
          'Mandatory training and background checks',
          'Licence only for activities like hunting',
          'Completely illegal'
        ]
      },
      {
        section: 'Personal',
        item: 'Drugs',
        qestion: 'Legalize legal-eyes?',
        hint: 'The laws regulating the possession, sale and use of recreational drugs. Popular recreational drugs like alcohol and tobacco are legal in most of the world while other substances are either completely illegal or decriminalized for using.',
        type: :single_choice,
        options: [
          'Most recreational drugs legal',
          'Soft drugs legal',
          'Soft drugs decriminalized',
          'Only alcohol and tobaco legal',
          'All drugs illegal',
        ]
      },
      {
        section: 'Personal',
        item: 'Gambling',
        qestion: 'How much gambling is too much?',
        hint: 'The regulations that apply to the gambling industry including casinos and online gambling. Laws can vary from highly strict in legality or availability of licenses, either for economical or moral reasons, to very loose regulations to attract revenue for the tourist industry.',
        type: :single_choice,
        options: [
          'No licence required',
          'Licence required for local casinos',
          'Licence required for all casinos',
          'Local casino banned, online legal',
          'Completely banned'
        ]
      },
      {
        section: 'Spending',
        item: 'Healthcare',
        question: 'What percentage of the budget should healthcare be?',
        hint: 'High income countries usually have at least some  financial support for the health care of citizens while funding and ownership varies by model. In the Beveridge model, health care  is financed and provided by the government while in the Bismarck  model most hospitals and clinics are private and financed jointly  by employers and employees by payroll deductions. A hybrid model,  also known as single payer, has private run providers funded by  public funds.',
        type: :slider,
        min: 0,
        max: 22,
        slider_range_hints: [
          {min: 0, max: 4, hint: 'All healthcare is private with no public funding'},
          {min: 4, max: 12, hint: 'Both private and state providers'},
          {min: 12, max: 19, hint: 'Private providers, financed by state'},
          {min: 19, max: 23, hint: 'All healthcare provided and financed by the state'}
        ]
      },
      {
        section: 'Spending',
        item: 'Healthcare',
        question: 'What percentage of the budget should social security be?',
        hint: 'The state funded welfare that targets citizens with no job or low income. The government can provide extra income for people earning less than a set minimum wage or can provide income only if you are unemployed and seeking a job. Universal basic   income refers to a universal income to all citizens regardless of their income or employment. Food vouchers on the other hand are provided only to people living under the poverty line.',
        type: :slider,
        min: 0,
        max: 25,
        slider_range_hints: [
          {min: 0, max: 2, hint: 'No benefits'},
          {min: 2, max: 13, hint: 'Food vouchers only'},
          {min: 13, max: 17, hint: 'Unemployment benefits'},
          {min: 17, max: 26, hint: 'Guaranteed minimum income'}
        ]
      },
      {
        section: 'Spending',
        item: 'Education',
        question: 'What percentage of the budget should go towards education?',
        hint: 'In most of the world the government provides free  education with state run schools up to secondary education while higher education can vary in both   funding and ownership by country. State owned   universities usually have high competition for    entrance while some countries offer funding for   tuition free private universities and colleges.',
        type: :slider,
        min: 0,
        max: 21,
        slider_range_hints: [
          {min: 0, max: 0, hint: 'All education private with no funding'},
          {min: 1, max: 6, hint: 'Private secondary education, funded by state'},
          {min: 6, max: 11, hint: 'Only secondary education provided by state'},
          {min: 11, max: 17, hint: 'Higher education private, funded by state'},
          {min: 17, max: 22, hint: 'All education financed and provided by state'},
        ]
      },
      {
        section: 'Spending',
        item: 'Pension',
        question: 'What percentage of the budget should go towards pensions?',
        hint: 'The regular payment to a person that has passed the retirement age.  Pension funds can be funded by the government or by the employers, either fully or jointly with the employees. Pension funds funded by employers and/or employees are usually invested and the government can guarantee the returns regardless of the outcome of the investment. Government funded pensions are either given to people with the lowest pensions under a minimum or they can be provided to everyone, regardless of any extra pension benefits.',
        type: :slider,
        min: 0,
        max: 15,
        slider_range_hints: [
          {min: 0, max: 0, hint: 'No guaranteed fund returns'},
          {min: 0, max: 5, hint: 'Employee/employer funded pension plan'},
          {min: 5, max: 8, hint: 'Employer funded pension fund'},
          {min: 8, max: 14, hint: 'Guaranteed minimum pension'},
          {min: 14, max: 16, hint: 'Universal basic pension'},
        ]
      },
      {
        section: 'Spending',
        item: 'Environment',
        question: 'Which of the following should be budgeted for?',
        hint: 'Green politics is a relatively recent movement that originated in response to the increasing levels of smoke pollution during the industrial revolution. With the widespread use of automobiles and factories environmentalist policies became more common. Most countries today have at least some policies regarding waste management and sanitation while laws vary for air pollution regulation and publicly funding nature conservation. One of the most important issues in environmentalism is about the potential threat of climate change and possible  solutions for reducing greenhouse gas emissions.',
        type: :multiple_choice,
        options: [
          {item: 'Waste managemnt (1%)', data: {percentage: 1}},
          {item: 'Water sanitation regulation (1%)', data: {percentage: 1}},
          {item: 'Public parks funding (1%)', data: {percentage: 1}},
          {item: 'Smoke pollution regulations (1%)', data: {percentage: 1}},
          {item: 'Nature conservation funding (2%', data: {percentage: 2}},
          {item: 'Greenhouse gas regulation (1%)', data: {percentage: 1}},
        ]
      },
      {
        section: 'Spending',
        section: 'Agriculture',
        hint: 'Government influence in the agricultural sector can range from state owned means of production to fully private enterprises. A lot of nations choose to fund agricultural businesses to either ensure cheap prices for staple food or to support the local businesses.',
        type: :slider,
        min: 0,
        max: 8,
        step: 0.5,
        slider_range_hints: [
          {min: 0, max: 0, hint: 'No subsidies'},
          {min: 0, max: 4, hint: 'Subsidies to staple crops '},
          {min: 4, max: 6, hint: 'Agricultural sector subsidized'},
          {min: 6, max: 7, hint: 'Staple crops financed and provided by state'},
          {min: 7, max: 9, hint: 'All agriculture financed and provided by state'}
        ]
      },
      {
        section: 'Spending',
        item: 'Military/Science',
        question: 'How much of the remaining budget should go to the military?',
        sub_text: 'What\'s left of the budget goes to science.',
        type: :slider,
        min: 0,
        max: 100
      },
      {
        section: 'Industries',
        item: 'Banking',
        question: 'What should be the relationship between banks and the state?',
        hint: 'Central bank is the institution responsible for overseeing the commercial banking system by controlling interest rates, money supply and printing the national currency. While traditionally an institution with centralized power and government control, in most developed nations it is designed to be independent with limited political interference.',
        type: :single_choice,
        options: [
          'Most commercial banks owned by state',
          'Central bank owned by state',
          'Private central bank, state appointed governors',
          'Private central bank with some state supervision',
          'No central bank'
        ]
      },
      {
        section: 'Industries',
        item: 'Media',
        question: 'What should be the relationship between the media and the state?',
        hint: 'Media ownership can vary from state owned which they are controlled financially and editorially by the government to media funded by the state with some or no editorial control to completely private media. In most western countries media are private with few state owned and publicly funded media.',
        type: :single_choice,
        options: [
          'All media owned by state',
          'Most media owned by state',
          'Both state and privately owned media',
          'Most media private, some publicly funded',
          'No government affiliated media'
        ]
      },
      {
        section: 'Industries',
        item: 'Natural resources',
        question: 'How should the state manage natural resources?',
        hint: 'The valuable natural resources include minerals, oil, natural gas and other fossil fuels. States can nationalize their natural resources  and distribute their profits or can allow private owners to sell their rights for a profit. Small or developing countries with no adequate infrastructure to develop the resources usually rely on foreign companies that can extract the resources and share profits with the state.',
        type: :single_choice,
        options: [
          'All natural resources state owned',
          'Resources public, some profits to private investors',
          'Equal profit split for private owners and state',
          'All resources are private, some profits to state',
          'All natural resources are private'
        ]
      },
      {
        section: 'Industries',
        item: 'Minimum Wage',
        question: 'What should the policy on minimum wage be?',
        hint: 'The lowest salary that employers are legally required to pay to workers. Proponents of minimum wage argue that it can help reduce poverty and increase the standard of living while others argue that it can damage businesses and increase unemployment.',
        options: [
          'Minimum wage adjusted with inflation',
          'Universal minimum wage',
          'Minimum wage for corporations only',
          'Minimum wage for workers aged over 25',
          'No minimum wage'
        ]
      },
      {
        section: 'Income',
        item: 'Consumption Tax',
        hint: 'The tax rate applied to products. Necessity products usually have lower tax rates than luxury products',
        type: :interval
      },
      {
        section: 'Income',
        item: 'Income Tax',
        hint: 'The tax rate applied to wages. Lower income citizens usually have lower tax rates than high income citizens',
        type: :interval
      },
      {
        section: 'Income',
        item: 'Corporate Tax',
        hint: 'The tax rate applied to corporate profits. Lower income companies usually have lower tax rates',
        type: :interval
      },
      {
        section: 'Income',
        item: 'Capital Gains Tax',
        hint: 'The tax rate applied to profits made by non-inventory products. It includes profits by stocks, real estate and precious metals',
        type: :interval
      },
    ]
  end
end
