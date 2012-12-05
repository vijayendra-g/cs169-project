#Results taken from Drufus output, but in scrambled order. Drufus should correctly reorder according to ranking criteria to pass the tests.

#Used in testing consideration of date, terms in title, and impact factor

Given /^I plan to search for electroconvulsive obesity$/ do
  FakeWeb.register_uri(:any, %r[http://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch*], 
    :body => %Q{
<PubmedArticleSet>
<PubmedArticle>
    <MedlineCitation Owner="NLM" Status="MEDLINE">
        <PMID Version="1">12270970</PMID>
        <DateCreated>
            <Year>2002</Year>
            <Month>09</Month>
            <Day>24</Day>
        </DateCreated>
        <DateCompleted>
            <Year>2002</Year>
            <Month>10</Month>
            <Day>17</Day>
        </DateCompleted>
        <DateRevised>
            <Year>2011</Year>
            <Month>11</Month>
            <Day>17</Day>
        </DateRevised>
        <Article PubModel="Print">
            <Journal>
                <ISSN IssnType="Print">0028-3878</ISSN>
                <JournalIssue CitedMedium="Print">
                    <Volume>59</Volume>
                    <Issue>6 Suppl 4</Issue>
                    <PubDate>
                        <Year>2002</Year>
                        <Month>Sep</Month>
                        <Day>24</Day>
                    </PubDate>
                </JournalIssue>
                <Title>Neurology</Title>
                <ISOAbbreviation>Neurology</ISOAbbreviation>
            </Journal>
            <ArticleTitle>Vagus nerve stimulation therapy: a research update.</ArticleTitle>
            <Pagination>
                <MedlinePgn>S56-61</MedlinePgn>
            </Pagination>
            <Abstract>
                <AbstractText>Over the past 5 years, and especially within the last year, there has been a rapid expansion of vagus nerve stimulation (VNS)-related preclinical research, as well as clinical studies in indications other than epilepsy. The research advances in understanding VNS are occurring in the midst of a blossoming of other forms of therapeutic brain stimulation, such as electroconvulsive therapy (ECT), transcranial magnetic stimulation (TMS), and deep brain stimulation (DBS). In general, improved understanding of the neurobiological effects of VNS therapy as a function of the different use parameters (frequency, intensity, pulse width, duration, dose) is beginning to guide clinical use and help determine which diseases, in addition to epilepsy, VNS might treat.</AbstractText>
            </Abstract>
            <Affiliation>502 North, IOP, Department of Psychiatry, Medical University of South Carolina, 67 President Street, Charleston, SC 29425, USA.</Affiliation>
            <AuthorList CompleteYN="Y">
                <Author ValidYN="Y">
                    <LastName>George</LastName>
                    <ForeName>Mark S</ForeName>
                    <Initials>MS</Initials>
                </Author>
                <Author ValidYN="Y">
                    <LastName>Nahas</LastName>
                    <ForeName>Z</ForeName>
                    <Initials>Z</Initials>
                </Author>
                <Author ValidYN="Y">
                    <LastName>Bohning</LastName>
                    <ForeName>D E</ForeName>
                    <Initials>DE</Initials>
                </Author>
                <Author ValidYN="Y">
                    <LastName>Kozel</LastName>
                    <ForeName>F A</ForeName>
                    <Initials>FA</Initials>
                </Author>
                <Author ValidYN="Y">
                    <LastName>Anderson</LastName>
                    <ForeName>B</ForeName>
                    <Initials>B</Initials>
                </Author>
                <Author ValidYN="Y">
                    <LastName>Chae</LastName>
                    <ForeName>J-H</ForeName>
                    <Initials>JH</Initials>
                </Author>
                <Author ValidYN="Y">
                    <LastName>Lomarev</LastName>
                    <ForeName>M</ForeName>
                    <Initials>M</Initials>
                </Author>
                <Author ValidYN="Y">
                    <LastName>Denslow</LastName>
                    <ForeName>S</ForeName>
                    <Initials>S</Initials>
                </Author>
                <Author ValidYN="Y">
                    <LastName>Li</LastName>
                    <ForeName>X</ForeName>
                    <Initials>X</Initials>
                </Author>
                <Author ValidYN="Y">
                    <LastName>Mu</LastName>
                    <ForeName>C</ForeName>
                    <Initials>C</Initials>
                </Author>
            </AuthorList>
            <Language>eng</Language>
            <GrantList CompleteYN="Y">
                <Grant>
                    <GrantID>R01 AG 40956</GrantID>
                    <Acronym>AG</Acronym>
                    <Agency>NIA NIH HHS</Agency>
                    <Country>United States</Country>
                </Grant>
            </GrantList>
            <PublicationTypeList>
                <PublicationType>Journal Article</PublicationType>
                <PublicationType>Research Support, Non-U.S. Gov't</PublicationType>
                <PublicationType>Research Support, U.S. Gov't, P.H.S.</PublicationType>
                <PublicationType>Review</PublicationType>
            </PublicationTypeList>
        </Article>
        <MedlineJournalInfo>
            <Country>United States</Country>
            <MedlineTA>Neurology</MedlineTA>
            <NlmUniqueID>0401060</NlmUniqueID>
            <ISSNLinking>0028-3878</ISSNLinking>
        </MedlineJournalInfo>
        <CitationSubset>AIM</CitationSubset>
        <CitationSubset>IM</CitationSubset>
        <MeshHeadingList>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Anxiety</DescriptorName>
                <QualifierName MajorTopicYN="N">therapy</QualifierName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Depression</DescriptorName>
                <QualifierName MajorTopicYN="Y">therapy</QualifierName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="Y">Electric Stimulation Therapy</DescriptorName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Epilepsy</DescriptorName>
                <QualifierName MajorTopicYN="Y">therapy</QualifierName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Humans</DescriptorName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Obesity</DescriptorName>
                <QualifierName MajorTopicYN="N">therapy</QualifierName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Pain Management</DescriptorName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Vagus Nerve</DescriptorName>
                <QualifierName MajorTopicYN="Y">physiology</QualifierName>
            </MeshHeading>
        </MeshHeadingList>
        <NumberOfReferences>33</NumberOfReferences>
    </MedlineCitation>
    <PubmedData>
        <History>
            <PubMedPubDate PubStatus="pubmed">
                <Year>2002</Year>
                <Month>9</Month>
                <Day>25</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="medline">
                <Year>2002</Year>
                <Month>10</Month>
                <Day>18</Day>
                <Hour>4</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="entrez">
                <Year>2002</Year>
                <Month>9</Month>
                <Day>25</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
        </History>
        <PublicationStatus>ppublish</PublicationStatus>
        <ArticleIdList>
            <ArticleId IdType="pubmed">12270970</ArticleId>
        </ArticleIdList>
    </PubmedData>
</PubmedArticle>

<PubmedArticle>
    <MedlineCitation Owner="NLM" Status="MEDLINE">
        <PMID Version="1">15992389</PMID>
        <DateCreated>
            <Year>2005</Year>
            <Month>07</Month>
            <Day>04</Day>
        </DateCreated>
        <DateCompleted>
            <Year>2005</Year>
            <Month>12</Month>
            <Day>13</Day>
        </DateCompleted>
        <DateRevised>
            <Year>2006</Year>
            <Month>11</Month>
            <Day>15</Day>
        </DateRevised>
        <Article PubModel="Print">
            <Journal>
                <ISSN IssnType="Print">0001-690X</ISSN>
                <JournalIssue CitedMedium="Print">
                    <Volume>112</Volume>
                    <Issue>2</Issue>
                    <PubDate>
                        <Year>2005</Year>
                        <Month>Aug</Month>
                    </PubDate>
                </JournalIssue>
                <Title>Acta psychiatrica Scandinavica</Title>
                <ISOAbbreviation>Acta Psychiatr Scand</ISOAbbreviation>
            </Journal>
            <ArticleTitle>Bipolar disorder in women: reproductive events and treatment considerations.</ArticleTitle>
            <Pagination>
                <MedlinePgn>88-96</MedlinePgn>
            </Pagination>
            <Abstract>
                <AbstractText Label="OBJECTIVE" NlmCategory="OBJECTIVE">Bipolar disorders are prevalent in women. Women with bipolar disorder often present with different clinical features than men. Reproductive events and hormonal treatments may impact the course of bipolar disorder. Our main objectives are to i) assess the impact of reproductive events on the course of the disorder, and ii) to discuss the relationships between reproductive events and psychiatric treatments.</AbstractText>
                <AbstractText Label="METHOD" NlmCategory="METHODS">A literature search was conducted of MEDLINE journals from 1965 to present. Manual literature searches were also conducted. We review the presentation, clinical course, and treatment considerations of bipolar disorder in women, with emphasis on treatment considerations in the context of reproductive events. Treatment-related issues such as teratogenicity, breastfeeding, polycystic ovarian syndrome, weight gain and obesity, and medication interactions with oral contraceptives are reviewed.</AbstractText>
                <AbstractText Label="RESULTS" NlmCategory="RESULTS">Women with bipolar disorder may be more vulnerable to mood episodes in the context of reproductive events, particularly postpartum. In women of reproductive age, mood stabilizers must be selected with teratogenic risks in mind, with the highest reported risks in pregnancy with valproate, and the greatest concern during breastfeeding with lithium use. In the areas of the perimenopause and polycycstic ovarian syndrome, more data are needed to advise treatment decisions.</AbstractText>
                <AbstractText Label="CONCLUSION" NlmCategory="CONCLUSIONS">We urgently need further study in these areas to deliver care that is appropriate to women with bipolar disorder.</AbstractText>
                <CopyrightInformation>Copyright Blackwell Munksgaard 2005.</CopyrightInformation>
            </Abstract>
            <Affiliation>Women's Mental Health Program, Department of Psychiatry, University of Arizona College of Medicine, Tucson, AZ 85724-5002, USA. marlenef@email.arizona.edu</Affiliation>
            <AuthorList CompleteYN="Y">
                <Author ValidYN="Y">
                    <LastName>Freeman</LastName>
                    <ForeName>M P</ForeName>
                    <Initials>MP</Initials>
                </Author>
                <Author ValidYN="Y">
                    <LastName>Gelenberg</LastName>
                    <ForeName>A J</ForeName>
                    <Initials>AJ</Initials>
                </Author>
            </AuthorList>
            <Language>eng</Language>
            <PublicationTypeList>
                <PublicationType>Journal Article</PublicationType>
                <PublicationType>Research Support, Non-U.S. Gov't</PublicationType>
                <PublicationType>Review</PublicationType>
            </PublicationTypeList>
        </Article>
        <MedlineJournalInfo>
            <Country>Denmark</Country>
            <MedlineTA>Acta Psychiatr Scand</MedlineTA>
            <NlmUniqueID>0370364</NlmUniqueID>
            <ISSNLinking>0001-690X</ISSNLinking>
        </MedlineJournalInfo>
        <ChemicalList>
            <Chemical>
                <RegistryNumber>0</RegistryNumber>
                <NameOfSubstance>Anticonvulsants</NameOfSubstance>
            </Chemical>
            <Chemical>
                <RegistryNumber>0</RegistryNumber>
                <NameOfSubstance>Antipsychotic Agents</NameOfSubstance>
            </Chemical>
            <Chemical>
                <RegistryNumber>7439-93-2</RegistryNumber>
                <NameOfSubstance>Lithium</NameOfSubstance>
            </Chemical>
        </ChemicalList>
        <CitationSubset>IM</CitationSubset>
        <MeshHeadingList>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Anticonvulsants</DescriptorName>
                <QualifierName MajorTopicYN="N">adverse effects</QualifierName>
                <QualifierName MajorTopicYN="Y">therapeutic use</QualifierName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Antipsychotic Agents</DescriptorName>
                <QualifierName MajorTopicYN="N">adverse effects</QualifierName>
                <QualifierName MajorTopicYN="Y">therapeutic use</QualifierName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Bipolar Disorder</DescriptorName>
                <QualifierName MajorTopicYN="N">physiopathology</QualifierName>
                <QualifierName MajorTopicYN="Y">psychology</QualifierName>
                <QualifierName MajorTopicYN="Y">therapy</QualifierName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Breast Feeding</DescriptorName>
                <QualifierName MajorTopicYN="N">psychology</QualifierName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Electroconvulsive Therapy</DescriptorName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Female</DescriptorName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Humans</DescriptorName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Lithium</DescriptorName>
                <QualifierName MajorTopicYN="N">adverse effects</QualifierName>
                <QualifierName MajorTopicYN="Y">therapeutic use</QualifierName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Polycystic Ovary Syndrome</DescriptorName>
                <QualifierName MajorTopicYN="N">psychology</QualifierName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Pregnancy</DescriptorName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Pregnancy Complications</DescriptorName>
                <QualifierName MajorTopicYN="N">psychology</QualifierName>
            </MeshHeading>
        </MeshHeadingList>
        <NumberOfReferences>101</NumberOfReferences>
    </MedlineCitation>
    <PubmedData>
        <History>
            <PubMedPubDate PubStatus="pubmed">
                <Year>2005</Year>
                <Month>7</Month>
                <Day>5</Day>
                <Hour>9</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="medline">
                <Year>2005</Year>
                <Month>12</Month>
                <Day>15</Day>
                <Hour>9</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="entrez">
                <Year>2005</Year>
                <Month>7</Month>
                <Day>5</Day>
                <Hour>9</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
        </History>
        <PublicationStatus>ppublish</PublicationStatus>
        <ArticleIdList>
            <ArticleId IdType="pii">ACP526</ArticleId>
            <ArticleId IdType="doi">10.1111/j.1600-0447.2005.00526.x</ArticleId>
            <ArticleId IdType="pubmed">15992389</ArticleId>
        </ArticleIdList>
    </PubmedData>
</PubmedArticle>

<PubmedArticle>
    <MedlineCitation Owner="NLM" Status="MEDLINE">
        <PMID Version="1">14994733</PMID>
        <DateCreated>
            <Year>2004</Year>
            <Month>03</Month>
            <Day>02</Day>
        </DateCreated>
        <DateCompleted>
            <Year>2004</Year>
            <Month>03</Month>
            <Day>12</Day>
        </DateCompleted>
        <DateRevised>
            <Year>2007</Year>
            <Month>11</Month>
            <Day>15</Day>
        </DateRevised>
        <Article PubModel="Print">
            <Journal>
                <ISSN IssnType="Print">0160-6689</ISSN>
                <JournalIssue CitedMedium="Print">
                    <Volume>65 Suppl 2</Volume>
                    <PubDate>
                        <Year>2004</Year>
                    </PubDate>
                </JournalIssue>
                <Title>The Journal of clinical psychiatry</Title>
                <ISOAbbreviation>J Clin Psychiatry</ISOAbbreviation>
            </Journal>
            <ArticleTitle>Using antipsychotic agents in older patients.</ArticleTitle>
            <Pagination>
                <MedlinePgn>5-99; discussion 100-102; quiz 103-4</MedlinePgn>
            </Pagination>
            <Abstract>
                <AbstractText Label="OBJECTIVES" NlmCategory="OBJECTIVE">Antipsychotics are widely used in geriatric psychiatric disorders. A growing number of atypical antipsychotics are available, expanding clinical options but complicating decision-making. Many questions about use of antipsychotics in older patients remain unanswered by available clinical literature. We therefore surveyed expert opinion on antipsychotic use in older patients (65 years of age or older) for recommendations concerning indications for antipsychotics, choice of antipsychotics for different conditions (e.g., delirium, dementia, schizophrenia, delusional disorder, psychotic mood disorders) and for patients with comorbid conditions or history of side effects, dosing strategies, duration of treatment, and medication combinations.</AbstractText>
                <AbstractText Label="METHOD" NlmCategory="METHODS">Based on a literature review, a 47-question survey with 1,411 options was developed. Approximately three quarters of the options were scored using a modified version of the RAND 9-point scale for rating appropriateness of medical decisions. For other options, experts were asked to write in answers. The survey was sent to 52 American experts on treatment of older adults (38 geriatric psychiatrists, 14 geriatric internists/family physicians), 48 (92%) of whom completed it. In analyzing responses to items rated on the 9-point scale, consensus was defined as a nonrandom distribution of scores by chi-square &quot;goodness-of-fit&quot; test. We assigned a categorical rank (first line/preferred, second line/alternate, third line/usually inappropriate) to each option based on the 95% confidence interval around the mean. Guidelines indicating preferred treatment strategies were then developed for key clinical situations.</AbstractText>
                <AbstractText Label="RESULTS" NlmCategory="RESULTS">The expert panel reached consensus on 78% of options rated on the 9-point scale. The experts did not recommend using antipsychotics in panic disorder, generalized anxiety disorder, nonpsychotic major depression, hypochondriasis, neuropathic pain, severe nausea, motion sickness, or irritability, hostility, and sleep disturbance in the absence of a major psychiatric syndrome. However, antipsychotics were favored in several other disorders. For agitated dementia with delusions, the experts' first-line recommendation is an antipsychotic drug alone; they would also consider adding a mood stabilizer. Risperidone (0.5-2.0 mg/day) was first line followed by quetiapine (50-150 mg/day) and olanzapine (5.0-7.5 mg/day) as high second-line options. There was no first-line recommendation for agitated dementia without delusions; an antipsychotic alone was high second line (rated first line by 60% of the experts). The experts'first-line recommendation for late-life schizophrenia was risperidone (1.25-3.5 mg/day). Quetiapine (100-300 mg/day), olanzapine (7.5-15 mg/day), and aripiprazole (15-30 mg/day) were high second line. For older patients with delusional disorder, an antipsychotic was the only treatment recommended. For agitated nonpsychotic major depression in an older patient, the experts' first-line recommendation was an antidepressant alone (77% first line); second-line options were an antidepressant plus an antipsychotic, electroconvulsive therapy (ECT), an antidepressant plus a benzodiazepine, and an antidepressant plus a mood stabilizer. For nonpsychotic major depression with severe anxiety, the experts recommended an antidepressant alone (79% first line) and would also consider adding a benzodiazepine or mood stabilizer to the antidepressant. If an older patient with adequate dosages for adequate duration, there was limited support for adding an atypical antipsychotic to the antidepressant (36% first line after two failed antidepressant trials). Treatment of choice for geriatric psychotic major depression was an antipsychotic plus an antidepressant (98% first line), with ECT another first-line option (71% first line). For mild geriatric nonpsychotic mania, the first-line recommendation is a mood stabilizer alone; the experts would also consider discontinuing an antidepressant if the patient is receiving one. For severe nonpsychotic mania, the experts recommend a mood stabilizer alone; the experts would also consider discontinuing an antidepressant if the patient is receiving one. For severe nonpsychotic mania, the experts recommend a mood stabilizer plus an antipsychotic (57%; first line) or a mood stabilizer alone (48%; first line) and would discontinue any antidepressant the patient is receiving. For psychotic mania, treatment of choice is a mood stabilizer plus an antipsychotic (98%; first line). Risperidone (1.25-3.0 mg/day) and olanzapine (5-15 mg/day) were first-line options in combination with a mood stabilizer for mania with psychosis, with quetiapine (50-250 mg/day) high second line. If a patient has responded well, the experts recommended the following duration of treatment before attempting to taper and discontinue the antipsychotic: delirium, 1 week; agitated dementia, taper within 3-6 months to determine the lowest effective maintenance dose; schizophrenia, indefinite treatment at the lowest effective dose; delusional disorder, 6 months-indefinitely at the lowest effective dose; psychotic major depression, 6 months; and mania with psychosis, 3 months. For patients with diabetes, dyslipidemia, or obesity, the experts would avoid clozapine, olanzapine, and conventional antipsychotics (especially low- and mid-potency). Quetiapine is first line for a patient with Parkinson's disease. Clozapine, ziprasidone, and conventional antipsychotics (especially low- and mid-potency) should be avoided in patients with QTc prolongation or congestive heart failure. For patients with cognitive impairment, constipation, diabetes, diabetic neuropathy, dyslipidemia, xerophthalmia, and xerostomia, the experts prefer risperidone, with quetiapine high second line. More than a quarter of the experts considered these combinations contraindicated: clozapine + carbamazepine, ziprasidone + tricyclic antidepressant (TCA), and a low-potency conventional antipsychotic + fluoxetine. In combining antidepressants and antipsychotics, the experts would be much more cautious with selective serotonin reuptake inhibitors that are more potent inhibitors of the CYP 450 enzymes (i.e., fluoxetine, fluvoxamine, paroxetine) and with nefazodone, TCAs, and monoamine oxidase inhibitors. The experts recommended extra monitoring when combining any antipsychotic with lithium, carbamazepine, lamotrigine, or valproate (except aripiprazole, risperidone, or a high-potency conventional plus valproate) or with codeine, phenytoin, or tramadol.</AbstractText>
                <AbstractText Label="CONCLUSIONS" NlmCategory="CONCLUSIONS">The experts reached a high level of consensus on many of the key treatment questions. Within the limits of expert opinion and with the expectation that future research data will take precedence, these guidelines provide direction for common clinical dilemmas in the use of antipsychotics in elderly patients. Clinicians should keep in mind that no guidelines can address the complexities of an individual patient and that sound clinical judgment based on clinical experience should be used in applying these recommendations.</AbstractText>
            </Abstract>
            <Affiliation>Cornell Institute of Geriatric Psychiatry and Weill Medical College of Cornell University, USA.</Affiliation>
            <AuthorList CompleteYN="Y">
                <Author ValidYN="Y">
                    <LastName>Alexopoulos</LastName>
                    <ForeName>George S</ForeName>
                    <Initials>GS</Initials>
                </Author>
                <Author ValidYN="Y">
                    <LastName>Streim</LastName>
                    <ForeName>Joel</ForeName>
                    <Initials>J</Initials>
                </Author>
                <Author ValidYN="Y">
                    <LastName>Carpenter</LastName>
                    <ForeName>Daniel</ForeName>
                    <Initials>D</Initials>
                </Author>
                <Author ValidYN="Y">
                    <LastName>Docherty</LastName>
                    <ForeName>John P</ForeName>
                    <Initials>JP</Initials>
                </Author>
                <Author ValidYN="Y">
                    <CollectiveName>Expert Consensus Panel for Using Antipsychotic Drugs in Older Patients</CollectiveName>
                </Author>
            </AuthorList>
            <Language>eng</Language>
            <PublicationTypeList>
                <PublicationType>Consensus Development Conference</PublicationType>
                <PublicationType>Journal Article</PublicationType>
                <PublicationType>Review</PublicationType>
            </PublicationTypeList>
        </Article>
        <MedlineJournalInfo>
            <Country>United States</Country>
            <MedlineTA>J Clin Psychiatry</MedlineTA>
            <NlmUniqueID>7801243</NlmUniqueID>
            <ISSNLinking>0160-6689</ISSNLinking>
        </MedlineJournalInfo>
        <ChemicalList>
            <Chemical>
                <RegistryNumber>0</RegistryNumber>
                <NameOfSubstance>Antipsychotic Agents</NameOfSubstance>
            </Chemical>
            <Chemical>
                <RegistryNumber>0</RegistryNumber>
                <NameOfSubstance>Psychotropic Drugs</NameOfSubstance>
            </Chemical>
        </ChemicalList>
        <CitationSubset>IM</CitationSubset>
        <MeshHeadingList>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Aged</DescriptorName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Antipsychotic Agents</DescriptorName>
                <QualifierName MajorTopicYN="N">adverse effects</QualifierName>
                <QualifierName MajorTopicYN="N">contraindications</QualifierName>
                <QualifierName MajorTopicYN="Y">therapeutic use</QualifierName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Dementia</DescriptorName>
                <QualifierName MajorTopicYN="Y">drug therapy</QualifierName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Dose-Response Relationship, Drug</DescriptorName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Drug Administration Schedule</DescriptorName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Drug Therapy, Combination</DescriptorName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Humans</DescriptorName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Mental Disorders</DescriptorName>
                <QualifierName MajorTopicYN="Y">drug therapy</QualifierName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Practice Guidelines as Topic</DescriptorName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Psychotic Disorders</DescriptorName>
                <QualifierName MajorTopicYN="Y">drug therapy</QualifierName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Psychotropic Drugs</DescriptorName>
                <QualifierName MajorTopicYN="N">therapeutic use</QualifierName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Treatment Outcome</DescriptorName>
            </MeshHeading>
        </MeshHeadingList>
        <NumberOfReferences>0</NumberOfReferences>
    </MedlineCitation>
    <PubmedData>
        <History>
            <PubMedPubDate PubStatus="pubmed">
                <Year>2004</Year>
                <Month>3</Month>
                <Day>5</Day>
                <Hour>5</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="medline">
                <Year>2004</Year>
                <Month>3</Month>
                <Day>16</Day>
                <Hour>5</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="entrez">
                <Year>2004</Year>
                <Month>3</Month>
                <Day>5</Day>
                <Hour>5</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
        </History>
        <PublicationStatus>ppublish</PublicationStatus>
        <ArticleIdList>
            <ArticleId IdType="pubmed">14994733</ArticleId>
        </ArticleIdList>
    </PubmedData>
</PubmedArticle>

<PubmedArticle>
    <MedlineCitation Owner="NLM" Status="MEDLINE">
        <PMID Version="1">20933172</PMID>
        <DateCreated>
            <Year>2010</Year>
            <Month>10</Month>
            <Day>11</Day>
        </DateCreated>
        <DateCompleted>
            <Year>2011</Year>
            <Month>02</Month>
            <Day>10</Day>
        </DateCompleted>
        <Article PubModel="Print">
            <Journal>
                <ISSN IssnType="Electronic">1873-5150</ISSN>
                <JournalIssue CitedMedium="Internet">
                    <Volume>43</Volume>
                    <Issue>5</Issue>
                    <PubDate>
                        <Year>2010</Year>
                        <Month>Nov</Month>
                    </PubDate>
                </JournalIssue>
                <Title>Pediatric neurology</Title>
                <ISOAbbreviation>Pediatr. Neurol.</ISOAbbreviation>
            </Journal>
            <ArticleTitle>Catatonia is hidden in plain sight among different pediatric disorders: a review article.</ArticleTitle>
            <Pagination>
                <MedlinePgn>307-15</MedlinePgn>
            </Pagination>
            <Abstract>
                <AbstractText>Over the past two decades, catatonia has been better demarcated in adult psychiatry as a unique syndrome that consists of specific motor signs with a characteristic response to benzodiazepines and electroconvulsive therapy. Pediatric catatonia is considered rare, but may be underdiagnosed, and hence undertreated. Discussed here are the current diagnostic criteria of catatonia in individual cases of children and adolescents diagnosed with childhood disintegrative disorder, Kleine-Levin syndrome, Prader-Willi syndrome, tic disorder, and autoimmune encephalitis, and the effects of benzodiazepines and electroconvulsive therapy. In these cases, catatonia resolved safely once it was recognized and treated properly. Children and adolescents presenting with these disorders should be systematically assessed for catatonia; when the presence of catatonia is confirmed, the use of benzodiazepines and electroconvulsive therapy should be considered. The occurrence of catatonia in such a wide range of child and adolescent disorders supports the view that pediatric catatonia is not so rare, that there are shared elements in the etiology, psychopathology, and pathophysiology of these disorders, and that catatonia is best classified as a unique neurobiologic syndrome.</AbstractText>
                <CopyrightInformation>Copyright 2010 Elsevier Inc. All rights reserved.</CopyrightInformation>
            </Abstract>
            <Affiliation>Department of Psychiatry, University of Mississippi Medical Center, 2500 North State Street, Jackson, MS 39216, USA. dr6340451@pol.net</Affiliation>
            <AuthorList CompleteYN="Y">
                <Author ValidYN="Y">
                    <LastName>Dhossche</LastName>
                    <ForeName>Dirk M</ForeName>
                    <Initials>DM</Initials>
                </Author>
                <Author ValidYN="Y">
                    <LastName>Wachtel</LastName>
                    <ForeName>Lee E</ForeName>
                    <Initials>LE</Initials>
                </Author>
            </AuthorList>
            <Language>eng</Language>
            <PublicationTypeList>
                <PublicationType>Journal Article</PublicationType>
                <PublicationType>Review</PublicationType>
            </PublicationTypeList>
        </Article>
        <MedlineJournalInfo>
            <Country>United States</Country>
            <MedlineTA>Pediatr Neurol</MedlineTA>
            <NlmUniqueID>8508183</NlmUniqueID>
            <ISSNLinking>0887-8994</ISSNLinking>
        </MedlineJournalInfo>
        <ChemicalList>
            <Chemical>
                <RegistryNumber>12794-10-4</RegistryNumber>
                <NameOfSubstance>Benzodiazepines</NameOfSubstance>
            </Chemical>
        </ChemicalList>
        <SupplMeshList>
            <SupplMeshName Type="Disease">Hashimoto's encephalitis</SupplMeshName>
        </SupplMeshList>
        <CitationSubset>IM</CitationSubset>
        <MeshHeadingList>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Benzodiazepines</DescriptorName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Brain Diseases</DescriptorName>
                <QualifierName MajorTopicYN="N">complications</QualifierName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Catatonia</DescriptorName>
                <QualifierName MajorTopicYN="N">diagnosis</QualifierName>
                <QualifierName MajorTopicYN="Y">etiology</QualifierName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Hashimoto Disease</DescriptorName>
                <QualifierName MajorTopicYN="N">complications</QualifierName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Humans</DescriptorName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Kleine-Levin Syndrome</DescriptorName>
                <QualifierName MajorTopicYN="Y">complications</QualifierName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="Y">Pediatrics</DescriptorName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Prader-Willi Syndrome</DescriptorName>
                <QualifierName MajorTopicYN="Y">complications</QualifierName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Tic Disorders</DescriptorName>
                <QualifierName MajorTopicYN="Y">complications</QualifierName>
            </MeshHeading>
        </MeshHeadingList>
    </MedlineCitation>
    <PubmedData>
        <History>
            <PubMedPubDate PubStatus="received">
                <Year>2010</Year>
                <Month>3</Month>
                <Day>18</Day>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="revised">
                <Year>2010</Year>
                <Month>5</Month>
                <Day>7</Day>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="accepted">
                <Year>2010</Year>
                <Month>7</Month>
                <Day>13</Day>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="entrez">
                <Year>2010</Year>
                <Month>10</Month>
                <Day>12</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="pubmed">
                <Year>2010</Year>
                <Month>10</Month>
                <Day>12</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="medline">
                <Year>2011</Year>
                <Month>2</Month>
                <Day>11</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
        </History>
        <PublicationStatus>ppublish</PublicationStatus>
        <ArticleIdList>
            <ArticleId IdType="pii">S0887-8994(10)00321-8</ArticleId>
            <ArticleId IdType="doi">10.1016/j.pediatrneurol.2010.07.001</ArticleId>
            <ArticleId IdType="pubmed">20933172</ArticleId>
        </ArticleIdList>
    </PubmedData>
</PubmedArticle>

<PubmedArticle>
    <MedlineCitation Owner="NLM" Status="MEDLINE">
        <PMID Version="1">16957541</PMID>
        <DateCreated>
            <Year>2006</Year>
            <Month>09</Month>
            <Day>07</Day>
        </DateCreated>
        <DateCompleted>
            <Year>2007</Year>
            <Month>02</Month>
            <Day>21</Day>
        </DateCompleted>
        <Article PubModel="Print">
            <Journal>
                <ISSN IssnType="Print">1095-0680</ISSN>
                <JournalIssue CitedMedium="Print">
                    <Volume>22</Volume>
                    <Issue>3</Issue>
                    <PubDate>
                        <Year>2006</Year>
                        <Month>Sep</Month>
                    </PubDate>
                </JournalIssue>
                <Title>The journal of ECT</Title>
                <ISOAbbreviation>J ECT</ISOAbbreviation>
            </Journal>
            <ArticleTitle>Electroconvulsive therapy as an alternative treatment for obese patients with mood disorders.</ArticleTitle>
            <Pagination>
                <MedlinePgn>223-5</MedlinePgn>
            </Pagination>
            <Abstract>
                <AbstractText>With the increased use of atypical antipsychotic medication in the treatment of mood disorders, patients are increasingly experiencing side effects, such as obesity, insulin resistance, and the metabolic syndrome, which, in turn, increases the risk of developing cardiovascular disease, type 2 diabetes, and hypertension. Maintenance electroconvulsive therapy (MECT) can be used as a prophylaxis for the recurrence of mood episodes for treatment-resistant patients. There are no reports of metabolic syndromes associated with ECT. We reviewed the charts of 10 patients who have received MECT at our institution over the last 10-year period. Five of 10 patients were obese pre-ECT, all of whom had a significant weight loss after ECT. Patients whose weights were normal pre-ECT, did not experience weight loss. Our finding suggests that ECT is a viable alternative for overweight patients with mood disorders who do not respond to mood stabilizers or cannot tolerate side effects.</AbstractText>
            </Abstract>
            <Affiliation>Department of Psychiatry and Behavioral Sciences, Rosalind Franklin University of Medicine and Science and V.A. Medical Center, North Chicago, IL 60064, USA. lori.moss@rosalindfranklin.edu</Affiliation>
            <AuthorList CompleteYN="Y">
                <Author ValidYN="Y">
                    <LastName>Moss</LastName>
                    <ForeName>Lori E</ForeName>
                    <Initials>LE</Initials>
                </Author>
                <Author ValidYN="Y">
                    <LastName>Vaidya</LastName>
                    <ForeName>Nutan Atre</ForeName>
                    <Initials>NA</Initials>
                </Author>
            </AuthorList>
            <Language>eng</Language>
            <PublicationTypeList>
                <PublicationType>Case Reports</PublicationType>
                <PublicationType>Journal Article</PublicationType>
                <PublicationType>Review</PublicationType>
            </PublicationTypeList>
        </Article>
        <MedlineJournalInfo>
            <Country>United States</Country>
            <MedlineTA>J ECT</MedlineTA>
            <NlmUniqueID>9808943</NlmUniqueID>
            <ISSNLinking>1095-0680</ISSNLinking>
        </MedlineJournalInfo>
        <CitationSubset>IM</CitationSubset>
        <MeshHeadingList>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Adult</DescriptorName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Aged</DescriptorName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="Y">Electroconvulsive Therapy</DescriptorName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Female</DescriptorName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Humans</DescriptorName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Male</DescriptorName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Middle Aged</DescriptorName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Mood Disorders</DescriptorName>
                <QualifierName MajorTopicYN="N">complications</QualifierName>
                <QualifierName MajorTopicYN="Y">therapy</QualifierName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Obesity</DescriptorName>
                <QualifierName MajorTopicYN="N">complications</QualifierName>
                <QualifierName MajorTopicYN="Y">therapy</QualifierName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Weight Loss</DescriptorName>
            </MeshHeading>
        </MeshHeadingList>
        <NumberOfReferences>13</NumberOfReferences>
    </MedlineCitation>
    <PubmedData>
        <History>
            <PubMedPubDate PubStatus="pubmed">
                <Year>2006</Year>
                <Month>9</Month>
                <Day>8</Day>
                <Hour>9</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="medline">
                <Year>2007</Year>
                <Month>2</Month>
                <Day>22</Day>
                <Hour>9</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="entrez">
                <Year>2006</Year>
                <Month>9</Month>
                <Day>8</Day>
                <Hour>9</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
        </History>
        <PublicationStatus>ppublish</PublicationStatus>
        <ArticleIdList>
            <ArticleId IdType="doi">10.1097/01.yct.0000230363.04240.9c</ArticleId>
            <ArticleId IdType="pii">00124509-200609000-00013</ArticleId>
            <ArticleId IdType="pubmed">16957541</ArticleId>
        </ArticleIdList>
    </PubmedData>
</PubmedArticle>

<PubmedArticle>
    <MedlineCitation Owner="NLM" Status="MEDLINE">
        <PMID Version="1">11812699</PMID>
        <DateCreated>
            <Year>2002</Year>
            <Month>01</Month>
            <Day>28</Day>
        </DateCreated>
        <DateCompleted>
            <Year>2002</Year>
            <Month>03</Month>
            <Day>29</Day>
        </DateCompleted>
        <DateRevised>
            <Year>2006</Year>
            <Month>11</Month>
            <Day>15</Day>
        </DateRevised>
        <Article PubModel="Print">
            <Journal>
                <ISSN IssnType="Print">0003-2999</ISSN>
                <JournalIssue CitedMedium="Print">
                    <Volume>94</Volume>
                    <Issue>2</Issue>
                    <PubDate>
                        <Year>2002</Year>
                        <Month>Feb</Month>
                    </PubDate>
                </JournalIssue>
                <Title>Anesthesia and analgesia</Title>
                <ISOAbbreviation>Anesth. Analg.</ISOAbbreviation>
            </Journal>
            <ArticleTitle>Anesthesia for electroconvulsive therapy in obese patients.</ArticleTitle>
            <Pagination>
                <MedlinePgn>360-1, table of contents</MedlinePgn>
            </Pagination>
            <Abstract>
                <AbstractText>IMPLICATIONS: Obese patients have successfully undergone over 650 consecutive uncomplicated ECT treatments without any special precautions at two major U.S. medical centers.</AbstractText>
            </Abstract>
            <Affiliation>Department of Anesthesiology and Pain Management, Cedars Sinai Medical Center, Los Angeles, California, USA.</Affiliation>
            <AuthorList CompleteYN="Y">
                <Author ValidYN="Y">
                    <LastName>Kadar</LastName>
                    <ForeName>Andrew G</ForeName>
                    <Initials>AG</Initials>
                </Author>
                <Author ValidYN="Y">
                    <LastName>Ing</LastName>
                    <ForeName>Caleb H</ForeName>
                    <Initials>CH</Initials>
                </Author>
                <Author ValidYN="Y">
                    <LastName>White</LastName>
                    <ForeName>Paul F</ForeName>
                    <Initials>PF</Initials>
                </Author>
                <Author ValidYN="Y">
                    <LastName>Wakefield</LastName>
                    <ForeName>Cynthia A</ForeName>
                    <Initials>CA</Initials>
                </Author>
                <Author ValidYN="Y">
                    <LastName>Kramer</LastName>
                    <ForeName>Barry A</ForeName>
                    <Initials>BA</Initials>
                </Author>
                <Author ValidYN="Y">
                    <LastName>Clark</LastName>
                    <ForeName>Kerri</ForeName>
                    <Initials>K</Initials>
                </Author>
            </AuthorList>
            <Language>eng</Language>
            <PublicationTypeList>
                <PublicationType>Journal Article</PublicationType>
                <PublicationType>Research Support, Non-U.S. Gov't</PublicationType>
            </PublicationTypeList>
        </Article>
        <MedlineJournalInfo>
            <Country>United States</Country>
            <MedlineTA>Anesth Analg</MedlineTA>
            <NlmUniqueID>1310650</NlmUniqueID>
            <ISSNLinking>0003-2999</ISSNLinking>
        </MedlineJournalInfo>
        <CitationSubset>AIM</CitationSubset>
        <CitationSubset>IM</CitationSubset>
        <MeshHeadingList>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Adult</DescriptorName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Aged</DescriptorName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="Y">Anesthesia, General</DescriptorName>
                <QualifierName MajorTopicYN="N">adverse effects</QualifierName>
                <QualifierName MajorTopicYN="N">methods</QualifierName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="Y">Electroconvulsive Therapy</DescriptorName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Gastric Emptying</DescriptorName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Humans</DescriptorName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Middle Aged</DescriptorName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="Y">Obesity</DescriptorName>
                <QualifierName MajorTopicYN="N">physiopathology</QualifierName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Pneumonia, Aspiration</DescriptorName>
                <QualifierName MajorTopicYN="N">prevention &amp; control</QualifierName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Risk Factors</DescriptorName>
            </MeshHeading>
        </MeshHeadingList>
    </MedlineCitation>
    <PubmedData>
        <History>
            <PubMedPubDate PubStatus="pubmed">
                <Year>2002</Year>
                <Month>1</Month>
                <Day>29</Day>
                <Hour>10</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="medline">
                <Year>2002</Year>
                <Month>3</Month>
                <Day>30</Day>
                <Hour>10</Hour>
                <Minute>1</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="entrez">
                <Year>2002</Year>
                <Month>1</Month>
                <Day>29</Day>
                <Hour>10</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
        </History>
        <PublicationStatus>ppublish</PublicationStatus>
        <ArticleIdList>
            <ArticleId IdType="pubmed">11812699</ArticleId>
        </ArticleIdList>
    </PubmedData>
</PubmedArticle>

<PubmedArticle>
    <MedlineCitation Owner="NLM" Status="MEDLINE">
        <PMID Version="1">16950383</PMID>
        <DateCreated>
            <Year>2006</Year>
            <Month>09</Month>
            <Day>04</Day>
        </DateCreated>
        <DateCompleted>
            <Year>2007</Year>
            <Month>01</Month>
            <Day>18</Day>
        </DateCompleted>
        <Article PubModel="Print">
            <Journal>
                <ISSN IssnType="Print">0163-8343</ISSN>
                <JournalIssue CitedMedium="Print">
                    <Volume>28</Volume>
                    <Issue>5</Issue>
                    <PubDate>
                        <MedlineDate>2006 Sep-Oct</MedlineDate>
                    </PubDate>
                </JournalIssue>
                <Title>General hospital psychiatry</Title>
                <ISOAbbreviation>Gen Hosp Psychiatry</ISOAbbreviation>
            </Journal>
            <ArticleTitle>Electroconvulsive therapy complicated by life-threatening hyperkalemia in a catatonic patient.</ArticleTitle>
            <Pagination>
                <MedlinePgn>440-2</MedlinePgn>
            </Pagination>
            <Abstract>
                <AbstractText>Electroconvulsive therapy (ECT) requires brief general anesthesia, and succinylcholine is a depolarizing neuromuscular blocking agent that is frequently used for this procedure. Its use leads to intracellular potassium release into the extracellular space, usually increasing the serum potassium level by 0.5-1 mEq/L, with little clinical significance. However, long-term immobilization has been associated with changes at the neuromuscular junction (up-regulation of nicotinic cholinergic receptors) and subsequent serious hyperkalemia following succinylcholine administration. We report the case of a severely obese patient, immobilized due to her catatonic state, who developed life-threatening ventricular tachycardia after succinylcholine administration for ECT. Resumption of normal physical activity reverses these neuromuscular junctional changes, allowing subsequent safe succinylcholine administration. Current drug development may eliminate the need for succinylcholine use during ECT.</AbstractText>
            </Abstract>
            <Affiliation>Department of Anesthesia, Tufts-New England Medical Center, Tufts University School of Medicine, Boston, MA 02111, USA. jhudcova@tufts-nemc.org &lt;jhudcova@tufts-nemc.org&gt;</Affiliation>
            <AuthorList CompleteYN="Y">
                <Author ValidYN="Y">
                    <LastName>Hudcova</LastName>
                    <ForeName>Jana</ForeName>
                    <Initials>J</Initials>
                </Author>
                <Author ValidYN="Y">
                    <LastName>Schumann</LastName>
                    <ForeName>Roman</ForeName>
                    <Initials>R</Initials>
                </Author>
            </AuthorList>
            <Language>eng</Language>
            <PublicationTypeList>
                <PublicationType>Case Reports</PublicationType>
                <PublicationType>Journal Article</PublicationType>
            </PublicationTypeList>
        </Article>
        <MedlineJournalInfo>
            <Country>United States</Country>
            <MedlineTA>Gen Hosp Psychiatry</MedlineTA>
            <NlmUniqueID>7905527</NlmUniqueID>
            <ISSNLinking>0163-8343</ISSNLinking>
        </MedlineJournalInfo>
        <ChemicalList>
            <Chemical>
                <RegistryNumber>0</RegistryNumber>
                <NameOfSubstance>Antipsychotic Agents</NameOfSubstance>
            </Chemical>
            <Chemical>
                <RegistryNumber>0</RegistryNumber>
                <NameOfSubstance>Neuromuscular Depolarizing Agents</NameOfSubstance>
            </Chemical>
            <Chemical>
                <RegistryNumber>306-40-1</RegistryNumber>
                <NameOfSubstance>Succinylcholine</NameOfSubstance>
            </Chemical>
            <Chemical>
                <RegistryNumber>52-86-8</RegistryNumber>
                <NameOfSubstance>Haloperidol</NameOfSubstance>
            </Chemical>
            <Chemical>
                <RegistryNumber>7440-09-7</RegistryNumber>
                <NameOfSubstance>Potassium</NameOfSubstance>
            </Chemical>
        </ChemicalList>
        <CitationSubset>IM</CitationSubset>
        <MeshHeadingList>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Adult</DescriptorName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Antipsychotic Agents</DescriptorName>
                <QualifierName MajorTopicYN="N">adverse effects</QualifierName>
                <QualifierName MajorTopicYN="N">therapeutic use</QualifierName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Bipolar Disorder</DescriptorName>
                <QualifierName MajorTopicYN="N">blood</QualifierName>
                <QualifierName MajorTopicYN="N">drug therapy</QualifierName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Catatonia</DescriptorName>
                <QualifierName MajorTopicYN="Y">blood</QualifierName>
                <QualifierName MajorTopicYN="Y">therapy</QualifierName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Dose-Response Relationship, Drug</DescriptorName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Drug Administration Schedule</DescriptorName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Electroconvulsive Therapy</DescriptorName>
                <QualifierName MajorTopicYN="Y">adverse effects</QualifierName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Female</DescriptorName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Haloperidol</DescriptorName>
                <QualifierName MajorTopicYN="N">adverse effects</QualifierName>
                <QualifierName MajorTopicYN="N">therapeutic use</QualifierName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Humans</DescriptorName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Hyperkalemia</DescriptorName>
                <QualifierName MajorTopicYN="Y">blood</QualifierName>
                <QualifierName MajorTopicYN="Y">chemically induced</QualifierName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Infusions, Intravenous</DescriptorName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Neuromuscular Depolarizing Agents</DescriptorName>
                <QualifierName MajorTopicYN="N">administration &amp; dosage</QualifierName>
                <QualifierName MajorTopicYN="Y">adverse effects</QualifierName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Obesity, Morbid</DescriptorName>
                <QualifierName MajorTopicYN="N">blood</QualifierName>
                <QualifierName MajorTopicYN="N">complications</QualifierName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Potassium</DescriptorName>
                <QualifierName MajorTopicYN="N">blood</QualifierName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Risk Factors</DescriptorName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Schizophrenia</DescriptorName>
                <QualifierName MajorTopicYN="N">blood</QualifierName>
                <QualifierName MajorTopicYN="N">drug therapy</QualifierName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Succinylcholine</DescriptorName>
                <QualifierName MajorTopicYN="N">administration &amp; dosage</QualifierName>
                <QualifierName MajorTopicYN="Y">adverse effects</QualifierName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Tachycardia, Ventricular</DescriptorName>
                <QualifierName MajorTopicYN="N">blood</QualifierName>
                <QualifierName MajorTopicYN="N">chemically induced</QualifierName>
            </MeshHeading>
        </MeshHeadingList>
    </MedlineCitation>
    <PubmedData>
        <History>
            <PubMedPubDate PubStatus="received">
                <Year>2006</Year>
                <Month>5</Month>
                <Day>24</Day>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="revised">
                <Year>2006</Year>
                <Month>6</Month>
                <Day>28</Day>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="accepted">
                <Year>2006</Year>
                <Month>7</Month>
                <Day>7</Day>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="pubmed">
                <Year>2006</Year>
                <Month>9</Month>
                <Day>5</Day>
                <Hour>9</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="medline">
                <Year>2007</Year>
                <Month>1</Month>
                <Day>19</Day>
                <Hour>9</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="entrez">
                <Year>2006</Year>
                <Month>9</Month>
                <Day>5</Day>
                <Hour>9</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
        </History>
        <PublicationStatus>ppublish</PublicationStatus>
        <ArticleIdList>
            <ArticleId IdType="pii">S0163-8343(06)00127-7</ArticleId>
            <ArticleId IdType="doi">10.1016/j.genhosppsych.2006.07.003</ArticleId>
            <ArticleId IdType="pubmed">16950383</ArticleId>
        </ArticleIdList>
    </PubmedData>
</PubmedArticle>

<PubmedArticle>
    <MedlineCitation Owner="NLM" Status="MEDLINE">
        <PMID Version="1">18580817</PMID>
        <DateCreated>
            <Year>2009</Year>
            <Month>03</Month>
            <Day>04</Day>
        </DateCreated>
        <DateCompleted>
            <Year>2009</Year>
            <Month>06</Month>
            <Day>25</Day>
        </DateCompleted>
        <Article PubModel="Print">
            <Journal>
                <ISSN IssnType="Electronic">1533-4112</ISSN>
                <JournalIssue CitedMedium="Internet">
                    <Volume>25</Volume>
                    <Issue>1</Issue>
                    <PubDate>
                        <Year>2009</Year>
                        <Month>Mar</Month>
                    </PubDate>
                </JournalIssue>
                <Title>The journal of ECT</Title>
                <ISOAbbreviation>J ECT</ISOAbbreviation>
            </Journal>
            <ArticleTitle>What the electroconvulsive therapy practitioner needs to know about obstructive sleep apnea.</ArticleTitle>
            <Pagination>
                <MedlinePgn>50-3</MedlinePgn>
            </Pagination>
            <Abstract>
                <AbstractText>Obstructive sleep apnea (OSA) is common and increasingly so in countries experiencing an epidemic of obesity. The rate of OSA is likely as high or higher in psychiatric patients and patients receiving electroconvulsive therapy (ECT) as compared with the general population. Obstructive sleep apnea can be detected by maintaining a high degree of suspicion in patients with risk factors, symptoms, and typical physical findings. Failure to detect OSA can lead to serious long-term problems with cardiovascular health, excessive sleepiness, and increased risk of motor vehicle accidents. It is unknown whether failure to treat OSA could promote failure to respond to ECT or greater cognitive problems with ECT, but failure to recognize and manage the risk for OSA in patients receiving ECT might expose them to anesthetic difficulties. Ideally, patients with suspected OSA should have a sleep laboratory evaluation and a definitive treatment plan in place before ECT, but, sometimes, psychiatric urgency and lack of access to resources in developing countries would make this unworkable. At a minimum, steps can be taken during the ECT procedure to manage airway obstruction in suspected or known patients with OSA.</AbstractText>
            </Abstract>
            <Affiliation>Department of Psychiatry and Behavioral Medicine, Wake Forest University Health Sciences, Winston-Salem, NC 27157, USA. vmccall@wfubmc.edu</Affiliation>
            <AuthorList CompleteYN="Y">
                <Author ValidYN="Y">
                    <LastName>McCall</LastName>
                    <ForeName>W Vaughn</ForeName>
                    <Initials>WV</Initials>
                </Author>
                <Author ValidYN="Y">
                    <LastName>Arias</LastName>
                    <ForeName>Lorraine</ForeName>
                    <Initials>L</Initials>
                </Author>
                <Author ValidYN="Y">
                    <LastName>Onafuye</LastName>
                    <ForeName>Rasheed</ForeName>
                    <Initials>R</Initials>
                </Author>
                <Author ValidYN="Y">
                    <LastName>Rosenquist</LastName>
                    <ForeName>Peter B</ForeName>
                    <Initials>PB</Initials>
                </Author>
            </AuthorList>
            <Language>eng</Language>
            <PublicationTypeList>
                <PublicationType>Journal Article</PublicationType>
                <PublicationType>Review</PublicationType>
            </PublicationTypeList>
        </Article>
        <MedlineJournalInfo>
            <Country>United States</Country>
            <MedlineTA>J ECT</MedlineTA>
            <NlmUniqueID>9808943</NlmUniqueID>
            <ISSNLinking>1095-0680</ISSNLinking>
        </MedlineJournalInfo>
        <CitationSubset>IM</CitationSubset>
        <MeshHeadingList>
            <MeshHeading>
                <DescriptorName MajorTopicYN="Y">Electroconvulsive Therapy</DescriptorName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Humans</DescriptorName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Risk Factors</DescriptorName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="Y">Sleep Apnea, Obstructive</DescriptorName>
                <QualifierName MajorTopicYN="N">complications</QualifierName>
                <QualifierName MajorTopicYN="N">diagnosis</QualifierName>
                <QualifierName MajorTopicYN="N">physiopathology</QualifierName>
                <QualifierName MajorTopicYN="N">therapy</QualifierName>
            </MeshHeading>
        </MeshHeadingList>
        <NumberOfReferences>26</NumberOfReferences>
    </MedlineCitation>
    <PubmedData>
        <History>
            <PubMedPubDate PubStatus="pubmed">
                <Year>2008</Year>
                <Month>6</Month>
                <Day>27</Day>
                <Hour>9</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="medline">
                <Year>2009</Year>
                <Month>6</Month>
                <Day>26</Day>
                <Hour>9</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="entrez">
                <Year>2008</Year>
                <Month>6</Month>
                <Day>27</Day>
                <Hour>9</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
        </History>
        <PublicationStatus>ppublish</PublicationStatus>
        <ArticleIdList>
            <ArticleId IdType="doi">10.1097/YCT.0b013e31817144a6</ArticleId>
            <ArticleId IdType="pubmed">18580817</ArticleId>
        </ArticleIdList>
    </PubmedData>
</PubmedArticle>

<PubmedArticle>
    <MedlineCitation Owner="NLM" Status="MEDLINE">
        <PMID Version="1">21507618</PMID>
        <DateCreated>
            <Year>2011</Year>
            <Month>05</Month>
            <Day>16</Day>
        </DateCreated>
        <DateCompleted>
            <Year>2011</Year>
            <Month>09</Month>
            <Day>26</Day>
        </DateCompleted>
        <DateRevised>
            <Year>2011</Year>
            <Month>10</Month>
            <Day>27</Day>
        </DateRevised>
        <Article PubModel="Print-Electronic">
            <Journal>
                <ISSN IssnType="Electronic">1873-4529</ISSN>
                <JournalIssue CitedMedium="Internet">
                    <Volume>23</Volume>
                    <Issue>3</Issue>
                    <PubDate>
                        <Year>2011</Year>
                        <Month>May</Month>
                    </PubDate>
                </JournalIssue>
                <Title>Journal of clinical anesthesia</Title>
                <ISOAbbreviation>J Clin Anesth</ISOAbbreviation>
            </Journal>
            <ArticleTitle>Successful management of a morbidly obese patient for electroconvulsive therapy with elective tracheostomy.</ArticleTitle>
            <Pagination>
                <MedlinePgn>241-3</MedlinePgn>
            </Pagination>
            <Abstract>
                <AbstractText>Electroconvulsive therapy (ECT) is a treatment for affective catatonia and requires multiple general anesthetics. Morbid obesity is an increasingly prevalent condition that may complicate the standard anesthetic management of a patient undergoing ECT. We report the successful airway management of a morbidly obese ECT patient via elective tracheostomy.</AbstractText>
                <CopyrightInformation>Copyright 2011 Elsevier Inc. All rights reserved.</CopyrightInformation>
            </Abstract>
            <Affiliation>Anesthesia and Critical Care, MGH, USA. jwgoldfarb@partners.org [corrected]</Affiliation>
            <AuthorList CompleteYN="Y">
                <Author ValidYN="Y">
                    <LastName>Goldfarb</LastName>
                    <ForeName>Jeremy W</ForeName>
                    <Initials>JW</Initials>
                </Author>
                <Author ValidYN="Y">
                    <LastName>Bittner</LastName>
                    <ForeName>Edward A</ForeName>
                    <Initials>EA</Initials>
                </Author>
                <Author ValidYN="Y">
                    <LastName>George</LastName>
                    <ForeName>Edward</ForeName>
                    <Initials>E</Initials>
                </Author>
                <Author ValidYN="Y">
                    <LastName>Welch</LastName>
                    <ForeName>Charles</ForeName>
                    <Initials>C</Initials>
                </Author>
                <Author ValidYN="Y">
                    <LastName>Schmidt</LastName>
                    <ForeName>Ulrich</ForeName>
                    <Initials>U</Initials>
                </Author>
            </AuthorList>
            <Language>eng</Language>
            <PublicationTypeList>
                <PublicationType>Case Reports</PublicationType>
                <PublicationType>Journal Article</PublicationType>
            </PublicationTypeList>
            <ArticleDate DateType="Electronic">
                <Year>2011</Year>
                <Month>04</Month>
                <Day>19</Day>
            </ArticleDate>
        </Article>
        <MedlineJournalInfo>
            <Country>United States</Country>
            <MedlineTA>J Clin Anesth</MedlineTA>
            <NlmUniqueID>8812166</NlmUniqueID>
            <ISSNLinking>0952-8180</ISSNLinking>
        </MedlineJournalInfo>
        <CitationSubset>IM</CitationSubset>
        <CommentsCorrectionsList>
            <CommentsCorrections RefType="ErratumIn">
                <RefSource>J Clin Anesth. 2011 Aug;23(5):433</RefSource>
            </CommentsCorrections>
        </CommentsCorrectionsList>
        <MeshHeadingList>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Catatonia</DescriptorName>
                <QualifierName MajorTopicYN="N">complications</QualifierName>
                <QualifierName MajorTopicYN="Y">therapy</QualifierName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Depression</DescriptorName>
                <QualifierName MajorTopicYN="Y">therapy</QualifierName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="Y">Electroconvulsive Therapy</DescriptorName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Humans</DescriptorName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Male</DescriptorName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Middle Aged</DescriptorName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Obesity, Morbid</DescriptorName>
                <QualifierName MajorTopicYN="Y">complications</QualifierName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Tracheostomy</DescriptorName>
                <QualifierName MajorTopicYN="Y">methods</QualifierName>
            </MeshHeading>
        </MeshHeadingList>
    </MedlineCitation>
    <PubmedData>
        <History>
            <PubMedPubDate PubStatus="received">
                <Year>2009</Year>
                <Month>7</Month>
                <Day>6</Day>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="revised">
                <Year>2010</Year>
                <Month>3</Month>
                <Day>27</Day>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="accepted">
                <Year>2010</Year>
                <Month>5</Month>
                <Day>6</Day>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="aheadofprint">
                <Year>2011</Year>
                <Month>4</Month>
                <Day>19</Day>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="entrez">
                <Year>2011</Year>
                <Month>4</Month>
                <Day>22</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="pubmed">
                <Year>2011</Year>
                <Month>4</Month>
                <Day>22</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="medline">
                <Year>2011</Year>
                <Month>9</Month>
                <Day>29</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
        </History>
        <PublicationStatus>ppublish</PublicationStatus>
        <ArticleIdList>
            <ArticleId IdType="pii">S0952-8180(11)00116-4</ArticleId>
            <ArticleId IdType="doi">10.1016/j.jclinane.2010.05.009</ArticleId>
            <ArticleId IdType="pubmed">21507618</ArticleId>
        </ArticleIdList>
    </PubmedData>
</PubmedArticle>

<PubmedArticle>
    <MedlineCitation Owner="NLM" Status="MEDLINE">
        <PMID Version="1">21673588</PMID>
        <DateCreated>
            <Year>2011</Year>
            <Month>12</Month>
            <Day>07</Day>
        </DateCreated>
        <DateCompleted>
            <Year>2012</Year>
            <Month>05</Month>
            <Day>08</Day>
        </DateCompleted>
        <Article PubModel="Print">
            <Journal>
                <ISSN IssnType="Electronic">1533-4112</ISSN>
                <JournalIssue CitedMedium="Internet">
                    <Volume>27</Volume>
                    <Issue>4</Issue>
                    <PubDate>
                        <Year>2011</Year>
                        <Month>Dec</Month>
                    </PubDate>
                </JournalIssue>
                <Title>The journal of ECT</Title>
                <ISOAbbreviation>J ECT</ISOAbbreviation>
            </Journal>
            <ArticleTitle>Anesthesia for electroconvulsive therapy in early pregnancy.</ArticleTitle>
            <Pagination>
                <MedlinePgn>328-30</MedlinePgn>
            </Pagination>
            <Abstract>
                <AbstractText>Pharmacological treatment of major psychiatric conditions (eg, schizophrenia, bipolar disorder) is exceptionally difficult during pregnancy. Despite all efforts, medication-resistant life-threatening mental deterioration can emerge with the urgent need for rapid and effective intervention. In these cases, electroconvulsive therapy (ECT) may represent the only valid and safe therapeutic option. Here, we present the challenging medical case of a 31-year-old primigravida with a general medical history of obesity and hypertension, previously diagnosed with bipolar affective disorder, now presenting with severe, therapy-resistant manic agitation. Full symptomatic remission was achieved and preserved with ECT given between the 7th and 22nd gestational weeks, the pregnancy reached full term, and a healthy child was born by cesarean delivery performed because of preeclampsia. Although it is unusual to start ECT this early in pregnancy, with the thorough assessment of potential risk factors and preventive measures taken, it can be the most effective and presumably the least risky treatment approach. By delineating key aspects of both the psychiatric and anesthetic management of this case, we aim to highlight the importance of a close cooperation between all medical fields involved in clinical practice.</AbstractText>
            </Abstract>
            <Affiliation>Department of Anaesthesiology and Intensive Therapy, University of Szeged, Szeged, Hungary.</Affiliation>
            <AuthorList CompleteYN="Y">
                <Author ValidYN="Y">
                    <LastName>Lovas</LastName>
                    <ForeName>Andras</ForeName>
                    <Initials>A</Initials>
                </Author>
                <Author ValidYN="Y">
                    <LastName>Almos</LastName>
                    <ForeName>Peter Z</ForeName>
                    <Initials>PZ</Initials>
                </Author>
                <Author ValidYN="Y">
                    <LastName>Peto</LastName>
                    <ForeName>Zoltan</ForeName>
                    <Initials>Z</Initials>
                </Author>
                <Author ValidYN="Y">
                    <LastName>Must</LastName>
                    <ForeName>Anita</ForeName>
                    <Initials>A</Initials>
                </Author>
                <Author ValidYN="Y">
                    <LastName>Horvath</LastName>
                    <ForeName>Szatmar</ForeName>
                    <Initials>S</Initials>
                </Author>
            </AuthorList>
            <Language>eng</Language>
            <PublicationTypeList>
                <PublicationType>Case Reports</PublicationType>
                <PublicationType>Journal Article</PublicationType>
            </PublicationTypeList>
        </Article>
        <MedlineJournalInfo>
            <Country>United States</Country>
            <MedlineTA>J ECT</MedlineTA>
            <NlmUniqueID>9808943</NlmUniqueID>
            <ISSNLinking>1095-0680</ISSNLinking>
        </MedlineJournalInfo>
        <CitationSubset>IM</CitationSubset>
        <MeshHeadingList>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Adult</DescriptorName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="Y">Anesthesia</DescriptorName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Bipolar Disorder</DescriptorName>
                <QualifierName MajorTopicYN="N">complications</QualifierName>
                <QualifierName MajorTopicYN="Y">therapy</QualifierName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Cesarean Section</DescriptorName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="Y">Electroconvulsive Therapy</DescriptorName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Female</DescriptorName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Humans</DescriptorName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Hypertension</DescriptorName>
                <QualifierName MajorTopicYN="N">complications</QualifierName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Obesity</DescriptorName>
                <QualifierName MajorTopicYN="N">complications</QualifierName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Pregnancy</DescriptorName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Risk Factors</DescriptorName>
            </MeshHeading>
            <MeshHeading>
                <DescriptorName MajorTopicYN="N">Treatment Outcome</DescriptorName>
            </MeshHeading>
        </MeshHeadingList>
    </MedlineCitation>
    <PubmedData>
        <History>
            <PubMedPubDate PubStatus="entrez">
                <Year>2011</Year>
                <Month>6</Month>
                <Day>16</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="pubmed">
                <Year>2011</Year>
                <Month>6</Month>
                <Day>16</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="medline">
                <Year>2012</Year>
                <Month>5</Month>
                <Day>9</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
        </History>
        <PublicationStatus>ppublish</PublicationStatus>
        <ArticleIdList>
            <ArticleId IdType="doi">10.1097/YCT.0b013e318213cd00</ArticleId>
            <ArticleId IdType="pubmed">21673588</ArticleId>
        </ArticleIdList>
    </PubmedData>
</PubmedArticle>



</PubmedArticleSet>

})
end
