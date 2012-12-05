#Used for testing pagination and article saving.

Given /^I plan to search for headache$/ do
  FakeWeb.register_uri(:any, %r[http://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch*], 
    :body => %Q{
<PubmedArticleSet>
<PubmedArticle>
    <MedlineCitation Owner="NLM" Status="In-Data-Review">
        <PMID Version="1">23197953</PMID>
        <DateCreated>
            <Year>2012</Year>
            <Month>11</Month>
            <Day>30</Day>
        </DateCreated>
        <Article PubModel="Print-Electronic">
            <Journal>
                <ISSN IssnType="Electronic">1664-5510</ISSN>
                <JournalIssue CitedMedium="Internet">
                    <Volume>2</Volume>
                    <Issue>1</Issue>
                    <PubDate>
                        <Year>2012</Year>
                        <Month>Jan</Month>
                    </PubDate>
                </JournalIssue>
                <Title>Case reports in nephrology and urology</Title>
                <ISOAbbreviation>Case Rep Nephrol Urol</ISOAbbreviation>
            </Journal>
            <ArticleTitle>Posterior Reversible Encephalopathy Syndrome during Recovery from Acute Kidney Injury after Hepatitis A Infection.</ArticleTitle>
            <Pagination>
                <MedlinePgn>33-7</MedlinePgn>
            </Pagination>
            <ELocationID EIdType="doi" ValidYN="Y">10.1159/000339253</ELocationID>
            <Abstract>
                <AbstractText>The patient was a 25-year-old healthy male who experienced fever, chills, and abdominal pain for 5 days prior to the hospital visit. He was diagnosed with acute hepatitis A, and at admission he presented with anuric acute kidney injury and hepatic encephalopathy. He received continuous renal replacement therapy followed by intermittent regular hemodialysis. His urine output increased to 1,610 ml/day after 31 days. On day 32, he suddenly developed a headache and visual disturbance and experienced three short convulsions, which were followed by postictal confusion and high fever. T2 and FLAIR MRI images of the brain revealed hyperintense signal alterations in bilateral subcortical regions of the temporoparietal and occipital lobes, consistent with posterior reversible encephalopathy syndrome. His mental status was fully recovered after 7 h of conservative treatment, including antihypertensive therapy. On hospital day 56, the renal function of the patient had recovered, and he was discharged without neurologic sequelae.</AbstractText>
            </Abstract>
            <Affiliation>Division of Nephrology, Department of Medicine, Samsung Medical Center, Sungkyunkwan University School of Medicine, Seoul, Korea.</Affiliation>
            <AuthorList CompleteYN="Y">
                <Author ValidYN="Y">
                    <LastName>Kim</LastName>
                    <ForeName>Soo Min</ForeName>
                    <Initials>SM</Initials>
                </Author>
                <Author ValidYN="Y">
                    <LastName>Choi</LastName>
                    <ForeName>Heejung</ForeName>
                    <Initials>H</Initials>
                </Author>
                <Author ValidYN="Y">
                    <LastName>Kim</LastName>
                    <ForeName>Yoonjung</ForeName>
                    <Initials>Y</Initials>
                </Author>
                <Author ValidYN="Y">
                    <LastName>Shin</LastName>
                    <ForeName>Junam</ForeName>
                    <Initials>J</Initials>
                </Author>
                <Author ValidYN="Y">
                    <LastName>Jang</LastName>
                    <ForeName>Hye Ryoun</ForeName>
                    <Initials>HR</Initials>
                </Author>
                <Author ValidYN="Y">
                    <LastName>Lee</LastName>
                    <ForeName>Jung Eun</ForeName>
                    <Initials>JE</Initials>
                </Author>
                <Author ValidYN="Y">
                    <LastName>Huh</LastName>
                    <ForeName>Wooseong</ForeName>
                    <Initials>W</Initials>
                </Author>
                <Author ValidYN="Y">
                    <LastName>Kim</LastName>
                    <ForeName>Dae Joong</ForeName>
                    <Initials>DJ</Initials>
                </Author>
                <Author ValidYN="Y">
                    <LastName>Oh</LastName>
                    <ForeName>Ha Young</ForeName>
                    <Initials>HY</Initials>
                </Author>
                <Author ValidYN="Y">
                    <LastName>Kim</LastName>
                    <ForeName>Yoon-Goo</ForeName>
                    <Initials>YG</Initials>
                </Author>
            </AuthorList>
            <Language>eng</Language>
            <PublicationTypeList>
                <PublicationType>Journal Article</PublicationType>
            </PublicationTypeList>
            <ArticleDate DateType="Electronic">
                <Year>2012</Year>
                <Month>05</Month>
                <Day>24</Day>
            </ArticleDate>
        </Article>
        <MedlineJournalInfo>
            <Country>Switzerland</Country>
            <MedlineTA>Case Rep Nephrol Urol</MedlineTA>
            <NlmUniqueID>101591817</NlmUniqueID>
            <ISSNLinking>1664-5510</ISSNLinking>
        </MedlineJournalInfo>
    </MedlineCitation>
    <PubmedData>
        <History>
            <PubMedPubDate PubStatus="epublish">
                <Year>2012</Year>
                <Month>5</Month>
                <Day>24</Day>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="entrez">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="pubmed">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="medline">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
        </History>
        <PublicationStatus>ppublish</PublicationStatus>
        <ArticleIdList>
            <ArticleId IdType="doi">10.1159/000339253</ArticleId>
            <ArticleId IdType="pii">cru-0002-0033</ArticleId>
            <ArticleId IdType="pubmed">23197953</ArticleId>
            <ArticleId IdType="pmc">PMC3482082</ArticleId>
        </ArticleIdList>
    </PubmedData>
</PubmedArticle>


<PubmedArticle>
    <MedlineCitation Status="Publisher" Owner="NLM">
        <PMID Version="1">23197746</PMID>
        <DateCreated>
            <Year>2012</Year>
            <Month>11</Month>
            <Day>30</Day>
        </DateCreated>
        <Article PubModel="Print-Electronic">
            <Journal>
                <ISSN IssnType="Electronic">1526-632X</ISSN>
                <JournalIssue CitedMedium="Internet">
                    <PubDate>
                        <Year>2012</Year>
                        <Month>Nov</Month>
                        <Day>28</Day>
                    </PubDate>
                </JournalIssue>
                <Title>Neurology</Title>
                <ISOAbbreviation>Neurology</ISOAbbreviation>
            </Journal>
            <ArticleTitle>Long-term treatment of a patient with severe restless legs syndrome using intrathecal morphine.</ArticleTitle>
            <Pagination>
                <MedlinePgn/>
            </Pagination>
            <Affiliation>From the Interdisciplinary Pain Center (M.H., H.K.), University Medical Centre Freiburg, Freiburg; Pain Medicine Centers (M.H.), Algesiologikum, Munich; and Neurology and Headache Center Munchner Freiheit (H.K.), Munich, Germany.</Affiliation>
            <AuthorList>
                <Author>
                    <LastName>Hornyak</LastName>
                    <ForeName>Magdolna</ForeName>
                    <Initials>M</Initials>
                </Author>
                <Author>
                    <LastName>Kaube</LastName>
                    <ForeName>Holger</ForeName>
                    <Initials>H</Initials>
                </Author>
            </AuthorList>
            <Language>ENG</Language>
            <PublicationTypeList>
                <PublicationType>JOURNAL ARTICLE</PublicationType>
            </PublicationTypeList>
            <ArticleDate DateType="Electronic">
                <Year>2012</Year>
                <Month>11</Month>
                <Day>28</Day>
            </ArticleDate>
        </Article>
        <MedlineJournalInfo>
            <MedlineTA>Neurology</MedlineTA>
            <NlmUniqueID>0401060</NlmUniqueID>
            <ISSNLinking>0028-3878</ISSNLinking>
        </MedlineJournalInfo>
    </MedlineCitation>
    <PubmedData>
        <History>
            <PubMedPubDate PubStatus="entrez">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="pubmed">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="medline">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
        </History>
        <PublicationStatus>aheadofprint</PublicationStatus>
        <ArticleIdList>
            <ArticleId IdType="pii">WNL.0b013e318278b5e7</ArticleId>
            <ArticleId IdType="doi">10.1212/WNL.0b013e318278b5e7</ArticleId>
            <ArticleId IdType="pubmed">23197746</ArticleId>
        </ArticleIdList>
    </PubmedData>
</PubmedArticle>


<PubmedArticle>
    <MedlineCitation Status="Publisher" Owner="NLM">
        <PMID Version="1">23197350</PMID>
        <DateCreated>
            <Year>2012</Year>
            <Month>11</Month>
            <Day>30</Day>
        </DateCreated>
        <Article PubModel="Print-Electronic">
            <Journal>
                <ISSN IssnType="Electronic">1468-2982</ISSN>
                <JournalIssue CitedMedium="Internet">
                    <PubDate>
                        <Year>2012</Year>
                        <Month>Nov</Month>
                        <Day>29</Day>
                    </PubDate>
                </JournalIssue>
                <Title>Cephalalgia : an international journal of headache</Title>
                <ISOAbbreviation>Cephalalgia</ISOAbbreviation>
            </Journal>
            <ArticleTitle>A role for steroids in treating medication overuse headache?</ArticleTitle>
            <Pagination>
                <MedlinePgn/>
            </Pagination>
            <Affiliation>Mayo Clinic, Scottsdale, AZ, USA.</Affiliation>
            <AuthorList>
                <Author>
                    <LastName>Halker</LastName>
                    <ForeName>Rashmi B</ForeName>
                    <Initials>RB</Initials>
                </Author>
                <Author>
                    <LastName>Dilli</LastName>
                    <ForeName>Esma</ForeName>
                    <Initials>E</Initials>
                </Author>
            </AuthorList>
            <Language>ENG</Language>
            <PublicationTypeList>
                <PublicationType>JOURNAL ARTICLE</PublicationType>
            </PublicationTypeList>
            <ArticleDate DateType="Electronic">
                <Year>2012</Year>
                <Month>11</Month>
                <Day>29</Day>
            </ArticleDate>
        </Article>
        <MedlineJournalInfo>
            <MedlineTA>Cephalalgia</MedlineTA>
            <NlmUniqueID>8200710</NlmUniqueID>
            <ISSNLinking>0333-1024</ISSNLinking>
        </MedlineJournalInfo>
    </MedlineCitation>
    <PubmedData>
        <History>
            <PubMedPubDate PubStatus="entrez">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="pubmed">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="medline">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
        </History>
        <PublicationStatus>aheadofprint</PublicationStatus>
        <ArticleIdList>
            <ArticleId IdType="pii">0333102412470217</ArticleId>
            <ArticleId IdType="doi">10.1177/0333102412470217</ArticleId>
            <ArticleId IdType="pubmed">23197350</ArticleId>
        </ArticleIdList>
    </PubmedData>
</PubmedArticle>


<PubmedArticle>
    <MedlineCitation Status="Publisher" Owner="NLM">
        <PMID Version="1">23197349</PMID>
        <DateCreated>
            <Year>2012</Year>
            <Month>11</Month>
            <Day>30</Day>
        </DateCreated>
        <Article PubModel="Print-Electronic">
            <Journal>
                <ISSN IssnType="Electronic">1468-2982</ISSN>
                <JournalIssue CitedMedium="Internet">
                    <PubDate>
                        <Year>2012</Year>
                        <Month>Nov</Month>
                        <Day>29</Day>
                    </PubDate>
                </JournalIssue>
                <Title>Cephalalgia : an international journal of headache</Title>
                <ISOAbbreviation>Cephalalgia</ISOAbbreviation>
            </Journal>
            <ArticleTitle>Use of cannabis among 139 cluster headache sufferers.</ArticleTitle>
            <Pagination>
                <MedlinePgn/>
            </Pagination>
            <Abstract>
                <AbstractText>Aims:A case report suggested the efficacy of cannabis to treat cluster headache (CH) attacks. Our aims were to study the frequency of cannabis use in CH patients, and the reported effects on attacks.Methods:A total of 139 patients with CH attending two French headache centers filled out questionnaires.Results:Sixty-three of the 139 patients (45.3%) had a history of cannabis use. As compared to nonusers, cannabis users were more likely to be younger, male and tobacco smokers. Among the 27 patients (19.4% of the total cohort) who had tried cannabis to treat CH attacks, 25.9% reported some efficacy, 51.8% variable or uncertain effects, and 22.3% negative effects.Conclusions:Cannabis use is very frequent in CH patients, but its efficacy for the treatment of the attacks is limited. Less than one third of self-reported users mention a relief of their attacks following inhalation. Cannabis should not be recommended for CH unless controlled trials with synthetic selective cannabinoids show a more convincing therapeutic benefit.</AbstractText>
            </Abstract>
            <Affiliation>Emergency Headache Center, Head and Neck Clinic, Hopital Lariboisiere, Assistance Publique des Hopitaux de Paris, France.</Affiliation>
            <AuthorList>
                <Author>
                    <LastName>Leroux</LastName>
                    <ForeName>Elizabeth</ForeName>
                    <Initials>E</Initials>
                </Author>
                <Author>
                    <LastName>Taifas</LastName>
                    <ForeName>Irina</ForeName>
                    <Initials>I</Initials>
                </Author>
                <Author>
                    <LastName>Valade</LastName>
                    <ForeName>Dominique</ForeName>
                    <Initials>D</Initials>
                </Author>
                <Author>
                    <LastName>Donnet</LastName>
                    <ForeName>Anne</ForeName>
                    <Initials>A</Initials>
                </Author>
                <Author>
                    <LastName>Chagnon</LastName>
                    <ForeName>Miguel</ForeName>
                    <Initials>M</Initials>
                </Author>
                <Author>
                    <LastName>Ducros</LastName>
                    <ForeName>Anne</ForeName>
                    <Initials>A</Initials>
                </Author>
            </AuthorList>
            <Language>ENG</Language>
            <PublicationTypeList>
                <PublicationType>JOURNAL ARTICLE</PublicationType>
            </PublicationTypeList>
            <ArticleDate DateType="Electronic">
                <Year>2012</Year>
                <Month>11</Month>
                <Day>29</Day>
            </ArticleDate>
        </Article>
        <MedlineJournalInfo>
            <MedlineTA>Cephalalgia</MedlineTA>
            <NlmUniqueID>8200710</NlmUniqueID>
            <ISSNLinking>0333-1024</ISSNLinking>
        </MedlineJournalInfo>
    </MedlineCitation>
    <PubmedData>
        <History>
            <PubMedPubDate PubStatus="entrez">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="pubmed">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="medline">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
        </History>
        <PublicationStatus>aheadofprint</PublicationStatus>
        <ArticleIdList>
            <ArticleId IdType="pii">0333102412468669</ArticleId>
            <ArticleId IdType="doi">10.1177/0333102412468669</ArticleId>
            <ArticleId IdType="pubmed">23197349</ArticleId>
        </ArticleIdList>
    </PubmedData>
</PubmedArticle>


<PubmedArticle>
    <MedlineCitation Status="Publisher" Owner="NLM">
        <PMID Version="1">23197348</PMID>
        <DateCreated>
            <Year>2012</Year>
            <Month>11</Month>
            <Day>30</Day>
        </DateCreated>
        <Article PubModel="Print-Electronic">
            <Journal>
                <ISSN IssnType="Electronic">1468-2982</ISSN>
                <JournalIssue CitedMedium="Internet">
                    <PubDate>
                        <Year>2012</Year>
                        <Month>Nov</Month>
                        <Day>29</Day>
                    </PubDate>
                </JournalIssue>
                <Title>Cephalalgia : an international journal of headache</Title>
                <ISOAbbreviation>Cephalalgia</ISOAbbreviation>
            </Journal>
            <ArticleTitle>SUNCT, SUNA and pituitary tumors: Clinical characteristics and treatment.</ArticleTitle>
            <Pagination>
                <MedlinePgn/>
            </Pagination>
            <Abstract>
                <AbstractText>Background:Short-lasting unilateral neuralgiform headache attacks with conjunctival injection and tearing (SUNCT) and short-lasting unilateral neuralgiform headache attacks with cranial autonomic symptoms (SUNA) are rare types of trigeminal autonomic cephalalgias (TACs).Objective:To describe a series of patients with SUNCT and SUNA including relationship to pituitary tumors.Method:All patients diagnosed with SUNCT or SUNA in the Calgary Headache Assessment and Management Program were reviewed.Results:Six patients (five SUNCTs and one SUNA) were identified. The pain was severe, sharp, showed fixed-laterality, involved mainly the orbito-fronto-temporal region and was associated with autonomic symptoms. Attack duration ranged from 3 to 300 seconds and frequency was 1-200 paroxysms/day. MRI showed ipsilateral pituitary adenomas to the pain in five out of five of the SUNCT patients. Patients with adenomas underwent surgery. Pathology included three prolactinomas, and one mixed adenoma and gangliocytoma. One patient has remained headache free for 4 years after surgery. One was pain free for a year, and then headaches returned with tumor recurrence. Another had major improvement, and two have not improved. Patients were generally refractory to medications.Conclusion:All five of our patients with typical SUNCT had pituitary tumors, with headache ipsilateral to the pituitary tumors in all cases. Tumor removal provided major improvement in three out of five patients. Medical treatment was only partially effective.</AbstractText>
            </Abstract>
            <Affiliation>Department of Clinical Neurosciences, University of Calgary and Alberta Health Services, Canada.</Affiliation>
            <AuthorList>
                <Author>
                    <LastName>Chitsantikul</LastName>
                    <ForeName>Prin</ForeName>
                    <Initials>P</Initials>
                </Author>
                <Author>
                    <LastName>Becker</LastName>
                    <ForeName>Werner J</ForeName>
                    <Initials>WJ</Initials>
                </Author>
            </AuthorList>
            <Language>ENG</Language>
            <PublicationTypeList>
                <PublicationType>JOURNAL ARTICLE</PublicationType>
            </PublicationTypeList>
            <ArticleDate DateType="Electronic">
                <Year>2012</Year>
                <Month>11</Month>
                <Day>29</Day>
            </ArticleDate>
        </Article>
        <MedlineJournalInfo>
            <MedlineTA>Cephalalgia</MedlineTA>
            <NlmUniqueID>8200710</NlmUniqueID>
            <ISSNLinking>0333-1024</ISSNLinking>
        </MedlineJournalInfo>
    </MedlineCitation>
    <PubmedData>
        <History>
            <PubMedPubDate PubStatus="entrez">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="pubmed">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="medline">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
        </History>
        <PublicationStatus>aheadofprint</PublicationStatus>
        <ArticleIdList>
            <ArticleId IdType="pii">0333102412468672</ArticleId>
            <ArticleId IdType="doi">10.1177/0333102412468672</ArticleId>
            <ArticleId IdType="pubmed">23197348</ArticleId>
        </ArticleIdList>
    </PubmedData>
</PubmedArticle>


<PubmedArticle>
    <MedlineCitation Owner="NLM" Status="In-Data-Review">
        <PMID Version="1">23196737</PMID>
        <DateCreated>
            <Year>2012</Year>
            <Month>11</Month>
            <Day>30</Day>
        </DateCreated>
        <Article PubModel="Print">
            <Journal>
                <ISSN IssnType="Print">1028-768X</ISSN>
                <JournalIssue CitedMedium="Print">
                    <Volume>21</Volume>
                    <Issue>3</Issue>
                    <PubDate>
                        <Year>2012</Year>
                        <Month>Sep</Month>
                    </PubDate>
                </JournalIssue>
                <Title>Acta neurologica Taiwanica</Title>
                <ISOAbbreviation>Acta Neurol Taiwan</ISOAbbreviation>
            </Journal>
            <ArticleTitle>Sentinel headache: a prospective case.</ArticleTitle>
            <Pagination>
                <MedlinePgn>147-8</MedlinePgn>
            </Pagination>
            <Affiliation>Department of Medicine National Yang-Ming University, Taipei, Taiwan.</Affiliation>
            <AuthorList CompleteYN="Y">
                <Author ValidYN="Y">
                    <LastName>Cheng</LastName>
                    <ForeName>Yu-Chen</ForeName>
                    <Initials>YC</Initials>
                </Author>
                <Author ValidYN="Y">
                    <LastName>Wong</LastName>
                    <ForeName>Yin-Kin</ForeName>
                    <Initials>YK</Initials>
                </Author>
                <Author ValidYN="Y">
                    <LastName>Lai</LastName>
                    <ForeName>Tzu-Hsien</ForeName>
                    <Initials>TH</Initials>
                </Author>
            </AuthorList>
            <Language>eng</Language>
            <PublicationTypeList>
                <PublicationType>Journal Article</PublicationType>
            </PublicationTypeList>
        </Article>
        <MedlineJournalInfo>
            <Country>China (Republic : 1949- )</Country>
            <MedlineTA>Acta Neurol Taiwan</MedlineTA>
            <NlmUniqueID>9815355</NlmUniqueID>
            <ISSNLinking>1028-768X</ISSNLinking>
        </MedlineJournalInfo>
        <CitationSubset>IM</CitationSubset>
    </MedlineCitation>
    <PubmedData>
        <History>
            <PubMedPubDate PubStatus="entrez">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="pubmed">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="medline">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
        </History>
        <PublicationStatus>ppublish</PublicationStatus>
        <ArticleIdList>
            <ArticleId IdType="pii">10196099/213147</ArticleId>
            <ArticleId IdType="pubmed">23196737</ArticleId>
        </ArticleIdList>
    </PubmedData>
</PubmedArticle>


<PubmedArticle>
    <MedlineCitation Owner="NLM" Status="In-Data-Review">
        <PMID Version="1">23196598</PMID>
        <DateCreated>
            <Year>2012</Year>
            <Month>11</Month>
            <Day>30</Day>
        </DateCreated>
        <Article PubModel="Print">
            <Journal>
                <ISSN IssnType="Electronic">1882-0654</ISSN>
                <JournalIssue CitedMedium="Internet">
                    <Volume>52</Volume>
                    <Issue>11</Issue>
                    <PubDate>
                        <Year>2012</Year>
                    </PubDate>
                </JournalIssue>
                <Title>Rinsho shinkeigaku = Clinical neurology</Title>
                <ISOAbbreviation>Rinsho Shinkeigaku</ISOAbbreviation>
            </Journal>
            <ArticleTitle>Application of acupuncture as a headache management tool.</ArticleTitle>
            <Pagination>
                <MedlinePgn>1299-302</MedlinePgn>
            </Pagination>
            <Abstract>
                <AbstractText>We use two oriental medical techniques in headache management. One is topological microstimulation, and the other is acupuncture point BL10 (Tianzhu) block. 1. Topological microstimulation The topological microstimulation apparatus delivers programmed fluctuating electrical signals to electrodes placed on the distal portion of the limbs, where meridians are concentrated. Topological microstimulation adjusts &quot;qi-blood-fluid&quot; circulating through meridians. &quot;Qi-blood-fluid&quot; is a virtual concept of oriental medicine that means 3 elements (qi, blood, and colorless body fluid). Topological microstimulation induces natural healing power through the bio-homeostatic function, and reduces chronic intractable pain. 2. Acupuncture point BL10 (Tianzhu) block Tianzhu as a meridian point is located at the intersection of the superior nuchal line of the occipital bone and lateral border of the trapezius. This site is located in the superficial layer of the trunk of the greater occipital nerve. Tianzhu block has therapeutic effects on the trigeminocervical complex. As a result, various types of headache are relieved. Tianzhu block was performed in 50 patients in our clinic, and marked effects were observed in 6 patients, moderate effects in 22, slight effects in 19, and no effects in 3. According to the type of headache, this block was effective in 47% of patients with tension-type headache, 38% of those with migraine, 50% of those with chronic daily headache, and 71% of those with neck and/or shoulder pain. Conclusion Various somatic and mental stresses induce headache and functional somatic syndrome, i.e., Tianzhu syndrome. Acupuncture is useful and can be actively recommended for the management of intractable headache such as complicated headache due to Tianzhu syndrome.</AbstractText>
            </Abstract>
            <Affiliation>Manaka Hospital.</Affiliation>
            <AuthorList CompleteYN="Y">
                <Author ValidYN="Y">
                    <LastName>Manaka</LastName>
                    <ForeName>Sninya</ForeName>
                    <Initials>S</Initials>
                </Author>
            </AuthorList>
            <Language>eng</Language>
            <PublicationTypeList>
                <PublicationType>Journal Article</PublicationType>
            </PublicationTypeList>
        </Article>
        <MedlineJournalInfo>
            <Country>Japan</Country>
            <MedlineTA>Rinsho Shinkeigaku</MedlineTA>
            <NlmUniqueID>0417466</NlmUniqueID>
            <ISSNLinking>0009-918X</ISSNLinking>
        </MedlineJournalInfo>
        <CitationSubset>IM</CitationSubset>
    </MedlineCitation>
    <PubmedData>
        <History>
            <PubMedPubDate PubStatus="entrez">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="pubmed">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="medline">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
        </History>
        <PublicationStatus>ppublish</PublicationStatus>
        <ArticleIdList>
            <ArticleId IdType="pii">DN/JST.JSTAGE/clinicalneurol/52.1299</ArticleId>
            <ArticleId IdType="pubmed">23196598</ArticleId>
        </ArticleIdList>
    </PubmedData>
</PubmedArticle>


<PubmedArticle>
    <MedlineCitation Owner="NLM" Status="In-Data-Review">
        <PMID Version="1">23196597</PMID>
        <DateCreated>
            <Year>2012</Year>
            <Month>11</Month>
            <Day>30</Day>
        </DateCreated>
        <Article PubModel="Print">
            <Journal>
                <ISSN IssnType="Electronic">1882-0654</ISSN>
                <JournalIssue CitedMedium="Internet">
                    <Volume>52</Volume>
                    <Issue>11</Issue>
                    <PubDate>
                        <Year>2012</Year>
                    </PubDate>
                </JournalIssue>
                <Title>Rinsho shinkeigaku = Clinical neurology</Title>
                <ISOAbbreviation>Rinsho Shinkeigaku</ISOAbbreviation>
            </Journal>
            <ArticleTitle>Acupuncture; as a valuable tool for headache.</ArticleTitle>
            <Pagination>
                <MedlinePgn>1297-8</MedlinePgn>
            </Pagination>
            <Abstract>
                <AbstractText>Acupuncture is known as the effective tool for headache, but the mechanism of the effect is unknown. We already revealed the acupuncture effect in the clinical team of headache center in Keio University Hospital. Therefore, we tried to establish the animal model for elucidation of mechanism of acupuncture effect in the pathophysiology of headache. Resent study, we reveal the threshold-reduction of the genesis of the cortical spreading depression (CSD; thought as the trigger of migraine attack) during the trigeminal nerve stimulation. This result suggests that, the somatosensory stimulation may influence the occurrence and severity of the pathogenesis of migraine. Furthermore, we assume that our result may lead to the underlying mechanism of acupuncture effect.</AbstractText>
            </Abstract>
            <Affiliation>Department of Neurology, School of Medicine, Keio University.</Affiliation>
            <AuthorList CompleteYN="Y">
                <Author ValidYN="Y">
                    <LastName>Toriumi</LastName>
                    <ForeName>Haruki</ForeName>
                    <Initials>H</Initials>
                </Author>
                <Author ValidYN="Y">
                    <LastName>Ebine</LastName>
                    <ForeName>Taeko</ForeName>
                    <Initials>T</Initials>
                </Author>
                <Author ValidYN="Y">
                    <LastName>Kuroi</LastName>
                    <ForeName>Toshiya</ForeName>
                    <Initials>T</Initials>
                </Author>
                <Author ValidYN="Y">
                    <LastName>Mamoru</LastName>
                    <ForeName>Shibata</ForeName>
                    <Initials>S</Initials>
                </Author>
                <Author ValidYN="Y">
                    <LastName>Shimizu</LastName>
                    <ForeName>Toshihiko</ForeName>
                    <Initials>T</Initials>
                </Author>
                <Author ValidYN="Y">
                    <LastName>Suzuki</LastName>
                    <ForeName>Norihiro</ForeName>
                    <Initials>N</Initials>
                </Author>
            </AuthorList>
            <Language>eng</Language>
            <PublicationTypeList>
                <PublicationType>Journal Article</PublicationType>
            </PublicationTypeList>
        </Article>
        <MedlineJournalInfo>
            <Country>Japan</Country>
            <MedlineTA>Rinsho Shinkeigaku</MedlineTA>
            <NlmUniqueID>0417466</NlmUniqueID>
            <ISSNLinking>0009-918X</ISSNLinking>
        </MedlineJournalInfo>
        <CitationSubset>IM</CitationSubset>
    </MedlineCitation>
    <PubmedData>
        <History>
            <PubMedPubDate PubStatus="entrez">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="pubmed">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="medline">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
        </History>
        <PublicationStatus>ppublish</PublicationStatus>
        <ArticleIdList>
            <ArticleId IdType="pii">DN/JST.JSTAGE/clinicalneurol/52.1297</ArticleId>
            <ArticleId IdType="pubmed">23196597</ArticleId>
        </ArticleIdList>
    </PubmedData>
</PubmedArticle>


<PubmedArticle>
    <MedlineCitation Owner="NLM" Status="In-Data-Review">
        <PMID Version="1">23196594</PMID>
        <DateCreated>
            <Year>2012</Year>
            <Month>11</Month>
            <Day>30</Day>
        </DateCreated>
        <Article PubModel="Print">
            <Journal>
                <ISSN IssnType="Electronic">1882-0654</ISSN>
                <JournalIssue CitedMedium="Internet">
                    <Volume>52</Volume>
                    <Issue>11</Issue>
                    <PubDate>
                        <Year>2012</Year>
                    </PubDate>
                </JournalIssue>
                <Title>Rinsho shinkeigaku = Clinical neurology</Title>
                <ISOAbbreviation>Rinsho Shinkeigaku</ISOAbbreviation>
            </Journal>
            <ArticleTitle>The practical use of acupuncture and moxibustion treatment cooperated with neurological practice.</ArticleTitle>
            <Pagination>
                <MedlinePgn>1287-9</MedlinePgn>
            </Pagination>
            <Abstract>
                <AbstractText>The greatest number of patients in our department are those referred from the Department of Neurology. These patients usually present symptoms or conditions such as peripheral facial paralysis, primary headache, or cerebrovascular disorders; acupuncture and moxibustion treatment have resulted in an overall favorable effect. Regarding the effect of acupuncture and moxibustion treatment on the prevention of migraine attacks, a two-month course of acupuncture has been shown to decrease the number of days with a slight or moderate headache. Furthermore, we have seen a relation between the alleviation of headache and that of muscular tenderness in the neck-shoulder region and masticatory muscles. The results of Arterial Spin-Labeling MRI, by which we determine changes in cerebral blood flow before and after acupuncture stimulation in patients with migraine, have revealed that acupuncture stimulation induces an increase of blood flow in the thalamus and hypothalamus, opercular part, cingulate gyrus, and islet. This differs from the response obtained in healthy individuals. It has been shown that acupuncture and moxibustion for tension headache is highly effective and the action mechanism of acupuncture and moxibustion is associated with relaxation of masticatory muscles hypertonicity in the neck-shoulder region and normalization of circulation dynamics, contributing thereby to the alleviation of headache. Moreover, the automatic nervous system has been found to be related to such analgesic mechanism. Based on our experience, we consider that traditional medicine based on acupuncture and moxibustion is highly effective in patients with neurological symptoms.</AbstractText>
            </Abstract>
            <Affiliation>The Center for Oriental and Integrative Medicine, Saitama Medical University.</Affiliation>
            <AuthorList CompleteYN="Y">
                <Author ValidYN="Y">
                    <LastName>Yamaguchi</LastName>
                    <ForeName>Satoru</ForeName>
                    <Initials>S</Initials>
                </Author>
                <Author ValidYN="Y">
                    <LastName>Araki</LastName>
                    <ForeName>Nobuo</ForeName>
                    <Initials>N</Initials>
                </Author>
            </AuthorList>
            <Language>eng</Language>
            <PublicationTypeList>
                <PublicationType>Journal Article</PublicationType>
            </PublicationTypeList>
        </Article>
        <MedlineJournalInfo>
            <Country>Japan</Country>
            <MedlineTA>Rinsho Shinkeigaku</MedlineTA>
            <NlmUniqueID>0417466</NlmUniqueID>
            <ISSNLinking>0009-918X</ISSNLinking>
        </MedlineJournalInfo>
        <CitationSubset>IM</CitationSubset>
    </MedlineCitation>
    <PubmedData>
        <History>
            <PubMedPubDate PubStatus="entrez">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="pubmed">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="medline">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
        </History>
        <PublicationStatus>ppublish</PublicationStatus>
        <ArticleIdList>
            <ArticleId IdType="pii">DN/JST.JSTAGE/clinicalneurol/52.1287</ArticleId>
            <ArticleId IdType="pubmed">23196594</ArticleId>
        </ArticleIdList>
    </PubmedData>
</PubmedArticle>


<PubmedArticle>
    <MedlineCitation Owner="NLM" Status="In-Data-Review">
        <PMID Version="1">23196501</PMID>
        <DateCreated>
            <Year>2012</Year>
            <Month>11</Month>
            <Day>30</Day>
        </DateCreated>
        <Article PubModel="Print">
            <Journal>
                <ISSN IssnType="Electronic">1882-0654</ISSN>
                <JournalIssue CitedMedium="Internet">
                    <Volume>52</Volume>
                    <Issue>11</Issue>
                    <PubDate>
                        <Year>2012</Year>
                    </PubDate>
                </JournalIssue>
                <Title>Rinsho shinkeigaku = Clinical neurology</Title>
                <ISOAbbreviation>Rinsho Shinkeigaku</ISOAbbreviation>
            </Journal>
            <ArticleTitle>Identification of biomarkers associated with migraine.</ArticleTitle>
            <Pagination>
                <MedlinePgn>1014-7</MedlinePgn>
            </Pagination>
            <Abstract>
                <AbstractText>The diagnosis of migraine can be difficult, even for headache specialists, because some patients do not necessarily fulfill the International Headache Society criteria for migraine. Hence, reliable disease markers of migraine are required for accurate migraine diagnosis. We performed &quot;Omics&quot; analysis such as transcriptomics, proteomics, and genomics utilizing the lymphoblast cell lines and serum obtained from migraineurs. We verified that afodrin, which was among the identified 15 genes that were differentially expressed in lymphoblasts originating from patients with migraine, increased after cortical spreading depression in an animal model. We also investigated the alterations of protein expressions induced by migraine attacks using proteomics analysis. Notably, in two migraineurs, the level of apolipoprotein E protein expression during attacks was significantly higher than pre-attack levels. Recently, we have found a novel family lineage with migraine. They also exhibit severe myalgia with arms and legs. GC binding protein which binds to vitamin D was identified as the product of the causative gene in this family. Our omics approach will contribute to a better understanding of migraine pathophysiology.</AbstractText>
            </Abstract>
            <Affiliation>Department of Neurology, Tokai University School of Medicine.</Affiliation>
            <AuthorList CompleteYN="Y">
                <Author ValidYN="Y">
                    <LastName>Nagata</LastName>
                    <ForeName>Eiichiro</ForeName>
                    <Initials>E</Initials>
                </Author>
            </AuthorList>
            <Language>eng</Language>
            <PublicationTypeList>
                <PublicationType>Journal Article</PublicationType>
            </PublicationTypeList>
        </Article>
        <MedlineJournalInfo>
            <Country>Japan</Country>
            <MedlineTA>Rinsho Shinkeigaku</MedlineTA>
            <NlmUniqueID>0417466</NlmUniqueID>
            <ISSNLinking>0009-918X</ISSNLinking>
        </MedlineJournalInfo>
        <CitationSubset>IM</CitationSubset>
    </MedlineCitation>
    <PubmedData>
        <History>
            <PubMedPubDate PubStatus="entrez">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="pubmed">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="medline">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
        </History>
        <PublicationStatus>ppublish</PublicationStatus>
        <ArticleIdList>
            <ArticleId IdType="pii">DN/JST.JSTAGE/clinicalneurol/52.1014</ArticleId>
            <ArticleId IdType="pubmed">23196501</ArticleId>
        </ArticleIdList>
    </PubmedData>
</PubmedArticle>


<PubmedArticle>
    <MedlineCitation Owner="NLM" Status="In-Data-Review">
        <PMID Version="1">23196498</PMID>
        <DateCreated>
            <Year>2012</Year>
            <Month>11</Month>
            <Day>30</Day>
        </DateCreated>
        <Article PubModel="Print">
            <Journal>
                <ISSN IssnType="Electronic">1882-0654</ISSN>
                <JournalIssue CitedMedium="Internet">
                    <Volume>52</Volume>
                    <Issue>11</Issue>
                    <PubDate>
                        <Year>2012</Year>
                    </PubDate>
                </JournalIssue>
                <Title>Rinsho shinkeigaku = Clinical neurology</Title>
                <ISOAbbreviation>Rinsho Shinkeigaku</ISOAbbreviation>
            </Journal>
            <ArticleTitle>Cortical spreading depression and molecular genetics in migraine.</ArticleTitle>
            <Pagination>
                <MedlinePgn>1006-8</MedlinePgn>
            </Pagination>
            <Abstract>
                <AbstractText>Cortical spreading depression (CSD) is a slowly propagated wave of depolarization of neurons and glial cells, followed by a subsequent sustained suppression of spontaneous neuronal activity. Functional imaging studies of migraine patients have shown dramatic changes in blood flow and brain activity whose characteristics are similar to those of CSD, implicated in migraine visual aura. Although the trigeminal nerve innervates the meninges and participates in the genesis of migraine headaches, triggering mechanisms remain controversial and poorly understood. It is demonstrated by animal models that CSD activates trigeminovascular afferents and evokes a series of cortical meningeal and brainstem events consistent with the development of headache. Three familial hemiplegic migraine, a rare monogenic subtype of migraine with aura, genes have been identified, which all encode ion transporters, suggesting that disturbances in ion and neurotransmitter balances in the brain are responsible for this migraine type. Additional molecular insight into the pathophysiology of migraine may come from other monogenic syndromes such as CADASIL, RVCL. Several genetic associations with candidate migraine genes like ESR1, MTHFR, and INSR, have been convincingly replicated. The genome-wide association studies may be a successful strategy toward identification of migraine susceptibility genes.</AbstractText>
            </Abstract>
            <Affiliation>Division of Neurology, Department of Brain and Neurological Sciences, Faculty of Medicine, Tottori University.</Affiliation>
            <AuthorList CompleteYN="Y">
                <Author ValidYN="Y">
                    <LastName>Kowa</LastName>
                    <ForeName>Hisanori</ForeName>
                    <Initials>H</Initials>
                </Author>
                <Author ValidYN="Y">
                    <LastName>Nakashima</LastName>
                    <ForeName>Kenji</ForeName>
                    <Initials>K</Initials>
                </Author>
            </AuthorList>
            <Language>eng</Language>
            <PublicationTypeList>
                <PublicationType>Journal Article</PublicationType>
            </PublicationTypeList>
        </Article>
        <MedlineJournalInfo>
            <Country>Japan</Country>
            <MedlineTA>Rinsho Shinkeigaku</MedlineTA>
            <NlmUniqueID>0417466</NlmUniqueID>
            <ISSNLinking>0009-918X</ISSNLinking>
        </MedlineJournalInfo>
        <CitationSubset>IM</CitationSubset>
    </MedlineCitation>
    <PubmedData>
        <History>
            <PubMedPubDate PubStatus="entrez">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="pubmed">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="medline">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
        </History>
        <PublicationStatus>ppublish</PublicationStatus>
        <ArticleIdList>
            <ArticleId IdType="pii">DN/JST.JSTAGE/clinicalneurol/52.1006</ArticleId>
            <ArticleId IdType="pubmed">23196498</ArticleId>
        </ArticleIdList>
    </PubmedData>
</PubmedArticle>

<PubmedArticle>
    <MedlineCitation Owner="NLM" Status="In-Data-Review">
        <PMID Version="1">23196598</PMID>
        <DateCreated>
            <Year>2012</Year>
            <Month>11</Month>
            <Day>30</Day>
        </DateCreated>
        <Article PubModel="Print">
            <Journal>
                <ISSN IssnType="Electronic">1882-0654</ISSN>
                <JournalIssue CitedMedium="Internet">
                    <Volume>52</Volume>
                    <Issue>11</Issue>
                    <PubDate>
                        <Year>2012</Year>
                    </PubDate>
                </JournalIssue>
                <Title>Rinshoshinkeigaku = Clinical neurology</Title>
                <ISOAbbreviation>Rinsho Shinkeigaku</ISOAbbreviation>
            </Journal>
            <ArticleTitle>Application of acupuncture as a headache management tool.</ArticleTitle>
            <Pagination>
                <MedlinePgn>1299-302</MedlinePgn>
            </Pagination>
            <Abstract>
                <AbstractText>We use two oriental medical techniques in headache management. One is topological microstimulation, and the other is acupuncture point BL10 (Tianzhu) block. 1. Topological microstimulation The topological microstimulation apparatus delivers programmed fluctuating electrical signals to electrodes placed on the distal portion of the limbs, where meridians are concentrated. Topological microstimulation adjusts &quot;qi-blood-fluid&quot; circulating through meridians. &quot;Qi-blood-fluid&quot; is a virtual concept of oriental medicine that means 3 elements (qi, blood, and colorless body fluid). Topological microstimulation induces natural healing power through the bio-homeostatic function, and reduces chronic intractable pain. 2. Acupuncture point BL10 (Tianzhu) block Tianzhu as a meridian point is located at the intersection of the superior nuchal line of the occipital bone and lateral border of the trapezius. This site is located in the superficial layer of the trunk of the greater occipital nerve. Tianzhu block has therapeutic effects on the trigeminocervical complex. As a result, various types of headache are relieved. Tianzhu block was performed in 50 patients in our clinic, and marked effects were observed in 6 patients, moderate effects in 22, slight effects in 19, and no effects in 3. According to the type of headache, this block was effective in 47% of patients with tension-type headache, 38% of those with migraine, 50% of those with chronic daily headache, and 71% of those with neck and/or shoulder pain. Conclusion Various somatic and mental stresses induce headache and functional somatic syndrome, i.e., Tianzhu syndrome. Acupuncture is useful and can be actively recommended for the management of intractable headache such as complicated headache due to Tianzhu syndrome.</AbstractText>
            </Abstract>
            <Affiliation>Manaka Hospital.</Affiliation>
            <AuthorList CompleteYN="Y">
                <Author ValidYN="Y">
                    <LastName>Manaka</LastName>
                    <ForeName>Sninya</ForeName>
                    <Initials>S</Initials>
                </Author>
            </AuthorList>
            <Language>eng</Language>
            <PublicationTypeList>
                <PublicationType>Journal Article</PublicationType>
            </PublicationTypeList>
        </Article>
        <MedlineJournalInfo>
            <Country>Japan</Country>
            <MedlineTA>Rinsho Shinkeigaku</MedlineTA>
            <NlmUniqueID>0417466</NlmUniqueID>
            <ISSNLinking>0009-918X</ISSNLinking>
        </MedlineJournalInfo>
        <CitationSubset>IM</CitationSubset>
    </MedlineCitation>
    <PubmedData>
        <History>
            <PubMedPubDate PubStatus="entrez">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="pubmed">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="medline">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
        </History>
        <PublicationStatus>ppublish</PublicationStatus>
        <ArticleIdList>
            <ArticleId IdType="pii">DN/JST.JSTAGE/clinicalneurol/52.1299</ArticleId>
            <ArticleId IdType="pubmed">23196598</ArticleId>
        </ArticleIdList>
    </PubmedData>
</PubmedArticle>

<PubmedArticle>
    <MedlineCitation Owner="NLM" Status="In-Data-Review">
        <PMID Version="1">23196598</PMID>
        <DateCreated>
            <Year>2012</Year>
            <Month>11</Month>
            <Day>30</Day>
        </DateCreated>
        <Article PubModel="Print">
            <Journal>
                <ISSN IssnType="Electronic">1882-0654</ISSN>
                <JournalIssue CitedMedium="Internet">
                    <Volume>52</Volume>
                    <Issue>11</Issue>
                    <PubDate>
                        <Year>2012</Year>
                    </PubDate>
                </JournalIssue>
                <Title>Rinshoshinkeigaku = Clinical neurology</Title>
                <ISOAbbreviation>Rinsho Shinkeigaku</ISOAbbreviation>
            </Journal>
            <ArticleTitle>Application of acupuncture as a headache management tool.</ArticleTitle>
            <Pagination>
                <MedlinePgn>1299-302</MedlinePgn>
            </Pagination>
            <Abstract>
                <AbstractText>We use two oriental medical techniques in headache management. One is topological microstimulation, and the other is acupuncture point BL10 (Tianzhu) block. 1. Topological microstimulation The topological microstimulation apparatus delivers programmed fluctuating electrical signals to electrodes placed on the distal portion of the limbs, where meridians are concentrated. Topological microstimulation adjusts &quot;qi-blood-fluid&quot; circulating through meridians. &quot;Qi-blood-fluid&quot; is a virtual concept of oriental medicine that means 3 elements (qi, blood, and colorless body fluid). Topological microstimulation induces natural healing power through the bio-homeostatic function, and reduces chronic intractable pain. 2. Acupuncture point BL10 (Tianzhu) block Tianzhu as a meridian point is located at the intersection of the superior nuchal line of the occipital bone and lateral border of the trapezius. This site is located in the superficial layer of the trunk of the greater occipital nerve. Tianzhu block has therapeutic effects on the trigeminocervical complex. As a result, various types of headache are relieved. Tianzhu block was performed in 50 patients in our clinic, and marked effects were observed in 6 patients, moderate effects in 22, slight effects in 19, and no effects in 3. According to the type of headache, this block was effective in 47% of patients with tension-type headache, 38% of those with migraine, 50% of those with chronic daily headache, and 71% of those with neck and/or shoulder pain. Conclusion Various somatic and mental stresses induce headache and functional somatic syndrome, i.e., Tianzhu syndrome. Acupuncture is useful and can be actively recommended for the management of intractable headache such as complicated headache due to Tianzhu syndrome.</AbstractText>
            </Abstract>
            <Affiliation>Manaka Hospital.</Affiliation>
            <AuthorList CompleteYN="Y">
                <Author ValidYN="Y">
                    <LastName>Manaka</LastName>
                    <ForeName>Sninya</ForeName>
                    <Initials>S</Initials>
                </Author>
            </AuthorList>
            <Language>eng</Language>
            <PublicationTypeList>
                <PublicationType>Journal Article</PublicationType>
            </PublicationTypeList>
        </Article>
        <MedlineJournalInfo>
            <Country>Japan</Country>
            <MedlineTA>Rinsho Shinkeigaku</MedlineTA>
            <NlmUniqueID>0417466</NlmUniqueID>
            <ISSNLinking>0009-918X</ISSNLinking>
        </MedlineJournalInfo>
        <CitationSubset>IM</CitationSubset>
    </MedlineCitation>
    <PubmedData>
        <History>
            <PubMedPubDate PubStatus="entrez">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="pubmed">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="medline">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
        </History>
        <PublicationStatus>ppublish</PublicationStatus>
        <ArticleIdList>
            <ArticleId IdType="pii">DN/JST.JSTAGE/clinicalneurol/52.1299</ArticleId>
            <ArticleId IdType="pubmed">23196598</ArticleId>
        </ArticleIdList>
    </PubmedData>
</PubmedArticle>

<PubmedArticle>
    <MedlineCitation Owner="NLM" Status="In-Data-Review">
        <PMID Version="1">23196598</PMID>
        <DateCreated>
            <Year>2012</Year>
            <Month>11</Month>
            <Day>30</Day>
        </DateCreated>
        <Article PubModel="Print">
            <Journal>
                <ISSN IssnType="Electronic">1882-0654</ISSN>
                <JournalIssue CitedMedium="Internet">
                    <Volume>52</Volume>
                    <Issue>11</Issue>
                    <PubDate>
                        <Year>2012</Year>
                    </PubDate>
                </JournalIssue>
                <Title>Rinshoshinkeigaku = Clinical neurology</Title>
                <ISOAbbreviation>Rinsho Shinkeigaku</ISOAbbreviation>
            </Journal>
            <ArticleTitle>Application of acupuncture as a headache management tool.</ArticleTitle>
            <Pagination>
                <MedlinePgn>1299-302</MedlinePgn>
            </Pagination>
            <Abstract>
                <AbstractText>We use two oriental medical techniques in headache management. One is topological microstimulation, and the other is acupuncture point BL10 (Tianzhu) block. 1. Topological microstimulation The topological microstimulation apparatus delivers programmed fluctuating electrical signals to electrodes placed on the distal portion of the limbs, where meridians are concentrated. Topological microstimulation adjusts &quot;qi-blood-fluid&quot; circulating through meridians. &quot;Qi-blood-fluid&quot; is a virtual concept of oriental medicine that means 3 elements (qi, blood, and colorless body fluid). Topological microstimulation induces natural healing power through the bio-homeostatic function, and reduces chronic intractable pain. 2. Acupuncture point BL10 (Tianzhu) block Tianzhu as a meridian point is located at the intersection of the superior nuchal line of the occipital bone and lateral border of the trapezius. This site is located in the superficial layer of the trunk of the greater occipital nerve. Tianzhu block has therapeutic effects on the trigeminocervical complex. As a result, various types of headache are relieved. Tianzhu block was performed in 50 patients in our clinic, and marked effects were observed in 6 patients, moderate effects in 22, slight effects in 19, and no effects in 3. According to the type of headache, this block was effective in 47% of patients with tension-type headache, 38% of those with migraine, 50% of those with chronic daily headache, and 71% of those with neck and/or shoulder pain. Conclusion Various somatic and mental stresses induce headache and functional somatic syndrome, i.e., Tianzhu syndrome. Acupuncture is useful and can be actively recommended for the management of intractable headache such as complicated headache due to Tianzhu syndrome.</AbstractText>
            </Abstract>
            <Affiliation>Manaka Hospital.</Affiliation>
            <AuthorList CompleteYN="Y">
                <Author ValidYN="Y">
                    <LastName>Manaka</LastName>
                    <ForeName>Sninya</ForeName>
                    <Initials>S</Initials>
                </Author>
            </AuthorList>
            <Language>eng</Language>
            <PublicationTypeList>
                <PublicationType>Journal Article</PublicationType>
            </PublicationTypeList>
        </Article>
        <MedlineJournalInfo>
            <Country>Japan</Country>
            <MedlineTA>Rinsho Shinkeigaku</MedlineTA>
            <NlmUniqueID>0417466</NlmUniqueID>
            <ISSNLinking>0009-918X</ISSNLinking>
        </MedlineJournalInfo>
        <CitationSubset>IM</CitationSubset>
    </MedlineCitation>
    <PubmedData>
        <History>
            <PubMedPubDate PubStatus="entrez">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="pubmed">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="medline">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
        </History>
        <PublicationStatus>ppublish</PublicationStatus>
        <ArticleIdList>
            <ArticleId IdType="pii">DN/JST.JSTAGE/clinicalneurol/52.1299</ArticleId>
            <ArticleId IdType="pubmed">23196598</ArticleId>
        </ArticleIdList>
    </PubmedData>
</PubmedArticle>

<PubmedArticle>
    <MedlineCitation Owner="NLM" Status="In-Data-Review">
        <PMID Version="1">23196598</PMID>
        <DateCreated>
            <Year>2012</Year>
            <Month>11</Month>
            <Day>30</Day>
        </DateCreated>
        <Article PubModel="Print">
            <Journal>
                <ISSN IssnType="Electronic">1882-0654</ISSN>
                <JournalIssue CitedMedium="Internet">
                    <Volume>52</Volume>
                    <Issue>11</Issue>
                    <PubDate>
                        <Year>2012</Year>
                    </PubDate>
                </JournalIssue>
                <Title>Rinshoshinkeigaku = Clinical neurology</Title>
                <ISOAbbreviation>Rinsho Shinkeigaku</ISOAbbreviation>
            </Journal>
            <ArticleTitle>Application of acupuncture as a headache management tool.</ArticleTitle>
            <Pagination>
                <MedlinePgn>1299-302</MedlinePgn>
            </Pagination>
            <Abstract>
                <AbstractText>We use two oriental medical techniques in headache management. One is topological microstimulation, and the other is acupuncture point BL10 (Tianzhu) block. 1. Topological microstimulation The topological microstimulation apparatus delivers programmed fluctuating electrical signals to electrodes placed on the distal portion of the limbs, where meridians are concentrated. Topological microstimulation adjusts &quot;qi-blood-fluid&quot; circulating through meridians. &quot;Qi-blood-fluid&quot; is a virtual concept of oriental medicine that means 3 elements (qi, blood, and colorless body fluid). Topological microstimulation induces natural healing power through the bio-homeostatic function, and reduces chronic intractable pain. 2. Acupuncture point BL10 (Tianzhu) block Tianzhu as a meridian point is located at the intersection of the superior nuchal line of the occipital bone and lateral border of the trapezius. This site is located in the superficial layer of the trunk of the greater occipital nerve. Tianzhu block has therapeutic effects on the trigeminocervical complex. As a result, various types of headache are relieved. Tianzhu block was performed in 50 patients in our clinic, and marked effects were observed in 6 patients, moderate effects in 22, slight effects in 19, and no effects in 3. According to the type of headache, this block was effective in 47% of patients with tension-type headache, 38% of those with migraine, 50% of those with chronic daily headache, and 71% of those with neck and/or shoulder pain. Conclusion Various somatic and mental stresses induce headache and functional somatic syndrome, i.e., Tianzhu syndrome. Acupuncture is useful and can be actively recommended for the management of intractable headache such as complicated headache due to Tianzhu syndrome.</AbstractText>
            </Abstract>
            <Affiliation>Manaka Hospital.</Affiliation>
            <AuthorList CompleteYN="Y">
                <Author ValidYN="Y">
                    <LastName>Manaka</LastName>
                    <ForeName>Sninya</ForeName>
                    <Initials>S</Initials>
                </Author>
            </AuthorList>
            <Language>eng</Language>
            <PublicationTypeList>
                <PublicationType>Journal Article</PublicationType>
            </PublicationTypeList>
        </Article>
        <MedlineJournalInfo>
            <Country>Japan</Country>
            <MedlineTA>Rinsho Shinkeigaku</MedlineTA>
            <NlmUniqueID>0417466</NlmUniqueID>
            <ISSNLinking>0009-918X</ISSNLinking>
        </MedlineJournalInfo>
        <CitationSubset>IM</CitationSubset>
    </MedlineCitation>
    <PubmedData>
        <History>
            <PubMedPubDate PubStatus="entrez">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="pubmed">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="medline">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
        </History>
        <PublicationStatus>ppublish</PublicationStatus>
        <ArticleIdList>
            <ArticleId IdType="pii">DN/JST.JSTAGE/clinicalneurol/52.1299</ArticleId>
            <ArticleId IdType="pubmed">23196598</ArticleId>
        </ArticleIdList>
    </PubmedData>
</PubmedArticle>

<PubmedArticle>
    <MedlineCitation Owner="NLM" Status="In-Data-Review">
        <PMID Version="1">23196598</PMID>
        <DateCreated>
            <Year>2012</Year>
            <Month>11</Month>
            <Day>30</Day>
        </DateCreated>
        <Article PubModel="Print">
            <Journal>
                <ISSN IssnType="Electronic">1882-0654</ISSN>
                <JournalIssue CitedMedium="Internet">
                    <Volume>52</Volume>
                    <Issue>11</Issue>
                    <PubDate>
                        <Year>2012</Year>
                    </PubDate>
                </JournalIssue>
                <Title>Rinshoshinkeigaku = Clinical neurology</Title>
                <ISOAbbreviation>Rinsho Shinkeigaku</ISOAbbreviation>
            </Journal>
            <ArticleTitle>Application of acupuncture as a headache management tool.</ArticleTitle>
            <Pagination>
                <MedlinePgn>1299-302</MedlinePgn>
            </Pagination>
            <Abstract>
                <AbstractText>We use two oriental medical techniques in headache management. One is topological microstimulation, and the other is acupuncture point BL10 (Tianzhu) block. 1. Topological microstimulation The topological microstimulation apparatus delivers programmed fluctuating electrical signals to electrodes placed on the distal portion of the limbs, where meridians are concentrated. Topological microstimulation adjusts &quot;qi-blood-fluid&quot; circulating through meridians. &quot;Qi-blood-fluid&quot; is a virtual concept of oriental medicine that means 3 elements (qi, blood, and colorless body fluid). Topological microstimulation induces natural healing power through the bio-homeostatic function, and reduces chronic intractable pain. 2. Acupuncture point BL10 (Tianzhu) block Tianzhu as a meridian point is located at the intersection of the superior nuchal line of the occipital bone and lateral border of the trapezius. This site is located in the superficial layer of the trunk of the greater occipital nerve. Tianzhu block has therapeutic effects on the trigeminocervical complex. As a result, various types of headache are relieved. Tianzhu block was performed in 50 patients in our clinic, and marked effects were observed in 6 patients, moderate effects in 22, slight effects in 19, and no effects in 3. According to the type of headache, this block was effective in 47% of patients with tension-type headache, 38% of those with migraine, 50% of those with chronic daily headache, and 71% of those with neck and/or shoulder pain. Conclusion Various somatic and mental stresses induce headache and functional somatic syndrome, i.e., Tianzhu syndrome. Acupuncture is useful and can be actively recommended for the management of intractable headache such as complicated headache due to Tianzhu syndrome.</AbstractText>
            </Abstract>
            <Affiliation>Manaka Hospital.</Affiliation>
            <AuthorList CompleteYN="Y">
                <Author ValidYN="Y">
                    <LastName>Manaka</LastName>
                    <ForeName>Sninya</ForeName>
                    <Initials>S</Initials>
                </Author>
            </AuthorList>
            <Language>eng</Language>
            <PublicationTypeList>
                <PublicationType>Journal Article</PublicationType>
            </PublicationTypeList>
        </Article>
        <MedlineJournalInfo>
            <Country>Japan</Country>
            <MedlineTA>Rinsho Shinkeigaku</MedlineTA>
            <NlmUniqueID>0417466</NlmUniqueID>
            <ISSNLinking>0009-918X</ISSNLinking>
        </MedlineJournalInfo>
        <CitationSubset>IM</CitationSubset>
    </MedlineCitation>
    <PubmedData>
        <History>
            <PubMedPubDate PubStatus="entrez">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="pubmed">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="medline">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
        </History>
        <PublicationStatus>ppublish</PublicationStatus>
        <ArticleIdList>
            <ArticleId IdType="pii">DN/JST.JSTAGE/clinicalneurol/52.1299</ArticleId>
            <ArticleId IdType="pubmed">23196598</ArticleId>
        </ArticleIdList>
    </PubmedData>
</PubmedArticle>

<PubmedArticle>
    <MedlineCitation Owner="NLM" Status="In-Data-Review">
        <PMID Version="1">23196598</PMID>
        <DateCreated>
            <Year>2012</Year>
            <Month>11</Month>
            <Day>30</Day>
        </DateCreated>
        <Article PubModel="Print">
            <Journal>
                <ISSN IssnType="Electronic">1882-0654</ISSN>
                <JournalIssue CitedMedium="Internet">
                    <Volume>52</Volume>
                    <Issue>11</Issue>
                    <PubDate>
                        <Year>2012</Year>
                    </PubDate>
                </JournalIssue>
                <Title>Rinshoshinkeigaku = Clinical neurology</Title>
                <ISOAbbreviation>Rinsho Shinkeigaku</ISOAbbreviation>
            </Journal>
            <ArticleTitle>Application of acupuncture as a headache management tool.</ArticleTitle>
            <Pagination>
                <MedlinePgn>1299-302</MedlinePgn>
            </Pagination>
            <Abstract>
                <AbstractText>We use two oriental medical techniques in headache management. One is topological microstimulation, and the other is acupuncture point BL10 (Tianzhu) block. 1. Topological microstimulation The topological microstimulation apparatus delivers programmed fluctuating electrical signals to electrodes placed on the distal portion of the limbs, where meridians are concentrated. Topological microstimulation adjusts &quot;qi-blood-fluid&quot; circulating through meridians. &quot;Qi-blood-fluid&quot; is a virtual concept of oriental medicine that means 3 elements (qi, blood, and colorless body fluid). Topological microstimulation induces natural healing power through the bio-homeostatic function, and reduces chronic intractable pain. 2. Acupuncture point BL10 (Tianzhu) block Tianzhu as a meridian point is located at the intersection of the superior nuchal line of the occipital bone and lateral border of the trapezius. This site is located in the superficial layer of the trunk of the greater occipital nerve. Tianzhu block has therapeutic effects on the trigeminocervical complex. As a result, various types of headache are relieved. Tianzhu block was performed in 50 patients in our clinic, and marked effects were observed in 6 patients, moderate effects in 22, slight effects in 19, and no effects in 3. According to the type of headache, this block was effective in 47% of patients with tension-type headache, 38% of those with migraine, 50% of those with chronic daily headache, and 71% of those with neck and/or shoulder pain. Conclusion Various somatic and mental stresses induce headache and functional somatic syndrome, i.e., Tianzhu syndrome. Acupuncture is useful and can be actively recommended for the management of intractable headache such as complicated headache due to Tianzhu syndrome.</AbstractText>
            </Abstract>
            <Affiliation>Manaka Hospital.</Affiliation>
            <AuthorList CompleteYN="Y">
                <Author ValidYN="Y">
                    <LastName>Manaka</LastName>
                    <ForeName>Sninya</ForeName>
                    <Initials>S</Initials>
                </Author>
            </AuthorList>
            <Language>eng</Language>
            <PublicationTypeList>
                <PublicationType>Journal Article</PublicationType>
            </PublicationTypeList>
        </Article>
        <MedlineJournalInfo>
            <Country>Japan</Country>
            <MedlineTA>Rinsho Shinkeigaku</MedlineTA>
            <NlmUniqueID>0417466</NlmUniqueID>
            <ISSNLinking>0009-918X</ISSNLinking>
        </MedlineJournalInfo>
        <CitationSubset>IM</CitationSubset>
    </MedlineCitation>
    <PubmedData>
        <History>
            <PubMedPubDate PubStatus="entrez">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="pubmed">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="medline">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
        </History>
        <PublicationStatus>ppublish</PublicationStatus>
        <ArticleIdList>
            <ArticleId IdType="pii">DN/JST.JSTAGE/clinicalneurol/52.1299</ArticleId>
            <ArticleId IdType="pubmed">23196598</ArticleId>
        </ArticleIdList>
    </PubmedData>
</PubmedArticle>

<PubmedArticle>
    <MedlineCitation Owner="NLM" Status="In-Data-Review">
        <PMID Version="1">23196598</PMID>
        <DateCreated>
            <Year>2012</Year>
            <Month>11</Month>
            <Day>30</Day>
        </DateCreated>
        <Article PubModel="Print">
            <Journal>
                <ISSN IssnType="Electronic">1882-0654</ISSN>
                <JournalIssue CitedMedium="Internet">
                    <Volume>52</Volume>
                    <Issue>11</Issue>
                    <PubDate>
                        <Year>2012</Year>
                    </PubDate>
                </JournalIssue>
                <Title>Rinshoshinkeigaku = Clinical neurology</Title>
                <ISOAbbreviation>Rinsho Shinkeigaku</ISOAbbreviation>
            </Journal>
            <ArticleTitle>Application of acupuncture as a headache management tool.</ArticleTitle>
            <Pagination>
                <MedlinePgn>1299-302</MedlinePgn>
            </Pagination>
            <Abstract>
                <AbstractText>We use two oriental medical techniques in headache management. One is topological microstimulation, and the other is acupuncture point BL10 (Tianzhu) block. 1. Topological microstimulation The topological microstimulation apparatus delivers programmed fluctuating electrical signals to electrodes placed on the distal portion of the limbs, where meridians are concentrated. Topological microstimulation adjusts &quot;qi-blood-fluid&quot; circulating through meridians. &quot;Qi-blood-fluid&quot; is a virtual concept of oriental medicine that means 3 elements (qi, blood, and colorless body fluid). Topological microstimulation induces natural healing power through the bio-homeostatic function, and reduces chronic intractable pain. 2. Acupuncture point BL10 (Tianzhu) block Tianzhu as a meridian point is located at the intersection of the superior nuchal line of the occipital bone and lateral border of the trapezius. This site is located in the superficial layer of the trunk of the greater occipital nerve. Tianzhu block has therapeutic effects on the trigeminocervical complex. As a result, various types of headache are relieved. Tianzhu block was performed in 50 patients in our clinic, and marked effects were observed in 6 patients, moderate effects in 22, slight effects in 19, and no effects in 3. According to the type of headache, this block was effective in 47% of patients with tension-type headache, 38% of those with migraine, 50% of those with chronic daily headache, and 71% of those with neck and/or shoulder pain. Conclusion Various somatic and mental stresses induce headache and functional somatic syndrome, i.e., Tianzhu syndrome. Acupuncture is useful and can be actively recommended for the management of intractable headache such as complicated headache due to Tianzhu syndrome.</AbstractText>
            </Abstract>
            <Affiliation>Manaka Hospital.</Affiliation>
            <AuthorList CompleteYN="Y">
                <Author ValidYN="Y">
                    <LastName>Manaka</LastName>
                    <ForeName>Sninya</ForeName>
                    <Initials>S</Initials>
                </Author>
            </AuthorList>
            <Language>eng</Language>
            <PublicationTypeList>
                <PublicationType>Journal Article</PublicationType>
            </PublicationTypeList>
        </Article>
        <MedlineJournalInfo>
            <Country>Japan</Country>
            <MedlineTA>Rinsho Shinkeigaku</MedlineTA>
            <NlmUniqueID>0417466</NlmUniqueID>
            <ISSNLinking>0009-918X</ISSNLinking>
        </MedlineJournalInfo>
        <CitationSubset>IM</CitationSubset>
    </MedlineCitation>
    <PubmedData>
        <History>
            <PubMedPubDate PubStatus="entrez">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="pubmed">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="medline">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
        </History>
        <PublicationStatus>ppublish</PublicationStatus>
        <ArticleIdList>
            <ArticleId IdType="pii">DN/JST.JSTAGE/clinicalneurol/52.1299</ArticleId>
            <ArticleId IdType="pubmed">23196598</ArticleId>
        </ArticleIdList>
    </PubmedData>
</PubmedArticle>

<PubmedArticle>
    <MedlineCitation Owner="NLM" Status="In-Data-Review">
        <PMID Version="1">23196598</PMID>
        <DateCreated>
            <Year>2012</Year>
            <Month>11</Month>
            <Day>30</Day>
        </DateCreated>
        <Article PubModel="Print">
            <Journal>
                <ISSN IssnType="Electronic">1882-0654</ISSN>
                <JournalIssue CitedMedium="Internet">
                    <Volume>52</Volume>
                    <Issue>11</Issue>
                    <PubDate>
                        <Year>2012</Year>
                    </PubDate>
                </JournalIssue>
                <Title>Rinshoshinkeigaku = Clinical neurology</Title>
                <ISOAbbreviation>Rinsho Shinkeigaku</ISOAbbreviation>
            </Journal>
            <ArticleTitle>Application of acupuncture as a headache management tool.</ArticleTitle>
            <Pagination>
                <MedlinePgn>1299-302</MedlinePgn>
            </Pagination>
            <Abstract>
                <AbstractText>We use two oriental medical techniques in headache management. One is topological microstimulation, and the other is acupuncture point BL10 (Tianzhu) block. 1. Topological microstimulation The topological microstimulation apparatus delivers programmed fluctuating electrical signals to electrodes placed on the distal portion of the limbs, where meridians are concentrated. Topological microstimulation adjusts &quot;qi-blood-fluid&quot; circulating through meridians. &quot;Qi-blood-fluid&quot; is a virtual concept of oriental medicine that means 3 elements (qi, blood, and colorless body fluid). Topological microstimulation induces natural healing power through the bio-homeostatic function, and reduces chronic intractable pain. 2. Acupuncture point BL10 (Tianzhu) block Tianzhu as a meridian point is located at the intersection of the superior nuchal line of the occipital bone and lateral border of the trapezius. This site is located in the superficial layer of the trunk of the greater occipital nerve. Tianzhu block has therapeutic effects on the trigeminocervical complex. As a result, various types of headache are relieved. Tianzhu block was performed in 50 patients in our clinic, and marked effects were observed in 6 patients, moderate effects in 22, slight effects in 19, and no effects in 3. According to the type of headache, this block was effective in 47% of patients with tension-type headache, 38% of those with migraine, 50% of those with chronic daily headache, and 71% of those with neck and/or shoulder pain. Conclusion Various somatic and mental stresses induce headache and functional somatic syndrome, i.e., Tianzhu syndrome. Acupuncture is useful and can be actively recommended for the management of intractable headache such as complicated headache due to Tianzhu syndrome.</AbstractText>
            </Abstract>
            <Affiliation>Manaka Hospital.</Affiliation>
            <AuthorList CompleteYN="Y">
                <Author ValidYN="Y">
                    <LastName>Manaka</LastName>
                    <ForeName>Sninya</ForeName>
                    <Initials>S</Initials>
                </Author>
            </AuthorList>
            <Language>eng</Language>
            <PublicationTypeList>
                <PublicationType>Journal Article</PublicationType>
            </PublicationTypeList>
        </Article>
        <MedlineJournalInfo>
            <Country>Japan</Country>
            <MedlineTA>Rinsho Shinkeigaku</MedlineTA>
            <NlmUniqueID>0417466</NlmUniqueID>
            <ISSNLinking>0009-918X</ISSNLinking>
        </MedlineJournalInfo>
        <CitationSubset>IM</CitationSubset>
    </MedlineCitation>
    <PubmedData>
        <History>
            <PubMedPubDate PubStatus="entrez">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="pubmed">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="medline">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
        </History>
        <PublicationStatus>ppublish</PublicationStatus>
        <ArticleIdList>
            <ArticleId IdType="pii">DN/JST.JSTAGE/clinicalneurol/52.1299</ArticleId>
            <ArticleId IdType="pubmed">23196598</ArticleId>
        </ArticleIdList>
    </PubmedData>
</PubmedArticle>

<PubmedArticle>
    <MedlineCitation Owner="NLM" Status="In-Data-Review">
        <PMID Version="1">23196598</PMID>
        <DateCreated>
            <Year>2012</Year>
            <Month>11</Month>
            <Day>30</Day>
        </DateCreated>
        <Article PubModel="Print">
            <Journal>
                <ISSN IssnType="Electronic">1882-0654</ISSN>
                <JournalIssue CitedMedium="Internet">
                    <Volume>52</Volume>
                    <Issue>11</Issue>
                    <PubDate>
                        <Year>2012</Year>
                    </PubDate>
                </JournalIssue>
                <Title>Rinshoshinkeigaku = Clinical neurology</Title>
                <ISOAbbreviation>Rinsho Shinkeigaku</ISOAbbreviation>
            </Journal>
            <ArticleTitle>Application of acupuncture as a headache management tool.</ArticleTitle>
            <Pagination>
                <MedlinePgn>1299-302</MedlinePgn>
            </Pagination>
            <Abstract>
                <AbstractText>We use two oriental medical techniques in headache management. One is topological microstimulation, and the other is acupuncture point BL10 (Tianzhu) block. 1. Topological microstimulation The topological microstimulation apparatus delivers programmed fluctuating electrical signals to electrodes placed on the distal portion of the limbs, where meridians are concentrated. Topological microstimulation adjusts &quot;qi-blood-fluid&quot; circulating through meridians. &quot;Qi-blood-fluid&quot; is a virtual concept of oriental medicine that means 3 elements (qi, blood, and colorless body fluid). Topological microstimulation induces natural healing power through the bio-homeostatic function, and reduces chronic intractable pain. 2. Acupuncture point BL10 (Tianzhu) block Tianzhu as a meridian point is located at the intersection of the superior nuchal line of the occipital bone and lateral border of the trapezius. This site is located in the superficial layer of the trunk of the greater occipital nerve. Tianzhu block has therapeutic effects on the trigeminocervical complex. As a result, various types of headache are relieved. Tianzhu block was performed in 50 patients in our clinic, and marked effects were observed in 6 patients, moderate effects in 22, slight effects in 19, and no effects in 3. According to the type of headache, this block was effective in 47% of patients with tension-type headache, 38% of those with migraine, 50% of those with chronic daily headache, and 71% of those with neck and/or shoulder pain. Conclusion Various somatic and mental stresses induce headache and functional somatic syndrome, i.e., Tianzhu syndrome. Acupuncture is useful and can be actively recommended for the management of intractable headache such as complicated headache due to Tianzhu syndrome.</AbstractText>
            </Abstract>
            <Affiliation>Manaka Hospital.</Affiliation>
            <AuthorList CompleteYN="Y">
                <Author ValidYN="Y">
                    <LastName>Manaka</LastName>
                    <ForeName>Sninya</ForeName>
                    <Initials>S</Initials>
                </Author>
            </AuthorList>
            <Language>eng</Language>
            <PublicationTypeList>
                <PublicationType>Journal Article</PublicationType>
            </PublicationTypeList>
        </Article>
        <MedlineJournalInfo>
            <Country>Japan</Country>
            <MedlineTA>Rinsho Shinkeigaku</MedlineTA>
            <NlmUniqueID>0417466</NlmUniqueID>
            <ISSNLinking>0009-918X</ISSNLinking>
        </MedlineJournalInfo>
        <CitationSubset>IM</CitationSubset>
    </MedlineCitation>
    <PubmedData>
        <History>
            <PubMedPubDate PubStatus="entrez">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="pubmed">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="medline">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
        </History>
        <PublicationStatus>ppublish</PublicationStatus>
        <ArticleIdList>
            <ArticleId IdType="pii">DN/JST.JSTAGE/clinicalneurol/52.1299</ArticleId>
            <ArticleId IdType="pubmed">23196598</ArticleId>
        </ArticleIdList>
    </PubmedData>
</PubmedArticle>

<PubmedArticle>
    <MedlineCitation Owner="NLM" Status="In-Data-Review">
        <PMID Version="1">23196598</PMID>
        <DateCreated>
            <Year>2012</Year>
            <Month>11</Month>
            <Day>30</Day>
        </DateCreated>
        <Article PubModel="Print">
            <Journal>
                <ISSN IssnType="Electronic">1882-0654</ISSN>
                <JournalIssue CitedMedium="Internet">
                    <Volume>52</Volume>
                    <Issue>11</Issue>
                    <PubDate>
                        <Year>2012</Year>
                    </PubDate>
                </JournalIssue>
                <Title>Rinshoshinkeigaku = Clinical neurology</Title>
                <ISOAbbreviation>Rinsho Shinkeigaku</ISOAbbreviation>
            </Journal>
            <ArticleTitle>Application of acupuncture as a headache management tool.</ArticleTitle>
            <Pagination>
                <MedlinePgn>1299-302</MedlinePgn>
            </Pagination>
            <Abstract>
                <AbstractText>We use two oriental medical techniques in headache management. One is topological microstimulation, and the other is acupuncture point BL10 (Tianzhu) block. 1. Topological microstimulation The topological microstimulation apparatus delivers programmed fluctuating electrical signals to electrodes placed on the distal portion of the limbs, where meridians are concentrated. Topological microstimulation adjusts &quot;qi-blood-fluid&quot; circulating through meridians. &quot;Qi-blood-fluid&quot; is a virtual concept of oriental medicine that means 3 elements (qi, blood, and colorless body fluid). Topological microstimulation induces natural healing power through the bio-homeostatic function, and reduces chronic intractable pain. 2. Acupuncture point BL10 (Tianzhu) block Tianzhu as a meridian point is located at the intersection of the superior nuchal line of the occipital bone and lateral border of the trapezius. This site is located in the superficial layer of the trunk of the greater occipital nerve. Tianzhu block has therapeutic effects on the trigeminocervical complex. As a result, various types of headache are relieved. Tianzhu block was performed in 50 patients in our clinic, and marked effects were observed in 6 patients, moderate effects in 22, slight effects in 19, and no effects in 3. According to the type of headache, this block was effective in 47% of patients with tension-type headache, 38% of those with migraine, 50% of those with chronic daily headache, and 71% of those with neck and/or shoulder pain. Conclusion Various somatic and mental stresses induce headache and functional somatic syndrome, i.e., Tianzhu syndrome. Acupuncture is useful and can be actively recommended for the management of intractable headache such as complicated headache due to Tianzhu syndrome.</AbstractText>
            </Abstract>
            <Affiliation>Manaka Hospital.</Affiliation>
            <AuthorList CompleteYN="Y">
                <Author ValidYN="Y">
                    <LastName>Manaka</LastName>
                    <ForeName>Sninya</ForeName>
                    <Initials>S</Initials>
                </Author>
            </AuthorList>
            <Language>eng</Language>
            <PublicationTypeList>
                <PublicationType>Journal Article</PublicationType>
            </PublicationTypeList>
        </Article>
        <MedlineJournalInfo>
            <Country>Japan</Country>
            <MedlineTA>Rinsho Shinkeigaku</MedlineTA>
            <NlmUniqueID>0417466</NlmUniqueID>
            <ISSNLinking>0009-918X</ISSNLinking>
        </MedlineJournalInfo>
        <CitationSubset>IM</CitationSubset>
    </MedlineCitation>
    <PubmedData>
        <History>
            <PubMedPubDate PubStatus="entrez">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="pubmed">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="medline">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
        </History>
        <PublicationStatus>ppublish</PublicationStatus>
        <ArticleIdList>
            <ArticleId IdType="pii">DN/JST.JSTAGE/clinicalneurol/52.1299</ArticleId>
            <ArticleId IdType="pubmed">23196598</ArticleId>
        </ArticleIdList>
    </PubmedData>
</PubmedArticle>

<PubmedArticle>
    <MedlineCitation Owner="NLM" Status="In-Data-Review">
        <PMID Version="1">23196598</PMID>
        <DateCreated>
            <Year>2012</Year>
            <Month>11</Month>
            <Day>30</Day>
        </DateCreated>
        <Article PubModel="Print">
            <Journal>
                <ISSN IssnType="Electronic">1882-0654</ISSN>
                <JournalIssue CitedMedium="Internet">
                    <Volume>52</Volume>
                    <Issue>11</Issue>
                    <PubDate>
                        <Year>2012</Year>
                    </PubDate>
                </JournalIssue>
                <Title>Rinshoshinkeigaku = Clinical neurology</Title>
                <ISOAbbreviation>Rinsho Shinkeigaku</ISOAbbreviation>
            </Journal>
            <ArticleTitle>Application of acupuncture as a headache management tool.</ArticleTitle>
            <Pagination>
                <MedlinePgn>1299-302</MedlinePgn>
            </Pagination>
            <Abstract>
                <AbstractText>We use two oriental medical techniques in headache management. One is topological microstimulation, and the other is acupuncture point BL10 (Tianzhu) block. 1. Topological microstimulation The topological microstimulation apparatus delivers programmed fluctuating electrical signals to electrodes placed on the distal portion of the limbs, where meridians are concentrated. Topological microstimulation adjusts &quot;qi-blood-fluid&quot; circulating through meridians. &quot;Qi-blood-fluid&quot; is a virtual concept of oriental medicine that means 3 elements (qi, blood, and colorless body fluid). Topological microstimulation induces natural healing power through the bio-homeostatic function, and reduces chronic intractable pain. 2. Acupuncture point BL10 (Tianzhu) block Tianzhu as a meridian point is located at the intersection of the superior nuchal line of the occipital bone and lateral border of the trapezius. This site is located in the superficial layer of the trunk of the greater occipital nerve. Tianzhu block has therapeutic effects on the trigeminocervical complex. As a result, various types of headache are relieved. Tianzhu block was performed in 50 patients in our clinic, and marked effects were observed in 6 patients, moderate effects in 22, slight effects in 19, and no effects in 3. According to the type of headache, this block was effective in 47% of patients with tension-type headache, 38% of those with migraine, 50% of those with chronic daily headache, and 71% of those with neck and/or shoulder pain. Conclusion Various somatic and mental stresses induce headache and functional somatic syndrome, i.e., Tianzhu syndrome. Acupuncture is useful and can be actively recommended for the management of intractable headache such as complicated headache due to Tianzhu syndrome.</AbstractText>
            </Abstract>
            <Affiliation>Manaka Hospital.</Affiliation>
            <AuthorList CompleteYN="Y">
                <Author ValidYN="Y">
                    <LastName>Manaka</LastName>
                    <ForeName>Sninya</ForeName>
                    <Initials>S</Initials>
                </Author>
            </AuthorList>
            <Language>eng</Language>
            <PublicationTypeList>
                <PublicationType>Journal Article</PublicationType>
            </PublicationTypeList>
        </Article>
        <MedlineJournalInfo>
            <Country>Japan</Country>
            <MedlineTA>Rinsho Shinkeigaku</MedlineTA>
            <NlmUniqueID>0417466</NlmUniqueID>
            <ISSNLinking>0009-918X</ISSNLinking>
        </MedlineJournalInfo>
        <CitationSubset>IM</CitationSubset>
    </MedlineCitation>
    <PubmedData>
        <History>
            <PubMedPubDate PubStatus="entrez">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="pubmed">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="medline">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
        </History>
        <PublicationStatus>ppublish</PublicationStatus>
        <ArticleIdList>
            <ArticleId IdType="pii">DN/JST.JSTAGE/clinicalneurol/52.1299</ArticleId>
            <ArticleId IdType="pubmed">23196598</ArticleId>
        </ArticleIdList>
    </PubmedData>
</PubmedArticle>

<PubmedArticle>
    <MedlineCitation Owner="NLM" Status="In-Data-Review">
        <PMID Version="1">23196598</PMID>
        <DateCreated>
            <Year>2012</Year>
            <Month>11</Month>
            <Day>30</Day>
        </DateCreated>
        <Article PubModel="Print">
            <Journal>
                <ISSN IssnType="Electronic">1882-0654</ISSN>
                <JournalIssue CitedMedium="Internet">
                    <Volume>52</Volume>
                    <Issue>11</Issue>
                    <PubDate>
                        <Year>2012</Year>
                    </PubDate>
                </JournalIssue>
                <Title>Rinshoshinkeigaku = Clinical neurology</Title>
                <ISOAbbreviation>Rinsho Shinkeigaku</ISOAbbreviation>
            </Journal>
            <ArticleTitle>Application of acupuncture as a headache management tool.</ArticleTitle>
            <Pagination>
                <MedlinePgn>1299-302</MedlinePgn>
            </Pagination>
            <Abstract>
                <AbstractText>We use two oriental medical techniques in headache management. One is topological microstimulation, and the other is acupuncture point BL10 (Tianzhu) block. 1. Topological microstimulation The topological microstimulation apparatus delivers programmed fluctuating electrical signals to electrodes placed on the distal portion of the limbs, where meridians are concentrated. Topological microstimulation adjusts &quot;qi-blood-fluid&quot; circulating through meridians. &quot;Qi-blood-fluid&quot; is a virtual concept of oriental medicine that means 3 elements (qi, blood, and colorless body fluid). Topological microstimulation induces natural healing power through the bio-homeostatic function, and reduces chronic intractable pain. 2. Acupuncture point BL10 (Tianzhu) block Tianzhu as a meridian point is located at the intersection of the superior nuchal line of the occipital bone and lateral border of the trapezius. This site is located in the superficial layer of the trunk of the greater occipital nerve. Tianzhu block has therapeutic effects on the trigeminocervical complex. As a result, various types of headache are relieved. Tianzhu block was performed in 50 patients in our clinic, and marked effects were observed in 6 patients, moderate effects in 22, slight effects in 19, and no effects in 3. According to the type of headache, this block was effective in 47% of patients with tension-type headache, 38% of those with migraine, 50% of those with chronic daily headache, and 71% of those with neck and/or shoulder pain. Conclusion Various somatic and mental stresses induce headache and functional somatic syndrome, i.e., Tianzhu syndrome. Acupuncture is useful and can be actively recommended for the management of intractable headache such as complicated headache due to Tianzhu syndrome.</AbstractText>
            </Abstract>
            <Affiliation>Manaka Hospital.</Affiliation>
            <AuthorList CompleteYN="Y">
                <Author ValidYN="Y">
                    <LastName>Manaka</LastName>
                    <ForeName>Sninya</ForeName>
                    <Initials>S</Initials>
                </Author>
            </AuthorList>
            <Language>eng</Language>
            <PublicationTypeList>
                <PublicationType>Journal Article</PublicationType>
            </PublicationTypeList>
        </Article>
        <MedlineJournalInfo>
            <Country>Japan</Country>
            <MedlineTA>Rinsho Shinkeigaku</MedlineTA>
            <NlmUniqueID>0417466</NlmUniqueID>
            <ISSNLinking>0009-918X</ISSNLinking>
        </MedlineJournalInfo>
        <CitationSubset>IM</CitationSubset>
    </MedlineCitation>
    <PubmedData>
        <History>
            <PubMedPubDate PubStatus="entrez">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="pubmed">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="medline">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
        </History>
        <PublicationStatus>ppublish</PublicationStatus>
        <ArticleIdList>
            <ArticleId IdType="pii">DN/JST.JSTAGE/clinicalneurol/52.1299</ArticleId>
            <ArticleId IdType="pubmed">23196598</ArticleId>
        </ArticleIdList>
    </PubmedData>
</PubmedArticle>

<PubmedArticle>
    <MedlineCitation Owner="NLM" Status="In-Data-Review">
        <PMID Version="1">23196598</PMID>
        <DateCreated>
            <Year>2012</Year>
            <Month>11</Month>
            <Day>30</Day>
        </DateCreated>
        <Article PubModel="Print">
            <Journal>
                <ISSN IssnType="Electronic">1882-0654</ISSN>
                <JournalIssue CitedMedium="Internet">
                    <Volume>52</Volume>
                    <Issue>11</Issue>
                    <PubDate>
                        <Year>2012</Year>
                    </PubDate>
                </JournalIssue>
                <Title>Rinshoshinkeigaku = Clinical neurology</Title>
                <ISOAbbreviation>Rinsho Shinkeigaku</ISOAbbreviation>
            </Journal>
            <ArticleTitle>Application of acupuncture as a headache management tool.</ArticleTitle>
            <Pagination>
                <MedlinePgn>1299-302</MedlinePgn>
            </Pagination>
            <Abstract>
                <AbstractText>We use two oriental medical techniques in headache management. One is topological microstimulation, and the other is acupuncture point BL10 (Tianzhu) block. 1. Topological microstimulation The topological microstimulation apparatus delivers programmed fluctuating electrical signals to electrodes placed on the distal portion of the limbs, where meridians are concentrated. Topological microstimulation adjusts &quot;qi-blood-fluid&quot; circulating through meridians. &quot;Qi-blood-fluid&quot; is a virtual concept of oriental medicine that means 3 elements (qi, blood, and colorless body fluid). Topological microstimulation induces natural healing power through the bio-homeostatic function, and reduces chronic intractable pain. 2. Acupuncture point BL10 (Tianzhu) block Tianzhu as a meridian point is located at the intersection of the superior nuchal line of the occipital bone and lateral border of the trapezius. This site is located in the superficial layer of the trunk of the greater occipital nerve. Tianzhu block has therapeutic effects on the trigeminocervical complex. As a result, various types of headache are relieved. Tianzhu block was performed in 50 patients in our clinic, and marked effects were observed in 6 patients, moderate effects in 22, slight effects in 19, and no effects in 3. According to the type of headache, this block was effective in 47% of patients with tension-type headache, 38% of those with migraine, 50% of those with chronic daily headache, and 71% of those with neck and/or shoulder pain. Conclusion Various somatic and mental stresses induce headache and functional somatic syndrome, i.e., Tianzhu syndrome. Acupuncture is useful and can be actively recommended for the management of intractable headache such as complicated headache due to Tianzhu syndrome.</AbstractText>
            </Abstract>
            <Affiliation>Manaka Hospital.</Affiliation>
            <AuthorList CompleteYN="Y">
                <Author ValidYN="Y">
                    <LastName>Manaka</LastName>
                    <ForeName>Sninya</ForeName>
                    <Initials>S</Initials>
                </Author>
            </AuthorList>
            <Language>eng</Language>
            <PublicationTypeList>
                <PublicationType>Journal Article</PublicationType>
            </PublicationTypeList>
        </Article>
        <MedlineJournalInfo>
            <Country>Japan</Country>
            <MedlineTA>Rinsho Shinkeigaku</MedlineTA>
            <NlmUniqueID>0417466</NlmUniqueID>
            <ISSNLinking>0009-918X</ISSNLinking>
        </MedlineJournalInfo>
        <CitationSubset>IM</CitationSubset>
    </MedlineCitation>
    <PubmedData>
        <History>
            <PubMedPubDate PubStatus="entrez">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="pubmed">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="medline">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
        </History>
        <PublicationStatus>ppublish</PublicationStatus>
        <ArticleIdList>
            <ArticleId IdType="pii">DN/JST.JSTAGE/clinicalneurol/52.1299</ArticleId>
            <ArticleId IdType="pubmed">23196598</ArticleId>
        </ArticleIdList>
    </PubmedData>
</PubmedArticle>

<PubmedArticle>
    <MedlineCitation Owner="NLM" Status="In-Data-Review">
        <PMID Version="1">23196598</PMID>
        <DateCreated>
            <Year>2012</Year>
            <Month>11</Month>
            <Day>30</Day>
        </DateCreated>
        <Article PubModel="Print">
            <Journal>
                <ISSN IssnType="Electronic">1882-0654</ISSN>
                <JournalIssue CitedMedium="Internet">
                    <Volume>52</Volume>
                    <Issue>11</Issue>
                    <PubDate>
                        <Year>2012</Year>
                    </PubDate>
                </JournalIssue>
                <Title>Rinshoshinkeigaku = Clinical neurology</Title>
                <ISOAbbreviation>Rinsho Shinkeigaku</ISOAbbreviation>
            </Journal>
            <ArticleTitle>Application of acupuncture as a headache management tool.</ArticleTitle>
            <Pagination>
                <MedlinePgn>1299-302</MedlinePgn>
            </Pagination>
            <Abstract>
                <AbstractText>We use two oriental medical techniques in headache management. One is topological microstimulation, and the other is acupuncture point BL10 (Tianzhu) block. 1. Topological microstimulation The topological microstimulation apparatus delivers programmed fluctuating electrical signals to electrodes placed on the distal portion of the limbs, where meridians are concentrated. Topological microstimulation adjusts &quot;qi-blood-fluid&quot; circulating through meridians. &quot;Qi-blood-fluid&quot; is a virtual concept of oriental medicine that means 3 elements (qi, blood, and colorless body fluid). Topological microstimulation induces natural healing power through the bio-homeostatic function, and reduces chronic intractable pain. 2. Acupuncture point BL10 (Tianzhu) block Tianzhu as a meridian point is located at the intersection of the superior nuchal line of the occipital bone and lateral border of the trapezius. This site is located in the superficial layer of the trunk of the greater occipital nerve. Tianzhu block has therapeutic effects on the trigeminocervical complex. As a result, various types of headache are relieved. Tianzhu block was performed in 50 patients in our clinic, and marked effects were observed in 6 patients, moderate effects in 22, slight effects in 19, and no effects in 3. According to the type of headache, this block was effective in 47% of patients with tension-type headache, 38% of those with migraine, 50% of those with chronic daily headache, and 71% of those with neck and/or shoulder pain. Conclusion Various somatic and mental stresses induce headache and functional somatic syndrome, i.e., Tianzhu syndrome. Acupuncture is useful and can be actively recommended for the management of intractable headache such as complicated headache due to Tianzhu syndrome.</AbstractText>
            </Abstract>
            <Affiliation>Manaka Hospital.</Affiliation>
            <AuthorList CompleteYN="Y">
                <Author ValidYN="Y">
                    <LastName>Manaka</LastName>
                    <ForeName>Sninya</ForeName>
                    <Initials>S</Initials>
                </Author>
            </AuthorList>
            <Language>eng</Language>
            <PublicationTypeList>
                <PublicationType>Journal Article</PublicationType>
            </PublicationTypeList>
        </Article>
        <MedlineJournalInfo>
            <Country>Japan</Country>
            <MedlineTA>Rinsho Shinkeigaku</MedlineTA>
            <NlmUniqueID>0417466</NlmUniqueID>
            <ISSNLinking>0009-918X</ISSNLinking>
        </MedlineJournalInfo>
        <CitationSubset>IM</CitationSubset>
    </MedlineCitation>
    <PubmedData>
        <History>
            <PubMedPubDate PubStatus="entrez">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="pubmed">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="medline">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
        </History>
        <PublicationStatus>ppublish</PublicationStatus>
        <ArticleIdList>
            <ArticleId IdType="pii">DN/JST.JSTAGE/clinicalneurol/52.1299</ArticleId>
            <ArticleId IdType="pubmed">23196598</ArticleId>
        </ArticleIdList>
    </PubmedData>
</PubmedArticle>

<PubmedArticle>
    <MedlineCitation Owner="NLM" Status="In-Data-Review">
        <PMID Version="1">23196598</PMID>
        <DateCreated>
            <Year>2012</Year>
            <Month>11</Month>
            <Day>30</Day>
        </DateCreated>
        <Article PubModel="Print">
            <Journal>
                <ISSN IssnType="Electronic">1882-0654</ISSN>
                <JournalIssue CitedMedium="Internet">
                    <Volume>52</Volume>
                    <Issue>11</Issue>
                    <PubDate>
                        <Year>2012</Year>
                    </PubDate>
                </JournalIssue>
                <Title>Rinshoshinkeigaku = Clinical neurology</Title>
                <ISOAbbreviation>Rinsho Shinkeigaku</ISOAbbreviation>
            </Journal>
            <ArticleTitle>Application of acupuncture as a headache management tool.</ArticleTitle>
            <Pagination>
                <MedlinePgn>1299-302</MedlinePgn>
            </Pagination>
            <Abstract>
                <AbstractText>We use two oriental medical techniques in headache management. One is topological microstimulation, and the other is acupuncture point BL10 (Tianzhu) block. 1. Topological microstimulation The topological microstimulation apparatus delivers programmed fluctuating electrical signals to electrodes placed on the distal portion of the limbs, where meridians are concentrated. Topological microstimulation adjusts &quot;qi-blood-fluid&quot; circulating through meridians. &quot;Qi-blood-fluid&quot; is a virtual concept of oriental medicine that means 3 elements (qi, blood, and colorless body fluid). Topological microstimulation induces natural healing power through the bio-homeostatic function, and reduces chronic intractable pain. 2. Acupuncture point BL10 (Tianzhu) block Tianzhu as a meridian point is located at the intersection of the superior nuchal line of the occipital bone and lateral border of the trapezius. This site is located in the superficial layer of the trunk of the greater occipital nerve. Tianzhu block has therapeutic effects on the trigeminocervical complex. As a result, various types of headache are relieved. Tianzhu block was performed in 50 patients in our clinic, and marked effects were observed in 6 patients, moderate effects in 22, slight effects in 19, and no effects in 3. According to the type of headache, this block was effective in 47% of patients with tension-type headache, 38% of those with migraine, 50% of those with chronic daily headache, and 71% of those with neck and/or shoulder pain. Conclusion Various somatic and mental stresses induce headache and functional somatic syndrome, i.e., Tianzhu syndrome. Acupuncture is useful and can be actively recommended for the management of intractable headache such as complicated headache due to Tianzhu syndrome.</AbstractText>
            </Abstract>
            <Affiliation>Manaka Hospital.</Affiliation>
            <AuthorList CompleteYN="Y">
                <Author ValidYN="Y">
                    <LastName>Manaka</LastName>
                    <ForeName>Sninya</ForeName>
                    <Initials>S</Initials>
                </Author>
            </AuthorList>
            <Language>eng</Language>
            <PublicationTypeList>
                <PublicationType>Journal Article</PublicationType>
            </PublicationTypeList>
        </Article>
        <MedlineJournalInfo>
            <Country>Japan</Country>
            <MedlineTA>Rinsho Shinkeigaku</MedlineTA>
            <NlmUniqueID>0417466</NlmUniqueID>
            <ISSNLinking>0009-918X</ISSNLinking>
        </MedlineJournalInfo>
        <CitationSubset>IM</CitationSubset>
    </MedlineCitation>
    <PubmedData>
        <History>
            <PubMedPubDate PubStatus="entrez">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="pubmed">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="medline">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
        </History>
        <PublicationStatus>ppublish</PublicationStatus>
        <ArticleIdList>
            <ArticleId IdType="pii">DN/JST.JSTAGE/clinicalneurol/52.1299</ArticleId>
            <ArticleId IdType="pubmed">23196598</ArticleId>
        </ArticleIdList>
    </PubmedData>
</PubmedArticle>

<PubmedArticle>
    <MedlineCitation Owner="NLM" Status="In-Data-Review">
        <PMID Version="1">23196598</PMID>
        <DateCreated>
            <Year>2012</Year>
            <Month>11</Month>
            <Day>30</Day>
        </DateCreated>
        <Article PubModel="Print">
            <Journal>
                <ISSN IssnType="Electronic">1882-0654</ISSN>
                <JournalIssue CitedMedium="Internet">
                    <Volume>52</Volume>
                    <Issue>11</Issue>
                    <PubDate>
                        <Year>2012</Year>
                    </PubDate>
                </JournalIssue>
                <Title>Rinshoshinkeigaku = Clinical neurology</Title>
                <ISOAbbreviation>Rinsho Shinkeigaku</ISOAbbreviation>
            </Journal>
            <ArticleTitle>Application of acupuncture as a headache management tool.</ArticleTitle>
            <Pagination>
                <MedlinePgn>1299-302</MedlinePgn>
            </Pagination>
            <Abstract>
                <AbstractText>We use two oriental medical techniques in headache management. One is topological microstimulation, and the other is acupuncture point BL10 (Tianzhu) block. 1. Topological microstimulation The topological microstimulation apparatus delivers programmed fluctuating electrical signals to electrodes placed on the distal portion of the limbs, where meridians are concentrated. Topological microstimulation adjusts &quot;qi-blood-fluid&quot; circulating through meridians. &quot;Qi-blood-fluid&quot; is a virtual concept of oriental medicine that means 3 elements (qi, blood, and colorless body fluid). Topological microstimulation induces natural healing power through the bio-homeostatic function, and reduces chronic intractable pain. 2. Acupuncture point BL10 (Tianzhu) block Tianzhu as a meridian point is located at the intersection of the superior nuchal line of the occipital bone and lateral border of the trapezius. This site is located in the superficial layer of the trunk of the greater occipital nerve. Tianzhu block has therapeutic effects on the trigeminocervical complex. As a result, various types of headache are relieved. Tianzhu block was performed in 50 patients in our clinic, and marked effects were observed in 6 patients, moderate effects in 22, slight effects in 19, and no effects in 3. According to the type of headache, this block was effective in 47% of patients with tension-type headache, 38% of those with migraine, 50% of those with chronic daily headache, and 71% of those with neck and/or shoulder pain. Conclusion Various somatic and mental stresses induce headache and functional somatic syndrome, i.e., Tianzhu syndrome. Acupuncture is useful and can be actively recommended for the management of intractable headache such as complicated headache due to Tianzhu syndrome.</AbstractText>
            </Abstract>
            <Affiliation>Manaka Hospital.</Affiliation>
            <AuthorList CompleteYN="Y">
                <Author ValidYN="Y">
                    <LastName>Manaka</LastName>
                    <ForeName>Sninya</ForeName>
                    <Initials>S</Initials>
                </Author>
            </AuthorList>
            <Language>eng</Language>
            <PublicationTypeList>
                <PublicationType>Journal Article</PublicationType>
            </PublicationTypeList>
        </Article>
        <MedlineJournalInfo>
            <Country>Japan</Country>
            <MedlineTA>Rinsho Shinkeigaku</MedlineTA>
            <NlmUniqueID>0417466</NlmUniqueID>
            <ISSNLinking>0009-918X</ISSNLinking>
        </MedlineJournalInfo>
        <CitationSubset>IM</CitationSubset>
    </MedlineCitation>
    <PubmedData>
        <History>
            <PubMedPubDate PubStatus="entrez">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="pubmed">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="medline">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
        </History>
        <PublicationStatus>ppublish</PublicationStatus>
        <ArticleIdList>
            <ArticleId IdType="pii">DN/JST.JSTAGE/clinicalneurol/52.1299</ArticleId>
            <ArticleId IdType="pubmed">23196598</ArticleId>
        </ArticleIdList>
    </PubmedData>
</PubmedArticle>

<PubmedArticle>
    <MedlineCitation Owner="NLM" Status="In-Data-Review">
        <PMID Version="1">23196598</PMID>
        <DateCreated>
            <Year>2012</Year>
            <Month>11</Month>
            <Day>30</Day>
        </DateCreated>
        <Article PubModel="Print">
            <Journal>
                <ISSN IssnType="Electronic">1882-0654</ISSN>
                <JournalIssue CitedMedium="Internet">
                    <Volume>52</Volume>
                    <Issue>11</Issue>
                    <PubDate>
                        <Year>2012</Year>
                    </PubDate>
                </JournalIssue>
                <Title>Rinshoshinkeigaku = Clinical neurology</Title>
                <ISOAbbreviation>Rinsho Shinkeigaku</ISOAbbreviation>
            </Journal>
            <ArticleTitle>Application of acupuncture as a headache management tool.</ArticleTitle>
            <Pagination>
                <MedlinePgn>1299-302</MedlinePgn>
            </Pagination>
            <Abstract>
                <AbstractText>We use two oriental medical techniques in headache management. One is topological microstimulation, and the other is acupuncture point BL10 (Tianzhu) block. 1. Topological microstimulation The topological microstimulation apparatus delivers programmed fluctuating electrical signals to electrodes placed on the distal portion of the limbs, where meridians are concentrated. Topological microstimulation adjusts &quot;qi-blood-fluid&quot; circulating through meridians. &quot;Qi-blood-fluid&quot; is a virtual concept of oriental medicine that means 3 elements (qi, blood, and colorless body fluid). Topological microstimulation induces natural healing power through the bio-homeostatic function, and reduces chronic intractable pain. 2. Acupuncture point BL10 (Tianzhu) block Tianzhu as a meridian point is located at the intersection of the superior nuchal line of the occipital bone and lateral border of the trapezius. This site is located in the superficial layer of the trunk of the greater occipital nerve. Tianzhu block has therapeutic effects on the trigeminocervical complex. As a result, various types of headache are relieved. Tianzhu block was performed in 50 patients in our clinic, and marked effects were observed in 6 patients, moderate effects in 22, slight effects in 19, and no effects in 3. According to the type of headache, this block was effective in 47% of patients with tension-type headache, 38% of those with migraine, 50% of those with chronic daily headache, and 71% of those with neck and/or shoulder pain. Conclusion Various somatic and mental stresses induce headache and functional somatic syndrome, i.e., Tianzhu syndrome. Acupuncture is useful and can be actively recommended for the management of intractable headache such as complicated headache due to Tianzhu syndrome.</AbstractText>
            </Abstract>
            <Affiliation>Manaka Hospital.</Affiliation>
            <AuthorList CompleteYN="Y">
                <Author ValidYN="Y">
                    <LastName>Manaka</LastName>
                    <ForeName>Sninya</ForeName>
                    <Initials>S</Initials>
                </Author>
            </AuthorList>
            <Language>eng</Language>
            <PublicationTypeList>
                <PublicationType>Journal Article</PublicationType>
            </PublicationTypeList>
        </Article>
        <MedlineJournalInfo>
            <Country>Japan</Country>
            <MedlineTA>Rinsho Shinkeigaku</MedlineTA>
            <NlmUniqueID>0417466</NlmUniqueID>
            <ISSNLinking>0009-918X</ISSNLinking>
        </MedlineJournalInfo>
        <CitationSubset>IM</CitationSubset>
    </MedlineCitation>
    <PubmedData>
        <History>
            <PubMedPubDate PubStatus="entrez">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="pubmed">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="medline">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
        </History>
        <PublicationStatus>ppublish</PublicationStatus>
        <ArticleIdList>
            <ArticleId IdType="pii">DN/JST.JSTAGE/clinicalneurol/52.1299</ArticleId>
            <ArticleId IdType="pubmed">23196598</ArticleId>
        </ArticleIdList>
    </PubmedData>
</PubmedArticle>

<PubmedArticle>
    <MedlineCitation Owner="NLM" Status="In-Data-Review">
        <PMID Version="1">23196598</PMID>
        <DateCreated>
            <Year>2012</Year>
            <Month>11</Month>
            <Day>30</Day>
        </DateCreated>
        <Article PubModel="Print">
            <Journal>
                <ISSN IssnType="Electronic">1882-0654</ISSN>
                <JournalIssue CitedMedium="Internet">
                    <Volume>52</Volume>
                    <Issue>11</Issue>
                    <PubDate>
                        <Year>2012</Year>
                    </PubDate>
                </JournalIssue>
                <Title>Rinshoshinkeigaku = Clinical neurology</Title>
                <ISOAbbreviation>Rinsho Shinkeigaku</ISOAbbreviation>
            </Journal>
            <ArticleTitle>Application of acupuncture as a headache management tool.</ArticleTitle>
            <Pagination>
                <MedlinePgn>1299-302</MedlinePgn>
            </Pagination>
            <Abstract>
                <AbstractText>We use two oriental medical techniques in headache management. One is topological microstimulation, and the other is acupuncture point BL10 (Tianzhu) block. 1. Topological microstimulation The topological microstimulation apparatus delivers programmed fluctuating electrical signals to electrodes placed on the distal portion of the limbs, where meridians are concentrated. Topological microstimulation adjusts &quot;qi-blood-fluid&quot; circulating through meridians. &quot;Qi-blood-fluid&quot; is a virtual concept of oriental medicine that means 3 elements (qi, blood, and colorless body fluid). Topological microstimulation induces natural healing power through the bio-homeostatic function, and reduces chronic intractable pain. 2. Acupuncture point BL10 (Tianzhu) block Tianzhu as a meridian point is located at the intersection of the superior nuchal line of the occipital bone and lateral border of the trapezius. This site is located in the superficial layer of the trunk of the greater occipital nerve. Tianzhu block has therapeutic effects on the trigeminocervical complex. As a result, various types of headache are relieved. Tianzhu block was performed in 50 patients in our clinic, and marked effects were observed in 6 patients, moderate effects in 22, slight effects in 19, and no effects in 3. According to the type of headache, this block was effective in 47% of patients with tension-type headache, 38% of those with migraine, 50% of those with chronic daily headache, and 71% of those with neck and/or shoulder pain. Conclusion Various somatic and mental stresses induce headache and functional somatic syndrome, i.e., Tianzhu syndrome. Acupuncture is useful and can be actively recommended for the management of intractable headache such as complicated headache due to Tianzhu syndrome.</AbstractText>
            </Abstract>
            <Affiliation>Manaka Hospital.</Affiliation>
            <AuthorList CompleteYN="Y">
                <Author ValidYN="Y">
                    <LastName>Manaka</LastName>
                    <ForeName>Sninya</ForeName>
                    <Initials>S</Initials>
                </Author>
            </AuthorList>
            <Language>eng</Language>
            <PublicationTypeList>
                <PublicationType>Journal Article</PublicationType>
            </PublicationTypeList>
        </Article>
        <MedlineJournalInfo>
            <Country>Japan</Country>
            <MedlineTA>Rinsho Shinkeigaku</MedlineTA>
            <NlmUniqueID>0417466</NlmUniqueID>
            <ISSNLinking>0009-918X</ISSNLinking>
        </MedlineJournalInfo>
        <CitationSubset>IM</CitationSubset>
    </MedlineCitation>
    <PubmedData>
        <History>
            <PubMedPubDate PubStatus="entrez">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="pubmed">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="medline">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
        </History>
        <PublicationStatus>ppublish</PublicationStatus>
        <ArticleIdList>
            <ArticleId IdType="pii">DN/JST.JSTAGE/clinicalneurol/52.1299</ArticleId>
            <ArticleId IdType="pubmed">23196598</ArticleId>
        </ArticleIdList>
    </PubmedData>
</PubmedArticle>

<PubmedArticle>
    <MedlineCitation Owner="NLM" Status="In-Data-Review">
        <PMID Version="1">23196598</PMID>
        <DateCreated>
            <Year>2012</Year>
            <Month>11</Month>
            <Day>30</Day>
        </DateCreated>
        <Article PubModel="Print">
            <Journal>
                <ISSN IssnType="Electronic">1882-0654</ISSN>
                <JournalIssue CitedMedium="Internet">
                    <Volume>52</Volume>
                    <Issue>11</Issue>
                    <PubDate>
                        <Year>2012</Year>
                    </PubDate>
                </JournalIssue>
                <Title>Rinshoshinkeigaku = Clinical neurology</Title>
                <ISOAbbreviation>Rinsho Shinkeigaku</ISOAbbreviation>
            </Journal>
            <ArticleTitle>Application of acupuncture as a headache management tool.</ArticleTitle>
            <Pagination>
                <MedlinePgn>1299-302</MedlinePgn>
            </Pagination>
            <Abstract>
                <AbstractText>We use two oriental medical techniques in headache management. One is topological microstimulation, and the other is acupuncture point BL10 (Tianzhu) block. 1. Topological microstimulation The topological microstimulation apparatus delivers programmed fluctuating electrical signals to electrodes placed on the distal portion of the limbs, where meridians are concentrated. Topological microstimulation adjusts &quot;qi-blood-fluid&quot; circulating through meridians. &quot;Qi-blood-fluid&quot; is a virtual concept of oriental medicine that means 3 elements (qi, blood, and colorless body fluid). Topological microstimulation induces natural healing power through the bio-homeostatic function, and reduces chronic intractable pain. 2. Acupuncture point BL10 (Tianzhu) block Tianzhu as a meridian point is located at the intersection of the superior nuchal line of the occipital bone and lateral border of the trapezius. This site is located in the superficial layer of the trunk of the greater occipital nerve. Tianzhu block has therapeutic effects on the trigeminocervical complex. As a result, various types of headache are relieved. Tianzhu block was performed in 50 patients in our clinic, and marked effects were observed in 6 patients, moderate effects in 22, slight effects in 19, and no effects in 3. According to the type of headache, this block was effective in 47% of patients with tension-type headache, 38% of those with migraine, 50% of those with chronic daily headache, and 71% of those with neck and/or shoulder pain. Conclusion Various somatic and mental stresses induce headache and functional somatic syndrome, i.e., Tianzhu syndrome. Acupuncture is useful and can be actively recommended for the management of intractable headache such as complicated headache due to Tianzhu syndrome.</AbstractText>
            </Abstract>
            <Affiliation>Manaka Hospital.</Affiliation>
            <AuthorList CompleteYN="Y">
                <Author ValidYN="Y">
                    <LastName>Manaka</LastName>
                    <ForeName>Sninya</ForeName>
                    <Initials>S</Initials>
                </Author>
            </AuthorList>
            <Language>eng</Language>
            <PublicationTypeList>
                <PublicationType>Journal Article</PublicationType>
            </PublicationTypeList>
        </Article>
        <MedlineJournalInfo>
            <Country>Japan</Country>
            <MedlineTA>Rinsho Shinkeigaku</MedlineTA>
            <NlmUniqueID>0417466</NlmUniqueID>
            <ISSNLinking>0009-918X</ISSNLinking>
        </MedlineJournalInfo>
        <CitationSubset>IM</CitationSubset>
    </MedlineCitation>
    <PubmedData>
        <History>
            <PubMedPubDate PubStatus="entrez">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="pubmed">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="medline">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
        </History>
        <PublicationStatus>ppublish</PublicationStatus>
        <ArticleIdList>
            <ArticleId IdType="pii">DN/JST.JSTAGE/clinicalneurol/52.1299</ArticleId>
            <ArticleId IdType="pubmed">23196598</ArticleId>
        </ArticleIdList>
    </PubmedData>
</PubmedArticle>

<PubmedArticle>
    <MedlineCitation Owner="NLM" Status="In-Data-Review">
        <PMID Version="1">23196598</PMID>
        <DateCreated>
            <Year>2012</Year>
            <Month>11</Month>
            <Day>30</Day>
        </DateCreated>
        <Article PubModel="Print">
            <Journal>
                <ISSN IssnType="Electronic">1882-0654</ISSN>
                <JournalIssue CitedMedium="Internet">
                    <Volume>52</Volume>
                    <Issue>11</Issue>
                    <PubDate>
                        <Year>2012</Year>
                    </PubDate>
                </JournalIssue>
                <Title>Rinshoshinkeigaku = Clinical neurology</Title>
                <ISOAbbreviation>Rinsho Shinkeigaku</ISOAbbreviation>
            </Journal>
            <ArticleTitle>Application of acupuncture as a headache management tool.</ArticleTitle>
            <Pagination>
                <MedlinePgn>1299-302</MedlinePgn>
            </Pagination>
            <Abstract>
                <AbstractText>We use two oriental medical techniques in headache management. One is topological microstimulation, and the other is acupuncture point BL10 (Tianzhu) block. 1. Topological microstimulation The topological microstimulation apparatus delivers programmed fluctuating electrical signals to electrodes placed on the distal portion of the limbs, where meridians are concentrated. Topological microstimulation adjusts &quot;qi-blood-fluid&quot; circulating through meridians. &quot;Qi-blood-fluid&quot; is a virtual concept of oriental medicine that means 3 elements (qi, blood, and colorless body fluid). Topological microstimulation induces natural healing power through the bio-homeostatic function, and reduces chronic intractable pain. 2. Acupuncture point BL10 (Tianzhu) block Tianzhu as a meridian point is located at the intersection of the superior nuchal line of the occipital bone and lateral border of the trapezius. This site is located in the superficial layer of the trunk of the greater occipital nerve. Tianzhu block has therapeutic effects on the trigeminocervical complex. As a result, various types of headache are relieved. Tianzhu block was performed in 50 patients in our clinic, and marked effects were observed in 6 patients, moderate effects in 22, slight effects in 19, and no effects in 3. According to the type of headache, this block was effective in 47% of patients with tension-type headache, 38% of those with migraine, 50% of those with chronic daily headache, and 71% of those with neck and/or shoulder pain. Conclusion Various somatic and mental stresses induce headache and functional somatic syndrome, i.e., Tianzhu syndrome. Acupuncture is useful and can be actively recommended for the management of intractable headache such as complicated headache due to Tianzhu syndrome.</AbstractText>
            </Abstract>
            <Affiliation>Manaka Hospital.</Affiliation>
            <AuthorList CompleteYN="Y">
                <Author ValidYN="Y">
                    <LastName>Manaka</LastName>
                    <ForeName>Sninya</ForeName>
                    <Initials>S</Initials>
                </Author>
            </AuthorList>
            <Language>eng</Language>
            <PublicationTypeList>
                <PublicationType>Journal Article</PublicationType>
            </PublicationTypeList>
        </Article>
        <MedlineJournalInfo>
            <Country>Japan</Country>
            <MedlineTA>Rinsho Shinkeigaku</MedlineTA>
            <NlmUniqueID>0417466</NlmUniqueID>
            <ISSNLinking>0009-918X</ISSNLinking>
        </MedlineJournalInfo>
        <CitationSubset>IM</CitationSubset>
    </MedlineCitation>
    <PubmedData>
        <History>
            <PubMedPubDate PubStatus="entrez">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="pubmed">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="medline">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
        </History>
        <PublicationStatus>ppublish</PublicationStatus>
        <ArticleIdList>
            <ArticleId IdType="pii">DN/JST.JSTAGE/clinicalneurol/52.1299</ArticleId>
            <ArticleId IdType="pubmed">23196598</ArticleId>
        </ArticleIdList>
    </PubmedData>
</PubmedArticle>

<PubmedArticle>
    <MedlineCitation Owner="NLM" Status="In-Data-Review">
        <PMID Version="1">23196598</PMID>
        <DateCreated>
            <Year>2012</Year>
            <Month>11</Month>
            <Day>30</Day>
        </DateCreated>
        <Article PubModel="Print">
            <Journal>
                <ISSN IssnType="Electronic">1882-0654</ISSN>
                <JournalIssue CitedMedium="Internet">
                    <Volume>52</Volume>
                    <Issue>11</Issue>
                    <PubDate>
                        <Year>2012</Year>
                    </PubDate>
                </JournalIssue>
                <Title>Rinshoshinkeigaku = Clinical neurology</Title>
                <ISOAbbreviation>Rinsho Shinkeigaku</ISOAbbreviation>
            </Journal>
            <ArticleTitle>Application of acupuncture as a headache management tool.</ArticleTitle>
            <Pagination>
                <MedlinePgn>1299-302</MedlinePgn>
            </Pagination>
            <Abstract>
                <AbstractText>We use two oriental medical techniques in headache management. One is topological microstimulation, and the other is acupuncture point BL10 (Tianzhu) block. 1. Topological microstimulation The topological microstimulation apparatus delivers programmed fluctuating electrical signals to electrodes placed on the distal portion of the limbs, where meridians are concentrated. Topological microstimulation adjusts &quot;qi-blood-fluid&quot; circulating through meridians. &quot;Qi-blood-fluid&quot; is a virtual concept of oriental medicine that means 3 elements (qi, blood, and colorless body fluid). Topological microstimulation induces natural healing power through the bio-homeostatic function, and reduces chronic intractable pain. 2. Acupuncture point BL10 (Tianzhu) block Tianzhu as a meridian point is located at the intersection of the superior nuchal line of the occipital bone and lateral border of the trapezius. This site is located in the superficial layer of the trunk of the greater occipital nerve. Tianzhu block has therapeutic effects on the trigeminocervical complex. As a result, various types of headache are relieved. Tianzhu block was performed in 50 patients in our clinic, and marked effects were observed in 6 patients, moderate effects in 22, slight effects in 19, and no effects in 3. According to the type of headache, this block was effective in 47% of patients with tension-type headache, 38% of those with migraine, 50% of those with chronic daily headache, and 71% of those with neck and/or shoulder pain. Conclusion Various somatic and mental stresses induce headache and functional somatic syndrome, i.e., Tianzhu syndrome. Acupuncture is useful and can be actively recommended for the management of intractable headache such as complicated headache due to Tianzhu syndrome.</AbstractText>
            </Abstract>
            <Affiliation>Manaka Hospital.</Affiliation>
            <AuthorList CompleteYN="Y">
                <Author ValidYN="Y">
                    <LastName>Manaka</LastName>
                    <ForeName>Sninya</ForeName>
                    <Initials>S</Initials>
                </Author>
            </AuthorList>
            <Language>eng</Language>
            <PublicationTypeList>
                <PublicationType>Journal Article</PublicationType>
            </PublicationTypeList>
        </Article>
        <MedlineJournalInfo>
            <Country>Japan</Country>
            <MedlineTA>Rinsho Shinkeigaku</MedlineTA>
            <NlmUniqueID>0417466</NlmUniqueID>
            <ISSNLinking>0009-918X</ISSNLinking>
        </MedlineJournalInfo>
        <CitationSubset>IM</CitationSubset>
    </MedlineCitation>
    <PubmedData>
        <History>
            <PubMedPubDate PubStatus="entrez">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="pubmed">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
            <PubMedPubDate PubStatus="medline">
                <Year>2012</Year>
                <Month>12</Month>
                <Day>1</Day>
                <Hour>6</Hour>
                <Minute>0</Minute>
            </PubMedPubDate>
        </History>
        <PublicationStatus>ppublish</PublicationStatus>
        <ArticleIdList>
            <ArticleId IdType="pii">DN/JST.JSTAGE/clinicalneurol/52.1299</ArticleId>
            <ArticleId IdType="pubmed">23196598</ArticleId>
        </ArticleIdList>
    </PubmedData>
</PubmedArticle>



</PubmedArticleSet>

})
end
