                                                                               
/*                                                                             
/*             SPSS DATA DEFINITION STATEMENTS FOR ICPSR 7201                  
/*                    CIVIC CULTURE STUDY, 1959-1960                           
/*                         DECEMBER 1980 VERSION                               
/*                                                                             
/*   The following SPSS setup sections appear in this file for the LRECL       
/*   version of this data collection.  These sections are listed below:        
/*                                                                             
/*   DATA LIST contains the SPSS statements which assign the variable names    
/*   and specify the beginning and ending column locations for each variable.  
/*                                                                             
/*   VARIABLE LABELS assigns variable labels for all variables in the data     
/*   file.                                                                     
/*                                                                             
/*   MISSING VALUES contains SPSS program statements which set the values      
/*   that are interpreted as missing by the SPSS system.  Please note that     
/*   the MISSING VALUES section has been commented out (i.e., '*').            
/*   To include this section in the final SPSS setup, remove the comment       
/*   indicators from the section.                                              
/*                                                                             
/*   VALUE LABELS:  assign descriptive labels to codes in the data file.       
/*   Not all variables necessarily have assigned value labels. NOTE: There are 
/*   duplicate value codes for eleven variables, V5, V12, V66, V112, V113,     
/*   V114, V138A, V138B, V138C, V156 and V160.  The value labels for those     
/*   variables have been commented out.  Users may want to include these       
/*   labels if they subset by country or response field.                       
/*                                                                             
/*   Users may combine and modify these sections or parts of these sections    
/*   to suit their specific needs.  Users will also need to change the         
/*   file-specification in the DATA LIST statement to an appropriate filename  
/*   for their system.                                                         
/*                                                                             
*******************************************************************************
*                                                                              
                                                                               
                                                                               
* SPSS DATA LIST COMMAND.                                                      
                                                                               
FILE HANDLE DATA / NAME="C:\Users\Gaurav\Desktop\R\polar\verba\ICPSR_07201\ICPSR_07201\DS0001\07201-0001-Data.txt" LRECL=278.                        
DATA LIST FILE=DATA /                                                          
   V1 1-4                   V2 5-5                   V3 6-9                    
   V4 10-10                 V5 11-11                 V6 12-12                  
   V7 13-13                 V8 14-14                 V9 15-15                  
   V10 16-16                V11A 17-18               V11B 19-20                
   V11C 21-22               V12 23-23                V13 24-24                 
   V14 25-25                V15 26-26                V16A 27-28                
   V16B 29-30               V16C 31-32               V17 33-33                 
   V18 34-34                V19 35-35                V20A 36-37                
   V20B 38-39               V20C 40-41               V21 42-43                 
   V22 44-44                V23 45-45                V24 46-46                 
   V25 47-47                V26 48-48                V27 49-49                 
   V28A 50-51               V28B 52-53               V28C 54-55                
   V29 56-56                V30 57-57                V31 58-58                 
   V32 59-59                V33 60-60                V34A 61-62                
   V34B 63-64               V34C 65-66               V35A 67-68                
   V35B 69-70               V35C 71-72               V36A 73-74                
   V36B 75-76               V36C 77-78               V37 79-79                 
   V38A 80-81               V38B 82-83               V38C 84-85                
   V39 86-86                V40 87-87                V41 88-88                 
   V42A 89-90               V42B 91-92               V42C 93-94                
   V43 95-95                V44 96-96                V45 97-97                 
   V46 98-98                V47 99-99                V48 100-100               
   V49 101-101              V50 102-102              V51 103-103               
   V52A 104-105             V52B 106-107             V52C 108-109              
   V53A 110-110             V53B 111-111             V53C 112-112              
   V54 113-113              V55 114-114              V56 115-115               
   V57 116-116              V58 117-117              V59 118-118               
   V60A 119-119             V60B 120-120             V60C 121-121              
   V61A 122-122             V61B 123-123             V61C 124-124              
   V62A 125-125             V62B 126-126             V62C 127-127              
   V63 128-128              V64 129-129              V65 130-130               
   V66 131-132              V67 133-133              V68 134-134               
   V69 135-135              V70 136-137              V71 138-139               
   V72 140-141              V73 142-142              V74 143-143               
   V75 144-145              V76 146-147              V77 148-149               
   V78 150-151              V79 152-152              V80 153-153               
   V81 154-154              V82 155-155              V83 156-156               
   V84 157-157              V85 158-158              V86 159-159               
   V87 160-160              V88 161-161              V89 162-162               
   V90A 163-164             V90B 165-166             V90C 167-168              
   V91A 169-170             V91B 171-172             V91C 173-174              
   V92A 175-176             V92B 177-178             V92C 179-180              
   V93A 181-182             V93B 183-184             V93C 185-186              
   V94 187-187              V95 188-188              V96 189-189               
   V97 190-190              V98 191-191              V99 192-192               
   V100 193-193             V101 194-194             V102 195-195              
   V103 196-196             V104 197-197             V105 198-198              
   V106 199-199             V107 200-200             V108 201-201              
   V109 202-202             V110 203-203             V111 204-204              
   V112 205-205             V113 206-206             V114 207-207              
   V115 208-208             V116A 209-209            V116B 210-210             
   V116C 211-211            V117 212-212             V118 213-213              
   V119 214-214             V120 215-215             V121 216-216              
   V122 217-217             V123 218-218             V124 219-219              
   V125 220-220             V126 221-221             V127 222-222              
   V128 223-223             V129 224-224             V130 225-225              
   V131 226-226             V132 227-227             V133 228-228              
   V134 229-229             V135 230-230             V136 231-231              
   V137 232-233             V138A 234-234            V138B 235-235             
   V138C 236-236            V139 237-238             V140 239-240              
   V141 241-241             V142 242-242             V143 243-243              
   V144 244-244             V145 245-245             V146 246-246              
   V147 247-247             V148 248-248             V149 249-249              
   V150A 250-251            V150B 252-253            V150C 254-255             
   V150D 256-257            V151 258-258             V152 259-259              
   V153 260-260             V154 261-261             V155 262-262              
   V156 263-263             V157 264-264             V158 265-265              
   V159 266-266             V160 267-267             V161 268-268              
   V162 269-269             V163 270-270             V164 271-271              
   V165 272-272             V166A 273-274            V166B 275-276             
   V166C 277-278.                                                              
                                                                               
* SPSS VARIABLE LABELS COMMAND.                                                
                                                                               
VARIABLE LABELS                                                                
   V1 "STUDY NUMBER"                                                           
   V2 "COUNTRY"                                                                
   V3 "INTERVIEW NUMBER"                                                       
   V4 "WEIGHT"                                                                 
   V5 "WHERE WERE YOU BORN"                                                    
   V6 "SIZE OF TOWN WHERE BORN"                                                
   V7 "TIME LIVED IN THIS TOWN"                                                
   V8 "INTEND STAY THIS TOWN"                                                  
   V9 "ARE YOU MARRIED"                                                        
   V10 "XHOW MANY CHILDREN"                                                    
   V11A "AVCNL ACTVYS-INTST MOST"                                              
   V11B "AVCNL ACTVYS-INTST MOST"                                              
   V11C "AVCNL ACTVYS-INTST MOST"                                              
   V12 "XDETAIL FOR OTHER CODE"                                                
   V13 "PSNL QUALITY LIKE MOST"                                                
   V14 "PSNL QUALITY LIKE NEXT"                                                
   V15 "TRUST PEOPLE"                                                          
   V16A "NAME PEOPLE ADMIRE"                                                   
   V16B "NAME PEOPLE ADMIRE"                                                   
   V16C "NAME PEOPLE ADMIRE"                                                   
   V17 "XUS NAME PPL ADMIRE"                                                   
   V18 "MOST IMPORTANT PROBLEM"                                                
   V19 "NEXT IMPORTANT PROBLEM"                                                
   V20A "HOW LEARN ABOUT ISSUES"                                               
   V20B "HOW LEARN ABOUT ISSUES"                                               
   V20C "HOW LEARN ABOUT ISSUES"                                               
   V21 "SUM PTS-ISU LRNG-VAR0020"                                              
   V22 "FLW GOVT AND POLT AFFAIRS"                                             
   V23 "XFLW GOVT AFFAIRS-NWPPRS"                                              
   V24 "XFLW GOVT AFFAIRS-TV/RDO"                                              
   V25 "XFLW GOVT AFFAIRS-MAGS"                                                
   V26 "TLK GOVT AFFAIRS TO PPL"                                               
   V27 "PPL W WHOM NOT DSCS POLT"                                              
   V28A "XWHY AVD THESE DSCSNS"                                                
   V28B "XWHY AVD THESE DSCSNS"                                                
   V28C "XWHY AVD THESE DSCSNS"                                                
   V29 "AVERAGE MAN UNSTND GOVT"                                               
   V30 "UNSTND ISSUES FCG CNTRY"                                               
   V31 "UNSTND LOCAL ISSUES"                                                   
   V32 "Y DONT UNSTND POLT AFRS"                                               
   V33 "GROUPS INFL GOVT"                                                      
   V34A "XWHAT GROUPS INFL GOVT"                                               
   V34B "XWHAT GROUPS INFL GOVT"                                               
   V34C "XWHAT GROUPS INFL GOVT"                                               
   V35A "PART PSN PLAY LOCAL AFRS"                                             
   V35B "PART PSN PLAY LOCAL AFRS"                                             
   V35C "PART PSN PLAY LOCAL AFRS"                                             
   V36A "OBLIGATIONS TO COUNTRY"                                               
   V36B "OBLIGATIONS TO COUNTRY"                                               
   V36C "OBLIGATIONS TO COUNTRY"                                               
   V37 "MOST PPL HELP OTHERS"                                                  
   V38A "ACTION ON BD REGLTN"                                                  
   V38B "ACTION ON BD REGLTN"                                                  
   V38C "ACTION ON BD REGLTN"                                                  
   V39 "COULD CHNG BD REGLTN"                                                  
   V40 "XWOULD ACT ON REGLTN"                                                  
   V41 "EVER TRY INFL LOC DCSN"                                                
   V42A "ACTION ON BD NATL LAW"                                                
   V42B "ACTION ON BD NATL LAW"                                                
   V42C "ACTION ON BD NATL LAW"                                                
   V43 "COULD CHANGE LAW"                                                      
   V44 "WOULD ACT ON LAW"                                                      
   V45 "EVER TRY INFL LAW"                                                     
   V46 "MOST EFCTV MTHD INFL GOV"                                              
   V47 "LST EFCTV MTHD INFL GOVT"                                              
   V48 "EFCT OF GOVT ON LIFE"                                                  
   V49 "XACTS OF GOVT IMPRV LIFE"                                              
   V50 "LOCAL GOVT EFCT LIFE"                                                  
   V51 "XLOCAL GOVT IMPRV LIFE"                                                
   V52A "PRIDE IN COUNTRY"                                                     
   V52B "PRIDE IN COUNTRY"                                                     
   V52C "PRIDE IN COUNTRY"                                                     
   V53A "US PRIDE IN COUNTRY"                                                  
   V53B "US PRIDE IN COUNTRY"                                                  
   V53C "US PRIDE IN COUNTRY"                                                  
   V54 "GOVT GIVE EQL TRTMT"                                                   
   V55 "OFCLS CNSDR YOUR VIEW"                                                 
   V56 "MONARCHY NEEDED"                                                       
   V57 "XMOST IMP RSN MNCHY NDD"                                               
   V58 "XNXT IMP RSN MNCHY NDD"                                                
   V59 "PRESIDENT LEAD PARTY"                                                  
   V60A "XY ABOVE PTY CONFLICTS"                                               
   V60B "XY ABOVE PTY CONFLICTS"                                               
   V60C "XY ABOVE PTY CONFLICTS"                                               
   V61A "XY ACTV PTY LEADER"                                                   
   V61B "XY ACTV PTY LEADER"                                                   
   V61C "XY ACTV PTY LEADER"                                                   
   V62A "IDEAS OF MEX REVOLUTION"                                              
   V62B "IDEAS OF MEX REVOLUTION"                                              
   V62C "IDEAS OF MEX REVOLUTION"                                              
   V63 "XIDEAS REALIZED"                                                       
   V64 "POLICE GIVE EQL TRTMT"                                                 
   V65 "POLICE CNSDR YOUR VIEW"                                                
   V66 "PARTY PRFRC - SUPPORT"                                                 
   V67 "US PARTY PRFRC -LNS TWRD"                                              
   V68 "XMBR POLTL CLUB"                                                       
   V69 "EVER ACTV IN POLTL CMPN"                                               
   V70 "XEVER PARTY MEMBER"                                                    
   V71 "XSUPPORTER POLTL PTY"                                                  
   V72 "XPARTY LEANER"                                                         
   V73 "XFRNDS SUPPORT SAME PTY"                                               
   V74 "XFRNDS SUPPORT A PARTY"                                                
   V75 "HOW VTD LAST NATL ELCN"                                                
   V76 "HOW VTD 2NDLST NATL ELCN"                                              
   V77 "HOW VTD 3RDLST NATL ELCN"                                              
   V78 "PTY VT FOR LCL ELCTNS"                                                 
   V79 "XKNOW VT BEFORE CMPN"                                                  
   V80 "XSTATEMENT OF FEELINGS"                                                
   V81 "PAY ATTN TO CMPNG"                                                     
   V82 "CMPNG NECESSARY"                                                       
   V83 "GET ANGRY AT CMPNS"                                                    
   V84 "CMPNS ENJOYABLE"                                                       
   V85 "CMPNS RIDICULOUS"                                                      
   V86 "LK MRG REP,CNSVTV,CDU"                                                 
   V87 "LK MRG DEM,LBR,SPD"                                                    
   V88 "LK MRG LBRL,FDP,PSI"                                                   
   V89 "XLKMRG RT WING PTY"                                                    
   V90A "COMMENTS ABT REPS"                                                    
   V90B "COMMENTS ABT REPS"                                                    
   V90C "COMMENTS ABT REPS"                                                    
   V91A "COMMENTS ABT DEMS"                                                    
   V91B "COMMENTS ABT DEMS"                                                    
   V91C "COMMENTS ABT DEMS"                                                    
   V92A "XCOMMENTS ABT FDP"                                                    
   V92B "XCOMMENTS ABT FDP"                                                    
   V92C "XCOMMENTS ABT FDP"                                                    
   V93A "XCOMMENTS ON MSI"                                                     
   V93B "XCOMMENTS ON MSI"                                                     
   V93C "XCOMMENTS ON MSI"                                                     
   V94 "PTY IN POWER BAD"                                                      
   V95 "DEM PTY BAD-CNTRY' WLFR"                                               
   V96 "XLBRLPTY BAD CNTRY' WLFR"                                              
   V97 "XPSDI BAD CNTRY' WLFR"                                                 
   V98 "XMSI BAD CNTRY' WLFR"                                                  
   V99 "NAME PARTY LEADERS"                                                    
   V100 "HOW FAM DCSNS MADE"                                                   
   V101 "HOW DSCPN DCSNS MADE"                                                 
   V102 "XHOW FAM DCSNS MADE NOW"                                              
   V103 "XPUNISHMENT OF CHILDREN"                                              
   V104 "XHOW DECIDE TO VOTE"                                                  
   V105 "XPNTS UNSTND YOUR NEEDS"                                              
   V106 "XINFL FAM DCSNS AS CHILD"                                             
   V107 "XCMPLN ABOUT FAM DCSNS"                                               
   V108 "XCMPLNT FAMDCSNS MKDFRNC"                                             
   V109 "XCMPLN OFN ABT FAM DCSNS"                                             
   V110 "XSATISD INFL FAM DCSNS"                                               
   V111 "SHLD CHLDN HLP-FAM DCSNS"                                             
   V112 "EDUCATIONAL LEVEL"                                                    
   V113 "XTYPE OF PRIMARY SCHOOL"                                              
   V114 "XEDUCATION OF SPOUSE"                                                 
   V115 "XSCHL TIME ON POLITICS"                                               
   V116A "XWHAT TAUGHT IN SCHOOL"                                              
   V116B "XWHAT TAUGHT IN SCHOOL"                                              
   V116C "XWHAT TAUGHT IN SCHOOL"                                              
   V117 "XDEBATE SCL ISSUES SCHL"                                              
   V118 "XTK PART IN SCL DEBATES"                                              
   V119 "XTEACHERS INTSTD IN U"                                                
   V120 "XTEACHERS TRT PPL FAIRLY"                                             
   V121 "XTCHRS TRT BD-U TLK FRLY"                                             
   V122 "XTLK-TCHRS TRTT MK DFRNC"                                             
   V123 "XCMPLN ABOUT TCHR TRTT"                                               
   V124 "XSTUDENTS RUN SCHOOL"                                                 
   V125 "XU PARTICIPATE RNG SCHL"                                              
   V126 "SGD IDEA STDS RUN SCHL"                                               
   V127 "VOTING DECIDES POLICY"                                                
   V128 "PPL WILL TK ADVTG OF U"                                               
   V129 "STNG LDRS BTR FOR CNTRY"                                              
   V130 "CANDS ACTS AFTER ELCTN"                                               
   V131 "PPL ARE COOPERATIVE"                                                  
   V132 "PPL HAVE NO SAY IN GOVT"                                              
   V133 "PSNS FIRST DUTY TO STATE"                                             
   V134 "NO ONE CARES ABT YOU"                                                 
   V135 "NAME CABINET POSITIONS"                                               
   V136 "LBR FORCE STATUS OF R"                                                
   V137 "XOCCUPATION OF R"                                                     
   V138A "XUSL EMPLOYMENT STATUS"                                              
   V138B "XUSL EMPLOYMENT STATUS"                                              
   V138C "XUSL EMPLOYMENT STATUS"                                              
   V139 "XHSBND' OCC OR USUAL OCC"                                             
   V140 "XWKG HOUSEWIFES OCC"                                                  
   V141 "XANYONE IN AUTH OVER U"                                               
   V142 "XU HLP MK DCSNS ON JOB"                                               
   V143 "XCOMPLAIN ABT DCSN"                                                   
   V144 "XCOMPLAINT HELP"                                                      
   V145 "XEVER COMPLAIN ABT DCSN"                                              
   V146 "XDCSNS IN YOUR INTEREST"                                              
   V147 "ECON SIT OF FAMILY GOOD"                                              
   V148 "ECON SIT CHNG 10 YRS"                                                 
   V149 "NBR OF ORGANIZATIONS"                                                 
   V150A "TYPES OF ORGS MBR"                                                   
   V150B "TYPES OF ORGS MBR"                                                   
   V150C "TYPES OF ORGS MBR"                                                   
   V150D "TYPES OF ORGS MBR"                                                   
   V151 "XEVER AN OFCR OF ORG"                                                 
   V152 "XMBR POLT ORGS"                                                       
   V153 "RELIGIOUS PREFERENCE"                                                 
   V154 "XHOW OFTEN ATND SERVICES"                                             
   V155 "AGE"                                                                  
   V156 "FAMILY INCOME"                                                        
   V157 "INCOME EQVLNTS IN DOLLAR"                                             
   V158 "PLACE OF INTERVIEW"                                                   
   V159 "SIZE OF TOWN"                                                         
   V160 "REGION OF COUNTRY"                                                    
   V161 "R'S SEX"                                                              
   V162 "R'S RACE"                                                             
   V163 "R'S SOCIOECON CLASS"                                                  
   V164 "ARTICULATENESS OF R"                                                  
   V165 "ATTITUDE OF R TO INTRVW"                                              
   V166A "XMOST FRQNTY CITED FGRS"                                             
   V166B "XMOST FRQNTY CITED FGRS"                                             
   V166C "XMOST FRQNTY CITED FGRS".                                            
                                                                               
* SPSS VALUE LABELS COMMAND.                                                   
                                                                               
VALUE LABELS                                                                   
   V2                                                                          
   1 "UNITED STATES"                                                           
   2 "UNITED KINGDOM"                                                          
   3 "GERMANY"                                                                 
   4 "ITALY"                                                                   
   5 "MEXICO" /                                                                
/* V5                                                                          
/* UNITED STATES                                                               
/* 1 "U.S. EASTERN STATES"                                                     
/* 2 "U.S. CENTRAL STATES"                                                     
/* 3 "U.S. SOUTHERN STATES"                                                    
/* 4 "U.S. WESTERN STATES"                                                     
/* 5 "U.S. POSSESSIONS, INCLUDING FRM POSS"                                    
/* 6 "N.W. EUROPE"                                                             
/* 7 "S. EUROPE"                                                               
/* 8 "OTHER, NON-U"                                                            
/* UNITED KINGDOM                                                              
/* 1 "SO. ENGLAND"                                                             
/* 2 "WALES"                                                                   
/* 3 "MIDLAND"                                                                 
/* 4 "NO. ENGLAND"                                                             
/* 5 "SCOTLAND"                                                                
/* 6 "NO"                                                                      
/* 7 "COMMONWEALTH"                                                            
/* 8 "EIRE"                                                                    
/* 9 "FOREIGN COUNTRY"                                                         
/* GERMANY                                                                     
/* 1 "SCHLESWIG-HOLSTEIN -- LOWER SAXONY"                                      
/* 2 "NORTHERN RHINE WESTPHALIA -- RHINELAND-PALATINATE"                       
/* 3 "HESSE -- BADEN-WUERTTEMBERG"                                             
/* 4 "BAVARIA"                                                                 
/* 5 "HAMBURG -- BREMEN"                                                       
/* 6 "GERMANY, BUT OUTSIDE OF PRESENT BUNDESREPUBLIK"                          
/* 7 "FOREIGN COUNTRY"                                                         
/* ITALY                                                                       
/* 1 "NORTH"                                                                   
/* 2 "CENTER"                                                                  
/* 3 "SOUTH"                                                                   
/* 4 "ISLANDS"                                                                 
/* 7 "FOREIGN COUNTRY"                                                         
/* 8 "DONT KNOW"                                                               
/* 9 "NA"                                                                      
/* MEXICO                                                                      
/* 1 "CENTRAL REGION"                                                          
/* 2 "GULF COAST AND YUCATAN"                                                  
/* 3 "SOUTHERN PACIFIC REGION"                                                 
/* 4 "NORTH PACIFIC REGION"                                                    
/* 5 "NORTHERN REGION"                                                         
/* 7 "FOREIGN COUNTRY"                                                         
/* 8 "DONT KNOW" /                                                             
   V6                                                                          
   1 "LESS THAN 5,000"                                                         
   2 "5,000 - 20,000"                                                          
   3 "20,000 - 50,000"                                                         
   4 "50,000 - 100,000"                                                        
   5 "100,000 AND OVER"                                                        
   8 "DONT KNOW"                                                               
   9 "NA" /                                                                    
   V7                                                                          
   1 "LESS THAN A YEAR"                                                        
   2 "1 - 2 YEARS"                                                             
   3 "2 - 5 YEARS"                                                             
   4 "5 - 10 YEARS"                                                            
   5 "10 - 20 YEARS"                                                           
   6 "20 OR MORE, ALL MY LIFE"                                                 
   7 "OTHER RESPONSES -- NOT SPECIFIC (MEXICO ONLY)"                           
   8 "DONT KNOW, NO RESPONSE (MEXICO ONLY)"                                    
   9 "NA" /                                                                    
   V8                                                                          
   1 "YES"                                                                     
   2 "MIGHT MOVE, IT DEPENDS, ETC"                                             
   3 "PROBABLY WILL MOVE"                                                      
   4 "DEFINITELY WILL MOVE"                                                    
   7 "OTHER"                                                                   
   9 "DONT KNOW, NA" /                                                         
   V9                                                                          
   1 "MARRIED"                                                                 
   2 "DIVORCED, SEPARATED"                                                     
   3 "WIDOWED"                                                                 
   4 "SINGLE"                                                                  
   9 "NA" /                                                                    
   V10                                                                         
   0 "NONE"                                                                    
   1 "ONE"                                                                     
   2 "TWO"                                                                     
   3 "THREE"                                                                   
   4 "FOUR"                                                                    
   5 "FIVE OR MORE"                                                            
   8 "NA"                                                                      
   9 "INAP" /                                                                  
   V11A                                                                        
   00 "NOTHING"                                                                
   10 "POLITICAL ACTIVITIES AND INTERESTS"                                     
   20 "PARTICIPATE IN ECONOMIC INTEREST ORGANIZATIONS --"                      
   25 "PARTICIPATE IN OTHER GROUPS THAT TRY TO INFLUENCE"                      
   30 "PRIVATE CHARITABLE AND WELFARE ACTIVITIES -- AS"                        
   40 "RELIGIOUS ACTIVITIES -- CHURCH, RELIGIOUS GROUPS"                       
   50 "SOCIAL ACTIVITIES -- VISITING, DANCING, BRIDGE,"                        
   60 "HOBBIES, SPORTS, GAMES, GARDENING, HOUSEHOLD WORK"                      
   70 "CULTURAL ACTIVITIES -- MUSIC, ART, READING,"                            
   80 "TRAVEL"                                                                 
   90 "OTHER"                                                                  
   95 "DONT KNOW, NA" /                                                        
   V11B                                                                        
   00 "NOTHING"                                                                
   10 "POLITICAL ACTIVITIES AND INTERESTS"                                     
   20 "PARTICIPATE IN ECONOMIC INTEREST ORGANIZATIONS --"                      
   25 "PARTICIPATE IN OTHER GROUPS THAT TRY TO INFLUENCE"                      
   30 "PRIVATE CHARITABLE AND WELFARE ACTIVITIES -- AS"                        
   40 "RELIGIOUS ACTIVITIES -- CHURCH, RELIGIOUS GROUPS"                       
   50 "SOCIAL ACTIVITIES -- VISITING, DANCING, BRIDGE,"                        
   60 "HOBBIES, SPORTS, GAMES, GARDENING, HOUSEHOLD WORK"                      
   70 "CULTURAL ACTIVITIES -- MUSIC, ART, READING,"                            
   80 "TRAVEL"                                                                 
   90 "OTHER"                                                                  
   95 "DONT KNOW, NA" /                                                        
   V11C                                                                        
   00 "NOTHING"                                                                
   10 "POLITICAL ACTIVITIES AND INTERESTS"                                     
   20 "PARTICIPATE IN ECONOMIC INTEREST ORGANIZATIONS --"                      
   25 "PARTICIPATE IN OTHER GROUPS THAT TRY TO INFLUENCE"                      
   30 "PRIVATE CHARITABLE AND WELFARE ACTIVITIES -- AS"                        
   40 "RELIGIOUS ACTIVITIES -- CHURCH, RELIGIOUS GROUPS"                       
   50 "SOCIAL ACTIVITIES -- VISITING, DANCING, BRIDGE,"                        
   60 "HOBBIES, SPORTS, GAMES, GARDENING, HOUSEHOLD WORK"                      
   70 "CULTURAL ACTIVITIES -- MUSIC, ART, READING,"                            
   80 "TRAVEL"                                                                 
   90 "OTHER"                                                                  
   95 "DONT KNOW, NA" /                                                        
/* V12                                                                         
/* GERMANY                                                                     
/* 1 "TO GO HIKING, TAKE STROLLS"                                              
/* 0 "INAP"                                                                    
/* ITALY                                                                       
/* 1 "TO VIEW TV"                                                              
/* 2 "TO WORK FOR GETTING A BETTER LIVING STANDARD"                            
/* 3 "TO REST"                                                                 
/* 0 "INAP" /                                                                  
   V13                                                                         
   1 "DOES HIS JOB WELL"                                                       
   2 "ACTIVE IN PUBLIC AND SOCIAL AFFAIRS"                                     
   3 "AMBITIOUS, WANTS TO GET AHEAD"                                           
   4 "GENEROUS, CONSIDERATE OF OTHERS"                                         
   5 "THRIFTY, SAVING"                                                         
   6 "LETS NO ONE TAKE ADVANTAGE OF HIM"                                       
   7 "KEEPS HIMSELF TO HIMSELF"                                                
   8 "RESPECTFUL, DOESNT OVERSTEP HIS PLACE"                                   
   9 "OTHER"                                                                   
   0 "DONT KNOW" /                                                             
   V14                                                                         
   1 "DOES HIS JOB WELL"                                                       
   2 "ACTIVE IN PUBLIC AND SOCIAL AFFAIRS"                                     
   3 "AMBITIOUS, WANTS TO GET AHEAD"                                           
   4 "GENEROUS, CONSIDERATE OF OTHERS"                                         
   5 "THRIFTY, SAVING"                                                         
   6 "LETS NO ONE TAKE ADVANTAGE OF HIM"                                       
   7 "KEEPS HIMSELF TO HIMSELF"                                                
   8 "RESPECTFUL, DOESNT OVERSTEP HIS PLACE"                                   
   9 "OTHER"                                                                   
   0 "DONT KNOW" /                                                             
   V15                                                                         
   1 "MOST PEOPLE CAN BE TRUSTED"                                              
   3 "IT DEPENDS"                                                              
   5 "YOU CANT BE TOO CAREFUL"                                                 
   7 "OTHER"                                                                   
   8 "DONT KNOW"                                                               
   9 "NA" /                                                                    
   V16A                                                                        
   10 "ENTERTAINMENT"                                                          
   15 "SPORTS"                                                                 
   20 "CULTURAL FIGURES (ARTS, MUSIC, LITERATURE, SCIENCE)"                    
   30 "ROYALTY"                                                                
   40 "POLITICAL, GOVERNMENTAL"                                                
   50 "MILITARY"                                                               
   60 "RELIGIOUS FIGURES"                                                      
   70 "COMMENTATORS, COLUMNISTS, PUBLICISTS ON PUBLIC"                         
   80 "PHILANTHROPY"                                                           
   90 "OTHER"                                                                  
   98 "DONT KNOW"                                                              
   00 "NOBODY I CAN THINK OF" /                                                
   V16B                                                                        
   10 "ENTERTAINMENT"                                                          
   15 "SPORTS"                                                                 
   20 "CULTURAL FIGURES (ARTS, MUSIC, LITERATURE, SCIENCE)"                    
   30 "ROYALTY"                                                                
   40 "POLITICAL, GOVERNMENTAL"                                                
   50 "MILITARY"                                                               
   60 "RELIGIOUS FIGURES"                                                      
   70 "COMMENTATORS, COLUMNISTS, PUBLICISTS ON PUBLIC"                         
   80 "PHILANTHROPY"                                                           
   90 "OTHER"                                                                  
   98 "DONT KNOW"                                                              
   00 "NOBODY I CAN THINK OF" /                                                
   V16C                                                                        
   10 "ENTERTAINMENT"                                                          
   15 "SPORTS"                                                                 
   20 "CULTURAL FIGURES (ARTS, MUSIC, LITERATURE, SCIENCE)"                    
   30 "ROYALTY"                                                                
   40 "POLITICAL, GOVERNMENTAL"                                                
   50 "MILITARY"                                                               
   60 "RELIGIOUS FIGURES"                                                      
   70 "COMMENTATORS, COLUMNISTS, PUBLICISTS ON PUBLIC"                         
   80 "PHILANTHROPY"                                                           
   90 "OTHER"                                                                  
   98 "DONT KNOW"                                                              
   00 "NOBODY I CAN THINK OF" /                                                
   V17                                                                         
   1 "RACIAL HEROES OR LEADERS"                                                
   2 "MORAL LEADERS"                                                           
   0 "INAP" /                                                                  
   V18                                                                         
   1 "SPIRITUAL AND MORAL BETTERMENT"                                          
   2 "MAKING ENDS MEET"                                                        
   3 "GOVERNMENT CONTROL AND REGULATION OF BUSINESS"                           
   4 "ELIMINATING INEQUALITY AND INJUSTICE"                                    
   5 "FOREIGN AFFAIRS, NATIONAL DEFENSE"                                       
   6 "IMPROVING CONDITIONS FOR YOUR FAMILY"                                    
   7 "OTHER"                                                                   
   8 "DONT KNOW" /                                                             
   V19                                                                         
   1 "SPIRITUAL AND MORAL BETTERMENT"                                          
   2 "MAKING ENDS MEET"                                                        
   3 "GOVERNMENT CONTROL AND REGULATION OF BUSINESS"                           
   4 "ELIMINATING INEQUALITY AND INJUSTICE"                                    
   5 "FOREIGN AFFAIRS, NATIONAL DEFENSE"                                       
   6 "IMPROVING CONDITIONS FOR YOUR FAMILY"                                    
   7 "OTHER"                                                                   
   8 "DONT KNOW" /                                                             
   V20A                                                                        
   10 "TALK TO (PARTICULAR) PEOPLE FROM DAILY LIFE --"                         
   20 "TALK OR WRITE TO (PARTICULAR) GOVERNMENT OR"                            
   30 "TALK OR WRITE TO (PARTICULAR) SPECIALISTS OR"                           
   40 "TALK OR WRITE (GENERAL) -- NO PARTICULAR PERSON"                        
   50 "READ ABOUT IT (GENERAL) -- READ ABOUT IT,"                              
   55 "READ ABOUT IT IN (PARTICULAR) SOURCE -- SOURCE"                         
   60 "LISTEN TO RADIO AND/OR TELEVISION (GENERAL) --"                         
   65 "LISTEN TO RADIO AND/OR TELEVISION (PARTICULAR)"                         
   70 "ATTEND MEETINGS (GENERAL) -- ORGANIZATION OR"                           
   80 "ATTEND MEETINGS (PARTICULAR) -- ORGANIZATION"                           
   90 "OTHER  (1 POINT)"                                                       
   00 "NOTHING, DONT KNOW  (0 POINTS)" /                                       
   V20B                                                                        
   10 "TALK TO (PARTICULAR) PEOPLE FROM DAILY LIFE --"                         
   20 "TALK OR WRITE TO (PARTICULAR) GOVERNMENT OR"                            
   30 "TALK OR WRITE TO (PARTICULAR) SPECIALISTS OR"                           
   40 "TALK OR WRITE (GENERAL) -- NO PARTICULAR PERSON"                        
   50 "READ ABOUT IT (GENERAL) -- READ ABOUT IT,"                              
   55 "READ ABOUT IT IN (PARTICULAR) SOURCE -- SOURCE"                         
   60 "LISTEN TO RADIO AND/OR TELEVISION (GENERAL) --"                         
   65 "LISTEN TO RADIO AND/OR TELEVISION (PARTICULAR)"                         
   70 "ATTEND MEETINGS (GENERAL) -- ORGANIZATION OR"                           
   80 "ATTEND MEETINGS (PARTICULAR) -- ORGANIZATION"                           
   90 "OTHER  (1 POINT)"                                                       
   00 "NOTHING, DONT KNOW  (0 POINTS)" /                                       
   V20C                                                                        
   10 "TALK TO (PARTICULAR) PEOPLE FROM DAILY LIFE --"                         
   20 "TALK OR WRITE TO (PARTICULAR) GOVERNMENT OR"                            
   30 "TALK OR WRITE TO (PARTICULAR) SPECIALISTS OR"                           
   40 "TALK OR WRITE (GENERAL) -- NO PARTICULAR PERSON"                        
   50 "READ ABOUT IT (GENERAL) -- READ ABOUT IT,"                              
   55 "READ ABOUT IT IN (PARTICULAR) SOURCE -- SOURCE"                         
   60 "LISTEN TO RADIO AND/OR TELEVISION (GENERAL) --"                         
   65 "LISTEN TO RADIO AND/OR TELEVISION (PARTICULAR)"                         
   70 "ATTEND MEETINGS (GENERAL) -- ORGANIZATION OR"                           
   80 "ATTEND MEETINGS (PARTICULAR) -- ORGANIZATION"                           
   90 "OTHER  (1 POINT)"                                                       
   00 "NOTHING, DONT KNOW  (0 POINTS)" /                                       
   V21                                                                         
   00 "NONE"                                                                   
   01 "ONE"                                                                    
   02 "TWO"                                                                    
   03 "THREE"                                                                  
   04 "FOUR"                                                                   
   05 "FIVE"                                                                   
   06 "SIX"                                                                    
   07 "SEVEN"                                                                  
   08 "EIGHT"                                                                  
   09 "NINE"                                                                   
   10 "TEN OR MORE" /                                                          
   V22                                                                         
   1 "REGULARLY"                                                               
   3 "FROM TIME TO TIME"                                                       
   5 "NEVER"                                                                   
   7 "OTHER"                                                                   
   8 "DONT KNOW"                                                               
   9 "NA" /                                                                    
   V23                                                                         
   1 "NEARLY EVERYDAY"                                                         
   2 "ONCE A WEEK"                                                             
   3 "FROM TIME TO TIME"                                                       
   5 "NEVER"                                                                   
   7 "OTHER"                                                                   
   8 "DONT KNOW"                                                               
   0 "INAP" /                                                                  
   V24                                                                         
   1 "NEARLY EVERYDAY"                                                         
   2 "ONCE A WEEK"                                                             
   3 "FROM TIME TO TIME"                                                       
   5 "NEVER"                                                                   
   7 "OTHER"                                                                   
   8 "DONT KNOW"                                                               
   0 "INAP" /                                                                  
   V25                                                                         
   1 "ONCE A WEEK, OR MORE"                                                    
   3 "FROM TIME TO TIME"                                                       
   5 "NEVER"                                                                   
   7 "OTHER"                                                                   
   8 "DONT KNOW, NA"                                                           
   0 "INAP" /                                                                  
   V26                                                                         
   1 "NEARLY EVERYDAY"                                                         
   2 "ONCE A WEEK"                                                             
   3 "FROM TIME TO TIME"                                                       
   5 "NEVER"                                                                   
   7 "OTHER"                                                                   
   8 "DONT KNOW"                                                               
   9 "NA" /                                                                    
   V27                                                                         
   1 "TALK ABOUT POLITICS TO NO ONE, NEVER TALK POLITICS-"                     
   2 "MANY PEOPLE WITH WHOM CANT TALK POLITICS"                                
   3 "SOME, A FEW, ONE OR TWO PEOPLE WITH WHOM CANT TALK"                      
   4 "NO RESTRICTIONS"                                                         
   7 "OTHER"                                                                   
   8 "DONT KNOW"                                                               
   9 "NA" /                                                                    
   V28A                                                                        
   10 "UNPLEASANT"                                                             
   20 "CAN HURT ONES ECONOMIC INTERESTS -- HURT BUSINESS,"                     
   25 "CAN GET YOU INTO TROUBLE WITH AUTHORITIES, GOVERN-"                     
   30 "PEOPLE ARE UNINTERESTED IN POLITICS"                                    
   40 "PEOPLE ARE BIASED, HAVE ALREADY MADE UP THEIR MINDS"                    
   50 "I AM TOO IGNORANT"                                                      
   60 "PEOPLE MIGHT MISQUOTE ME"                                               
   70 "POLITICS DOES NOT INTEREST ME"                                          
   80 "(U"                                                                     
   90 "OTHER"                                                                  
   91 "INAP"                                                                   
   98 "DONT KNOW"                                                              
   99 "NA" /                                                                   
   V28B                                                                        
   10 "UNPLEASANT"                                                             
   20 "CAN HURT ONES ECONOMIC INTERESTS -- HURT BUSINESS,"                     
   25 "CAN GET YOU INTO TROUBLE WITH AUTHORITIES, GOVERN-"                     
   30 "PEOPLE ARE UNINTERESTED IN POLITICS"                                    
   40 "PEOPLE ARE BIASED, HAVE ALREADY MADE UP THEIR MINDS"                    
   50 "I AM TOO IGNORANT"                                                      
   60 "PEOPLE MIGHT MISQUOTE ME"                                               
   70 "POLITICS DOES NOT INTEREST ME"                                          
   80 "(U"                                                                     
   90 "OTHER"                                                                  
   91 "INAP"                                                                   
   98 "DONT KNOW"                                                              
   99 "NA" /                                                                   
   V28C                                                                        
   10 "UNPLEASANT"                                                             
   20 "CAN HURT ONES ECONOMIC INTERESTS -- HURT BUSINESS,"                     
   25 "CAN GET YOU INTO TROUBLE WITH AUTHORITIES, GOVERN-"                     
   30 "PEOPLE ARE UNINTERESTED IN POLITICS"                                    
   40 "PEOPLE ARE BIASED, HAVE ALREADY MADE UP THEIR MINDS"                    
   50 "I AM TOO IGNORANT"                                                      
   60 "PEOPLE MIGHT MISQUOTE ME"                                               
   70 "POLITICS DOES NOT INTEREST ME"                                          
   80 "(U"                                                                     
   90 "OTHER"                                                                  
   91 "INAP"                                                                   
   98 "DONT KNOW"                                                              
   99 "NA" /                                                                   
   V29                                                                         
   1 "AGREE"                                                                   
   3 "DEPENDS"                                                                 
   5 "DISAGREE"                                                                
   7 "OTHER"                                                                   
   9 "DONT KNOW, NA" /                                                         
   V30                                                                         
   1 "VERY WELL"                                                               
   2 "MODERATELY WELL"                                                         
   3 "DEPENDS ON THE ISSUE"                                                    
   4 "NOT SO WELL"                                                             
   5 "NOT AT ALL"                                                              
   7 "OTHER"                                                                   
   9 "DONT KNOW, NA" /                                                         
   V31                                                                         
   1 "VERY WELL"                                                               
   2 "MODERATELY WELL"                                                         
   3 "DEPENDS ON THE ISSUE"                                                    
   4 "NOT SO WELL"                                                             
   5 "NOT AT ALL"                                                              
   7 "OTHER"                                                                   
   9 "DONT KNOW, NA" /                                                         
   V32                                                                         
   1 "THE PROBLEMS ARE TOO COMPLEX"                                            
   2 "PEOPLE DONT CARE AND DONT TRY"                                           
   3 "THOSE IN POWER DONT HELP PEOPLE TO UNDERSTAND"                           
   7 "OTHER"                                                                   
   9 "DONT KNOW, NA" /                                                         
   V33                                                                         
   1 "AGREE"                                                                   
   3 "PARTIALLY AGREE"                                                         
   5 "DISAGREE"                                                                
   7 "OTHER"                                                                   
   8 "DONT KNOW" /                                                             
   V34A                                                                        
   10 "CHURCH (CATHOLIC)"                                                      
   15 "OTHER RELIGIONS"                                                        
   20 "LABOR UNIONS"                                                           
   30 "ARISTOCRATS, THE WELL-BORN, THE PRIVILEGED"                             
   40 "BIG BUSINESS-- THE RICH"                                                
   50 "POLITICIANS, POLITICAL PARTIES"                                         
   60 "OTHER SPECIAL INTERESTS, LOBBIES, (UNSPECIFIED)"                        
   70 "IDEOLOGICAL GROUPS- COMMUNISTS, FASCISTS, SOCIALISTS"                   
   80 "IGNORANT PEOPLE-- THE MASSES"                                           
   90 "OTHER"                                                                  
   91 "INAP"                                                                   
   98 "DONT KNOW" /                                                            
   V34B                                                                        
   10 "CHURCH (CATHOLIC)"                                                      
   15 "OTHER RELIGIONS"                                                        
   20 "LABOR UNIONS"                                                           
   30 "ARISTOCRATS, THE WELL-BORN, THE PRIVILEGED"                             
   40 "BIG BUSINESS-- THE RICH"                                                
   50 "POLITICIANS, POLITICAL PARTIES"                                         
   60 "OTHER SPECIAL INTERESTS, LOBBIES, (UNSPECIFIED)"                        
   70 "IDEOLOGICAL GROUPS- COMMUNISTS, FASCISTS, SOCIALISTS"                   
   80 "IGNORANT PEOPLE-- THE MASSES"                                           
   90 "OTHER"                                                                  
   91 "INAP"                                                                   
   98 "DONT KNOW" /                                                            
   V34C                                                                        
   10 "CHURCH (CATHOLIC)"                                                      
   15 "OTHER RELIGIONS"                                                        
   20 "LABOR UNIONS"                                                           
   30 "ARISTOCRATS, THE WELL-BORN, THE PRIVILEGED"                             
   40 "BIG BUSINESS-- THE RICH"                                                
   50 "POLITICIANS, POLITICAL PARTIES"                                         
   60 "OTHER SPECIAL INTERESTS, LOBBIES, (UNSPECIFIED)"                        
   70 "IDEOLOGICAL GROUPS- COMMUNISTS, FASCISTS, SOCIALISTS"                   
   80 "IGNORANT PEOPLE-- THE MASSES"                                           
   90 "OTHER"                                                                  
   91 "INAP"                                                                   
   98 "DONT KNOW" /                                                            
   V35A                                                                        
   00 "NOTHING"                                                                
   10 "TAKE PART IN LOCAL GOVERNMENT"                                          
   20 "TAKE PART IN POLITICAL PARTIES"                                         
   30 "TAKE PART IN NON-GOVERNMENTAL GROUPS AND ORGANIZA-"                     
   40 "TAKE PART IN CHURCH AND RELIGIOUS ACTIVITIES"                           
   50 "TRY TO UNDERSTAND AND KEEP INFORMED"                                    
   60 "VOTE"                                                                   
   70 "DO JOB WELL, TAKE CARE OF FAMILY"                                       
   80 "JUST TAKE AN INTEREST IN LOCAL AFFAIRS"                                 
   90 "OTHER"                                                                  
   98 "DONT KNOW"                                                              
   99 "NA" /                                                                   
   V35B                                                                        
   00 "NOTHING"                                                                
   10 "TAKE PART IN LOCAL GOVERNMENT"                                          
   20 "TAKE PART IN POLITICAL PARTIES"                                         
   30 "TAKE PART IN NON-GOVERNMENTAL GROUPS AND ORGANIZA-"                     
   40 "TAKE PART IN CHURCH AND RELIGIOUS ACTIVITIES"                           
   50 "TRY TO UNDERSTAND AND KEEP INFORMED"                                    
   60 "VOTE"                                                                   
   70 "DO JOB WELL, TAKE CARE OF FAMILY"                                       
   80 "JUST TAKE AN INTEREST IN LOCAL AFFAIRS"                                 
   90 "OTHER"                                                                  
   98 "DONT KNOW"                                                              
   99 "NA" /                                                                   
   V35C                                                                        
   00 "NOTHING"                                                                
   10 "TAKE PART IN LOCAL GOVERNMENT"                                          
   20 "TAKE PART IN POLITICAL PARTIES"                                         
   30 "TAKE PART IN NON-GOVERNMENTAL GROUPS AND ORGANIZA-"                     
   40 "TAKE PART IN CHURCH AND RELIGIOUS ACTIVITIES"                           
   50 "TRY TO UNDERSTAND AND KEEP INFORMED"                                    
   60 "VOTE"                                                                   
   70 "DO JOB WELL, TAKE CARE OF FAMILY"                                       
   80 "JUST TAKE AN INTEREST IN LOCAL AFFAIRS"                                 
   90 "OTHER"                                                                  
   98 "DONT KNOW"                                                              
   99 "NA" /                                                                   
   V36A                                                                        
   00 "NOTHING"                                                                
   10 "VOTE"                                                                   
   20 "TRY TO UNDERSTAND AND KEEP INFORMED ABOUT GOVERN-"                      
   30 "PARTICIPATE IN PUBLIC AND POLITICAL ACTIVITIES--"                       
   40 "LOVE ONES COUNTRY-- BE LOYAL, RESPECTFUL-- SPEAK"                       
   50 "PAY TAXES"                                                              
   60 "DEFEND THE COUNTRY, SERVE IN ARMED FORCES IF NEEDED"                    
   70 "OBEY THE LAWS, RESPECT AUTHORITY"                                       
   80 "DO ONES JOB RIGHT-- RAISE CHILDREN PROPERLY-- BE"                       
   85 "GENERAL VIRTUES -- BE HONEST, MORAL, WORK TO BETTER"                    
   90 "OTHER"                                                                  
   98 "DONT KNOW" /                                                            
   V36B                                                                        
   00 "NOTHING"                                                                
   10 "VOTE"                                                                   
   20 "TRY TO UNDERSTAND AND KEEP INFORMED ABOUT GOVERN-"                      
   30 "PARTICIPATE IN PUBLIC AND POLITICAL ACTIVITIES--"                       
   40 "LOVE ONES COUNTRY-- BE LOYAL, RESPECTFUL-- SPEAK"                       
   50 "PAY TAXES"                                                              
   60 "DEFEND THE COUNTRY, SERVE IN ARMED FORCES IF NEEDED"                    
   70 "OBEY THE LAWS, RESPECT AUTHORITY"                                       
   80 "DO ONES JOB RIGHT-- RAISE CHILDREN PROPERLY-- BE"                       
   85 "GENERAL VIRTUES -- BE HONEST, MORAL, WORK TO BETTER"                    
   90 "OTHER"                                                                  
   98 "DONT KNOW" /                                                            
   V36C                                                                        
   00 "NOTHING"                                                                
   10 "VOTE"                                                                   
   20 "TRY TO UNDERSTAND AND KEEP INFORMED ABOUT GOVERN-"                      
   30 "PARTICIPATE IN PUBLIC AND POLITICAL ACTIVITIES--"                       
   40 "LOVE ONES COUNTRY-- BE LOYAL, RESPECTFUL-- SPEAK"                       
   50 "PAY TAXES"                                                              
   60 "DEFEND THE COUNTRY, SERVE IN ARMED FORCES IF NEEDED"                    
   70 "OBEY THE LAWS, RESPECT AUTHORITY"                                       
   80 "DO ONES JOB RIGHT-- RAISE CHILDREN PROPERLY-- BE"                       
   85 "GENERAL VIRTUES -- BE HONEST, MORAL, WORK TO BETTER"                    
   90 "OTHER"                                                                  
   98 "DONT KNOW" /                                                            
   V37                                                                         
   1 "MORE INCLINED TO HELP OTHERS"                                            
   2 "MORE INCLINED TO LOOK OUT FOR THEMSELVES"                                
   3 "IT DEPENDS"                                                              
   7 "OTHER"                                                                   
   8 "DONT KNOW"                                                               
   9 "NA" /                                                                    
   V38A                                                                        
   00 "NOTHING"                                                                
   10 "WORK THROUGH INFORMAL, UNORGANIZED GROUPS --"                           
   20 "WORK THROUGH POLITICAL PARTY"                                           
   30 "WORK THROUGH OTHER FORMAL, ORGANIZED GROUP --"                          
   40 "AS INDIVIDUAL TALK TO, WRITE LETTERS, CONTACT,"                         
   50 "AS INDIVIDUAL TALK TO, WRITE LETTERS TO AUTHORI-"                       
   60 "CONSULT A LAWYER -- USE LEGAL (JURISTIC) MEANS -"                       
   70 "VOTE"                                                                   
   80 "TAKE SOME VIOLENT ACTION"                                               
   90 "OTHER"                                                                  
   98 "DONT KNOW"                                                              
   99 "NA" /                                                                   
   V38B                                                                        
   00 "NOTHING"                                                                
   10 "WORK THROUGH INFORMAL, UNORGANIZED GROUPS --"                           
   20 "WORK THROUGH POLITICAL PARTY"                                           
   30 "WORK THROUGH OTHER FORMAL, ORGANIZED GROUP --"                          
   40 "AS INDIVIDUAL TALK TO, WRITE LETTERS, CONTACT,"                         
   50 "AS INDIVIDUAL TALK TO, WRITE LETTERS TO AUTHORI-"                       
   60 "CONSULT A LAWYER -- USE LEGAL (JURISTIC) MEANS -"                       
   70 "VOTE"                                                                   
   80 "TAKE SOME VIOLENT ACTION"                                               
   90 "OTHER"                                                                  
   98 "DONT KNOW"                                                              
   99 "NA" /                                                                   
   V38C                                                                        
   00 "NOTHING"                                                                
   10 "WORK THROUGH INFORMAL, UNORGANIZED GROUPS --"                           
   20 "WORK THROUGH POLITICAL PARTY"                                           
   30 "WORK THROUGH OTHER FORMAL, ORGANIZED GROUP --"                          
   40 "AS INDIVIDUAL TALK TO, WRITE LETTERS, CONTACT,"                         
   50 "AS INDIVIDUAL TALK TO, WRITE LETTERS TO AUTHORI-"                       
   60 "CONSULT A LAWYER -- USE LEGAL (JURISTIC) MEANS -"                       
   70 "VOTE"                                                                   
   80 "TAKE SOME VIOLENT ACTION"                                               
   90 "OTHER"                                                                  
   98 "DONT KNOW"                                                              
   99 "NA" /                                                                   
   V39                                                                         
   1 "VERY LIKELY"                                                             
   2 "MODERATELY LIKELY"                                                       
   3 "SOMEWHAT UNLIKELY"                                                       
   4 "NOT AT ALL LIKELY -- IMPOSSIBLE"                                         
   5 "LIKELY ONLY IF OTHERS JOINED IN"                                         
   7 "OTHER"                                                                   
   8 "DONT KNOW" /                                                             
   V40                                                                         
   1 "VERY LIKELY"                                                             
   2 "MODERATELY LIKELY"                                                       
   3 "SOMEWHAT UNLIKELY"                                                       
   4 "NOT AT ALL LIKELY -- IMPOSSIBLE"                                         
   5 "DEPENDS ON THE ISSUE"                                                    
   7 "OTHER"                                                                   
   8 "DONT KNOW, NA"                                                           
   0 "INAP" /                                                                  
   V41                                                                         
   1 "OFTEN"                                                                   
   3 "ONCE OR TWICE, A FEW TIMES"                                              
   5 "NEVER"                                                                   
   7 "OTHER"                                                                   
   9 "DONT KNOW, NA" /                                                         
   V42A                                                                        
   00 "NOTHING"                                                                
   10 "WORK THROUGH INFORMAL, UNORGANIZED GROUPS --"                           
   20 "WORK THROUGH POLITICAL PARTY"                                           
   30 "WORK THROUGH OTHER FORMAL, ORGANIZED GROUP --"                          
   40 "AS INDIVIDUAL TALK TO, WRITE LETTERS, CONTACT"                          
   50 "AS INDIVIDUAL TALK TO, WRITE LETTERS TO AUTHORI-"                       
   60 "CONSULT A LAWYER -- USE LEGAL (JURISTIC) MEANS --"                      
   70 "VOTE"                                                                   
   80 "TAKE SOME VIOLENT ACTION"                                               
   90 "OTHER"                                                                  
   98 "DONT KNOW"                                                              
   99 "NA" /                                                                   
   V42B                                                                        
   00 "NOTHING"                                                                
   10 "WORK THROUGH INFORMAL, UNORGANIZED GROUPS --"                           
   20 "WORK THROUGH POLITICAL PARTY"                                           
   30 "WORK THROUGH OTHER FORMAL, ORGANIZED GROUP --"                          
   40 "AS INDIVIDUAL TALK TO, WRITE LETTERS, CONTACT"                          
   50 "AS INDIVIDUAL TALK TO, WRITE LETTERS TO AUTHORI-"                       
   60 "CONSULT A LAWYER -- USE LEGAL (JURISTIC) MEANS --"                      
   70 "VOTE"                                                                   
   80 "TAKE SOME VIOLENT ACTION"                                               
   90 "OTHER"                                                                  
   98 "DONT KNOW"                                                              
   99 "NA" /                                                                   
   V42C                                                                        
   00 "NOTHING"                                                                
   10 "WORK THROUGH INFORMAL, UNORGANIZED GROUPS --"                           
   20 "WORK THROUGH POLITICAL PARTY"                                           
   30 "WORK THROUGH OTHER FORMAL, ORGANIZED GROUP --"                          
   40 "AS INDIVIDUAL TALK TO, WRITE LETTERS, CONTACT"                          
   50 "AS INDIVIDUAL TALK TO, WRITE LETTERS TO AUTHORI-"                       
   60 "CONSULT A LAWYER -- USE LEGAL (JURISTIC) MEANS --"                      
   70 "VOTE"                                                                   
   80 "TAKE SOME VIOLENT ACTION"                                               
   90 "OTHER"                                                                  
   98 "DONT KNOW"                                                              
   99 "NA" /                                                                   
   V43                                                                         
   1 "VERY LIKELY"                                                             
   2 "MODERATELY LIKELY"                                                       
   3 "SOMEWHAT UNLIKELY"                                                       
   4 "NOT AT ALL LIKELY, IMPOSSIBLE"                                           
   5 "LIKELY ONLY IF OTHERS JOINED IN"                                         
   7 "OTHER"                                                                   
   8 "DONT KNOW" /                                                             
   V44                                                                         
   1 "VERY LIKELY"                                                             
   2 "MODERATELY LIKELY"                                                       
   3 "SOMEWHAT UNLIKELY"                                                       
   4 "NOT AT ALL LIKELY, IMPOSSIBLE"                                           
   5 "DEPENDS ON THE ISSUE"                                                    
   7 "OTHER"                                                                   
   8 "DONT KNOW"                                                               
   9 "NA, REFUSED TO ANSWER" /                                                 
   V45                                                                         
   1 "OFTEN"                                                                   
   3 "ONCE OR TWICE, A FEW TIMES"                                              
   5 "NEVER"                                                                   
   7 "OTHER"                                                                   
   9 "DONT KNOW, NA" /                                                         
   V46                                                                         
   0 "NONE"                                                                    
   1 "WORKING THROUGH PERSONAL AND FAMILY CONNECTIONS"                         
   2 "WRITING TO GOVERNMENT OFFICIALS"                                         
   3 "GETTING PEOPLE INTERESTED -- FORMING A GROUP"                            
   4 "WORKING THROUGH A POLITICAL PARTY"                                       
   5 "ORGANIZING A PROTEST DEMONSTRATION"                                      
   7 "OTHER"                                                                   
   8 "DONT KNOW" /                                                             
   V47                                                                         
   0 "NONE"                                                                    
   1 "WORKING THROUGH PERSONAL AND FAMILY CONNECTIONS"                         
   2 "WRITING TO GOVERNMENT OFFICIALS"                                         
   3 "GETTING PEOPLE INTERESTED -- FORMING A GROUP"                            
   4 "WORKING THROUGH A POLITICAL PARTY"                                       
   5 "ORGANIZING A PROTEST DEMONSTRATION"                                      
   7 "OTHER"                                                                   
   8 "DONT KNOW" /                                                             
   V48                                                                         
   1 "GREAT EFFECT"                                                            
   3 "SOME EFFECT"                                                             
   5 "NONE"                                                                    
   7 "OTHER"                                                                   
   8 "DONT KNOW" /                                                             
   V49                                                                         
   1 "TEND TO IMPROVE"                                                         
   2 "SOMETIMES IMPROVE, SOMETIMES DONT"                                       
   3 "BETTER OFF WITHOUT THEM"                                                 
   4 "MAKE NO DIFFERENCE"                                                      
   7 "OTHER"                                                                   
   8 "DONT KNOW"                                                               
   0 "INAP" /                                                                  
   V50                                                                         
   1 "GREAT EFFECT"                                                            
   3 "SOME EFFECT"                                                             
   5 "NONE"                                                                    
   7 "OTHER"                                                                   
   8 "DONT KNOW" /                                                             
   V51                                                                         
   1 "TEND TO IMPROVE"                                                         
   2 "SOMETIMES IMPROVE, SOMETIMES DONT"                                       
   3 "BETTER OFF WITHOUT THEM"                                                 
   4 "MAKE NO DIFFERENCE"                                                      
   7 "OTHER"                                                                   
   8 "DONT KNOW"                                                               
   0 "INAP" /                                                                  
   V52A                                                                        
   00 "NOTHING"                                                                
   10 "POLITICAL-LEGAL SYSTEM"                                                 
   20 "SOCIAL LEGISLATION -- OLD AGE PENSIONS, AID TO"                         
   50 "CHARACTERISTICS OF THE PEOPLE -- HONESTY, SENSE OF"                     
   55 "SPIRITUAL VIRTUES, RELIGION"                                            
   60 "CONTRIBUTIONS TO ARTS, MUSIC, LITERATURE, EDUCATION"                    
   65 "CONTRIBUTIONS TO SCIENCE, MEDICINE, TECHNOLOGY"                         
   70 "PHYSICAL ATTRIBUTES OF THE COUNTRY -- NATURAL"                          
   80 "SPORTS(GERMANY ONLY)"                                                   
   85 "MOTHER TONGUE(GERMANY ONLY)"                                            
   90 "OTHER"                                                                  
   95 "DONT KNOW, NA" /                                                        
   V52B                                                                        
   00 "NOTHING"                                                                
   10 "POLITICAL-LEGAL SYSTEM"                                                 
   20 "SOCIAL LEGISLATION -- OLD AGE PENSIONS, AID TO"                         
   50 "CHARACTERISTICS OF THE PEOPLE -- HONESTY, SENSE OF"                     
   55 "SPIRITUAL VIRTUES, RELIGION"                                            
   60 "CONTRIBUTIONS TO ARTS, MUSIC, LITERATURE, EDUCATION"                    
   65 "CONTRIBUTIONS TO SCIENCE, MEDICINE, TECHNOLOGY"                         
   70 "PHYSICAL ATTRIBUTES OF THE COUNTRY -- NATURAL"                          
   80 "SPORTS(GERMANY ONLY)"                                                   
   85 "MOTHER TONGUE(GERMANY ONLY)"                                            
   90 "OTHER"                                                                  
   95 "DONT KNOW, NA" /                                                        
   V52C                                                                        
   00 "NOTHING"                                                                
   10 "POLITICAL-LEGAL SYSTEM"                                                 
   20 "SOCIAL LEGISLATION -- OLD AGE PENSIONS, AID TO"                         
   50 "CHARACTERISTICS OF THE PEOPLE -- HONESTY, SENSE OF"                     
   55 "SPIRITUAL VIRTUES, RELIGION"                                            
   60 "CONTRIBUTIONS TO ARTS, MUSIC, LITERATURE, EDUCATION"                    
   65 "CONTRIBUTIONS TO SCIENCE, MEDICINE, TECHNOLOGY"                         
   70 "PHYSICAL ATTRIBUTES OF THE COUNTRY -- NATURAL"                          
   80 "SPORTS(GERMANY ONLY)"                                                   
   85 "MOTHER TONGUE(GERMANY ONLY)"                                            
   90 "OTHER"                                                                  
   95 "DONT KNOW, NA" /                                                        
   V53A                                                                        
   1 "SOCIAL MOBILITY AND/OR EQUALITY"                                         
   2 "HIGHWAY AND TRANSPORTATION SYSTEM"                                       
   3 "NATIONAL CONSCIENCE, GENEROSITY TO OTHER NATIONS,"                       
   0 "NA (U" /                                                                 
   V53B                                                                        
   1 "SOCIAL MOBILITY AND/OR EQUALITY"                                         
   2 "HIGHWAY AND TRANSPORTATION SYSTEM"                                       
   3 "NATIONAL CONSCIENCE, GENEROSITY TO OTHER NATIONS,"                       
   0 "NA (U" /                                                                 
   V53C                                                                        
   1 "SOCIAL MOBILITY AND/OR EQUALITY"                                         
   2 "HIGHWAY AND TRANSPORTATION SYSTEM"                                       
   3 "NATIONAL CONSCIENCE, GENEROSITY TO OTHER NATIONS,"                       
   0 "NA (U" /                                                                 
   V54                                                                         
   1 "YES"                                                                     
   3 "IT DEPENDS"                                                              
   5 "NO"                                                                      
   7 "OTHER"                                                                   
   8 "DONT KNOW, NA" /                                                         
   V55                                                                         
   1 "SERIOUS CONSIDERATION"                                                   
   2 "LITTLE ATTENTION"                                                        
   3 "IGNORE POINT OF VIEW"                                                    
   4 "IT DEPENDS"                                                              
   5 "WOULDNT SAY ANYTHING"                                                    
   7 "OTHER"                                                                   
   8 "DONT KNOW" /                                                             
   V56                                                                         
   1 "NEEDED"                                                                  
   3 "DEPENDS"                                                                 
   5 "NOT NEEDED"                                                              
   7 "OTHER"                                                                   
   9 "DONT KNOW, NA"                                                           
   0 "INAP" /                                                                  
   V57                                                                         
   1 "A NATION NEEDS SOMEONE TO SYMBOLIZE IT TO FOREIGN"                       
   2 "PEOPLE GET REAL PLEASURE OUT OF FOLLOWING THE"                           
   3 "A NATION, LIKE A FAMILY, NEEDS A RESPECTED FIGURE"                       
   4 "THE QUEEN (PRESIDENT) IS NEEDED TO APPOINT THE PRIME"                    
   5 "A NATION NEEDS SOMEONE AT ITS HEAD WHO STANDS"                           
   7 "OTHER"                                                                   
   8 "DONT KNOW"                                                               
   0 "INAP" /                                                                  
   V58                                                                         
   1 "A NATION NEEDS SOMEONE TO SYMBOLIZE IT TO FOREIGN"                       
   2 "PEOPLE GET REAL PLEASURE OUT OF FOLLOWING THE"                           
   3 "A NATION, LIKE A FAMILY, NEEDS A RESPECTED FIGURE"                       
   4 "THE QUEEN (PRESIDENT) IS NEEDED TO APPOINT THE PRIME"                    
   5 "A NATION NEEDS SOMEONE AT ITS HEAD WHO STANDS"                           
   7 "OTHER"                                                                   
   8 "DONT KNOW"                                                               
   0 "INAP" /                                                                  
   V59                                                                         
   1 "HE SHOULD BE ABOVE PARTY CONFLICTS"                                      
   2 "HE SHOULD BE AN ACTIVE PARTY LEADER"                                     
   7 "OTHER"                                                                   
   9 "DONT KNOW, NA"                                                           
   0 "INAP" /                                                                  
   V60A                                                                        
   1 "PRACTICAL POLITICAL REASONS"                                             
   2 "DIGNITY OF OFFICE"                                                       
   3 "COMPETENCE NEEDS NO PARTY"                                               
   4 "SERVE EVERYONE, NOT ONE PARTY"                                           
   5 "INDEPENDENCE OF DECISION"                                                
   6 "GENERAL STATEMENTS NOT CLASSIFIABLE ABOVE"                               
   7 "OTHER"                                                                   
   9 "DONT KNOW, NA"                                                           
   0 "INAP" /                                                                  
   V60B                                                                        
   1 "PRACTICAL POLITICAL REASONS"                                             
   2 "DIGNITY OF OFFICE"                                                       
   3 "COMPETENCE NEEDS NO PARTY"                                               
   4 "SERVE EVERYONE, NOT ONE PARTY"                                           
   5 "INDEPENDENCE OF DECISION"                                                
   6 "GENERAL STATEMENTS NOT CLASSIFIABLE ABOVE"                               
   7 "OTHER"                                                                   
   9 "DONT KNOW, NA"                                                           
   0 "INAP" /                                                                  
   V60C                                                                        
   1 "PRACTICAL POLITICAL REASONS"                                             
   2 "DIGNITY OF OFFICE"                                                       
   3 "COMPETENCE NEEDS NO PARTY"                                               
   4 "SERVE EVERYONE, NOT ONE PARTY"                                           
   5 "INDEPENDENCE OF DECISION"                                                
   6 "GENERAL STATEMENTS NOT CLASSIFIABLE ABOVE"                               
   7 "OTHER"                                                                   
   9 "DONT KNOW, NA"                                                           
   0 "INAP" /                                                                  
   V61A                                                                        
   1 "PRACTICAL POLITICAL REASONS"                                             
   2 "DEBT TO PARTY"                                                           
   3 "STRENGTHEN PARTY"                                                        
   4 "DUTY OF OFFICE TO LEAD"                                                  
   5 "SHOULD BE PARTISAN"                                                      
   6 "GENERAL STATEMENTS NOT CLASSIFIABLE ABOVE"                               
   7 "OTHER"                                                                   
   9 "DONT KNOW, NA"                                                           
   0 "INAP" /                                                                  
   V61B                                                                        
   1 "PRACTICAL POLITICAL REASONS"                                             
   2 "DEBT TO PARTY"                                                           
   3 "STRENGTHEN PARTY"                                                        
   4 "DUTY OF OFFICE TO LEAD"                                                  
   5 "SHOULD BE PARTISAN"                                                      
   6 "GENERAL STATEMENTS NOT CLASSIFIABLE ABOVE"                               
   7 "OTHER"                                                                   
   9 "DONT KNOW, NA"                                                           
   0 "INAP" /                                                                  
   V61C                                                                        
   1 "PRACTICAL POLITICAL REASONS"                                             
   2 "DEBT TO PARTY"                                                           
   3 "STRENGTHEN PARTY"                                                        
   4 "DUTY OF OFFICE TO LEAD"                                                  
   5 "SHOULD BE PARTISAN"                                                      
   6 "GENERAL STATEMENTS NOT CLASSIFIABLE ABOVE"                               
   7 "OTHER"                                                                   
   9 "DONT KNOW, NA"                                                           
   0 "INAP" /                                                                  
   V62A                                                                        
   1 "TO WIN EQUALITY, LIBERTY, GREATER GUARANTEES"                            
   2 "SPECIFIC POLITICAL GOALS - TO DEPOSE THE DICTA-"                         
   3 "SPECIFIC ECONOMIC GOALS -- (EXCLUDING THE AGRARIAN"                      
   4 "RESPONSE REFERRING TO THE AGRARIAN QUESTION -"                           
   5 "SPECIFIC SOCIAL GOALS - TO WIN SOCIAL EQUALITY --"                       
   6 "TO WIN FREEDOM OF EXPRESSION, OF THINKING, OF"                           
   7 "TO DEFEND MEXICO FROM FOREIGNERS (OR SIMILAR"                            
   8 "UNFAVORABLE GOALS - TO ROB THE PEOPLE -- FOR THE"                        
   9 "OTHER"                                                                   
   0 "DONT KNOW, NO RESPONSE, NO ADDITIONAL RESPONSE" /                        
   V62B                                                                        
   1 "TO WIN EQUALITY, LIBERTY, GREATER GUARANTEES"                            
   2 "SPECIFIC POLITICAL GOALS - TO DEPOSE THE DICTA-"                         
   3 "SPECIFIC ECONOMIC GOALS -- (EXCLUDING THE AGRARIAN"                      
   4 "RESPONSE REFERRING TO THE AGRARIAN QUESTION -"                           
   5 "SPECIFIC SOCIAL GOALS - TO WIN SOCIAL EQUALITY --"                       
   6 "TO WIN FREEDOM OF EXPRESSION, OF THINKING, OF"                           
   7 "TO DEFEND MEXICO FROM FOREIGNERS (OR SIMILAR"                            
   8 "UNFAVORABLE GOALS - TO ROB THE PEOPLE -- FOR THE"                        
   9 "OTHER"                                                                   
   0 "DONT KNOW, NO RESPONSE, NO ADDITIONAL RESPONSE" /                        
   V62C                                                                        
   1 "TO WIN EQUALITY, LIBERTY, GREATER GUARANTEES"                            
   2 "SPECIFIC POLITICAL GOALS - TO DEPOSE THE DICTA-"                         
   3 "SPECIFIC ECONOMIC GOALS -- (EXCLUDING THE AGRARIAN"                      
   4 "RESPONSE REFERRING TO THE AGRARIAN QUESTION -"                           
   5 "SPECIFIC SOCIAL GOALS - TO WIN SOCIAL EQUALITY --"                       
   6 "TO WIN FREEDOM OF EXPRESSION, OF THINKING, OF"                           
   7 "TO DEFEND MEXICO FROM FOREIGNERS (OR SIMILAR"                            
   8 "UNFAVORABLE GOALS - TO ROB THE PEOPLE -- FOR THE"                        
   9 "OTHER"                                                                   
   0 "DONT KNOW, NO RESPONSE, NO ADDITIONAL RESPONSE" /                        
   V63                                                                         
   1 "THE IDEALS HAVE BEEN REALIZED"                                           
   2 "PEOPLE ARE STILL WORKING TO REALIZE THEM"                                
   3 "THE IDEALS HAVE BEEN FORGOTTEN"                                          
   7 "OTHER"                                                                   
   8 "DONT KNOW"                                                               
   0 "INAP" /                                                                  
   V64                                                                         
   1 "YES"                                                                     
   3 "IT DEPENDS"                                                              
   5 "NO"                                                                      
   7 "OTHER"                                                                   
   9 "DONT KNOW, NA" /                                                         
   V65                                                                         
   1 "SERIOUS CONSIDERATION"                                                   
   2 "LITTLE ATTENTION"                                                        
   3 "IGNORE POINT OF VIEW"                                                    
   4 "IT DEPENDS"                                                              
   5 "WOULDNT SAY ANYTHING"                                                    
   7 "OTHER"                                                                   
   9 "DONT KNOW, NA" /                                                         
/* V66                                                                         
/* UNITED STATES                                                               
/* 10 "DEMOCRATIC PARTY SUPPORTER"                                             
/* 20 "REPUBLICAN PARTY SUPPORTER"                                             
/* 30 "INDEPENDENT"                                                            
/* 90 "SUPPORTS OTHER PARTY"                                                   
/* 95 "DONT KNOW, NA"                                                          
/* 00 "NO, SUPPORTS NO PARTY"                                                  
/* UNITED KINGDOM                                                              
/* 10 "CONSERVATIVE"                                                           
/* 20 "LABOUR"                                                                 
/* 30 "LIBERAL"                                                                
/* 90 "OTHER"                                                                  
/* 97 "REFUSED TO ANSWER"                                                      
/* 98 "DONT KNOW"                                                              
/* 00 "NONE"                                                                   
/* GERMANY                                                                     
/* 10 "CDU/CSU"                                                                
/* 20 "SPD"                                                                    
/* 30 "FDP"                                                                    
/* 40 "DP"                                                                     
/* 90 "OTHER"                                                                  
/* 97 "REFUSED TO ANSWER"                                                      
/* 98 "DONT KNOW"                                                              
/* 00 "NONE"                                                                   
/* ITALY                                                                       
/* 10 "DC"                                                                     
/* 20 "PCI"                                                                    
/* 30 "PSI"                                                                    
/* 40 "PSDI"                                                                   
/* 50 "PRI"                                                                    
/* 60 "PLI"                                                                    
/* 70 "MON"                                                                    
/* 80 "MSI"                                                                    
/* 90 "OTHER PARTY"                                                            
/* 97 "REFUSED TO ANSWER"                                                      
/* 98 "DONT KNOW"                                                              
/* 00 "NO PARTY"                                                               
/* MEXICO                                                                      
/* 10 "PRI"                                                                    
/* 20 "PAN"                                                                    
/* 30 "PP"                                                                     
/* 90 "OTHER"                                                                  
/* 97 "REFUSED TO ANSWER"                                                      
/* 98 "DONT KNOW"                                                              
/* 00 "NONE" /                                                                 
   V67                                                                         
   1 "LEANS TOWARD DEMOCRATIC PARTY"                                           
   2 "LEANS TOWARD REPUBLICAN PARTY"                                           
   5 "LEANS TOWARD NO PARTY"                                                   
   7 "LEANS TOWARD OTHER PARTY"                                                
   9 "DONT KNOW, NA"                                                           
   0 "INAP" /                                                                  
   V68                                                                         
   0 "NO, NONE"                                                                
   1 "DEMOCRATIC CLUBS OR ORGANIZATIONS"                                       
   2 "REPUBLICAN CLUBS OR ORGANIZATIONS"                                       
   3 "CANDIDATE ORIENTED NON-PARTISAN"                                         
   4 "NON-PARTISAN AND NOT CANDIDATE ORIENTED"                                 
   5 "MISCELLANEOUS NON-POLITICAL GROUPS THAT SOMETIMES"                       
   7 "VAGUE OR MISCELLANEOUS OR UNKNOWN"                                       
   8 "DONT KNOW, NA"                                                           
   9 "INAP" /                                                                  
   V69                                                                         
   1 "YES, HAVE BEEN ACTIVE"                                                   
   5 "NO"                                                                      
   9 "DONT KNOW, NA"                                                           
   0 "INAP" /                                                                  
   V73                                                                         
   1 "FEW OR NONE SUPPORT THE SAME PARTY"                                      
   2 "SOME SUPPORT THE SAME PARTY"                                             
   3 "MOST SUPPORT SAME PARTY"                                                 
   4 "ALL SUPPORT SAME PARTY"                                                  
   7 "OTHER"                                                                   
   8 "DONT KNOW"                                                               
   9 "REFUSED TO ANSWER"                                                       
   0 "INAP" /                                                                  
   V74                                                                         
   1 "NONE SUPPORT A PARTY"                                                    
   2 "FEW SUPPORT A PARTY"                                                     
   3 "SOME SUPPORT A PARTY"                                                    
   4 "MOST SUPPORT A PARTY"                                                    
   7 "OTHER"                                                                   
   8 "DONT KNOW"                                                               
   9 "REFUSED TO ANSWER"                                                       
   0 "INAP" /                                                                  
   V79                                                                         
   1 "USUALLY KNOW DEFINITELY"                                                 
   2 "SOMETIMES HAVE DOUBTS"                                                   
   3 "USUALLY HAVE DOUBTS"                                                     
   5 "DONT VOTE (AT ALL OR VOTE ONLY IN LOCAL ELECTIONS)"                      
   8 "DONT KNOW"                                                               
   0 "INAP" /                                                                  
   V80                                                                         
   1 "I GET A FEELING OF SATISFACTION OUT OF IT"                               
   2 "I DO IT ONLY BECAUSE IT IS MY DUTY"                                      
   3 "I FEEL ANNOYED, ITS A WASTE OF TIME"                                     
   5 "I DONT FEEL ANYTHING IN PARTICULAR"                                      
   7 "OTHER"                                                                   
   8 "DONT KNOW"                                                               
   0 "INAP" /                                                                  
   V81                                                                         
   1 "MUCH"                                                                    
   3 "LITTLE"                                                                  
   5 "NONE"                                                                    
   7 "OTHER"                                                                   
   8 "DONT KNOW" /                                                             
   V82                                                                         
   1 "NEEDED"                                                                  
   3 "BETTER OFF WITHOUT IT"                                                   
   5 "IT DEPENDS"                                                              
   7 "OTHER"                                                                   
   8 "DONT KNOW" /                                                             
   V83                                                                         
   1 "OFTEN"                                                                   
   3 "SOMETIMES"                                                               
   5 "NEVER"                                                                   
   7 "OTHER"                                                                   
   8 "DONT KNOW" /                                                             
   V84                                                                         
   1 "OFTEN"                                                                   
   3 "SOMETIMES"                                                               
   5 "NEVER"                                                                   
   7 "OTHER"                                                                   
   8 "DONT KNOW" /                                                             
   V85                                                                         
   1 "OFTEN"                                                                   
   3 "SOMETIMES"                                                               
   5 "NEVER"                                                                   
   7 "OTHER"                                                                   
   8 "DONT KNOW" /                                                             
   V86                                                                         
   1 "PLEASED"                                                                 
   3 "MAKES NO DIFFERENCE"                                                     
   5 "DISPLEASED"                                                              
   7 "OTHER"                                                                   
   8 "DONT KNOW" /                                                             
   V87                                                                         
   1 "PLEASED"                                                                 
   3 "MAKES NO DIFFERENCE"                                                     
   5 "DISPLEASED"                                                              
   7 "OTHER"                                                                   
   8 "DONT KNOW" /                                                             
   V88                                                                         
   1 "PLEASED"                                                                 
   3 "MAKES NO DIFFERENCE"                                                     
   5 "DISPLEASED"                                                              
   7 "OTHER"                                                                   
   8 "DONT KNOW"                                                               
   0 "INAP" /                                                                  
   V89                                                                         
   1 "PLEASED"                                                                 
   3 "MAKES NO DIFFERENCE"                                                     
   5 "DISPLEASED"                                                              
   7 "OTHER"                                                                   
   8 "DONT KNOW"                                                               
   0 "INAP" /                                                                  
   V90A                                                                        
   11 "PEOPLE INTERESTED IN NATIONAL STRENGTH AND"                             
   12 "SELFISH PEOPLE--INTERESTED IN THEIR OWN WELFARE"                        
   13 "INTELLIGENT PEOPLE"                                                     
   14 "RELIGIOUS PEOPLE"                                                       
   15 "BETRAYERS OF FREEDOM AND THE COUNTRYS WELFARE"                          
   16 "IGNORANT AND MISGUIDED PEOPLE"                                          
   17 "FASCISTS, MILITARISTS"                                                  
   18 "PEOPLE INTERESTED IN THE WELFARE OF HUMANITY"                           
   19 "ATHEISTS, GODLESS PEOPLE"                                               
   20 "ALL SORTS, CANT GENERALIZE"                                             
   90 "OTHER"                                                                  
   98 "DONT KNOW" /                                                            
   V90B                                                                        
   11 "PEOPLE INTERESTED IN NATIONAL STRENGTH AND"                             
   12 "SELFISH PEOPLE--INTERESTED IN THEIR OWN WELFARE"                        
   13 "INTELLIGENT PEOPLE"                                                     
   14 "RELIGIOUS PEOPLE"                                                       
   15 "BETRAYERS OF FREEDOM AND THE COUNTRYS WELFARE"                          
   16 "IGNORANT AND MISGUIDED PEOPLE"                                          
   17 "FASCISTS, MILITARISTS"                                                  
   18 "PEOPLE INTERESTED IN THE WELFARE OF HUMANITY"                           
   19 "ATHEISTS, GODLESS PEOPLE"                                               
   20 "ALL SORTS, CANT GENERALIZE"                                             
   90 "OTHER"                                                                  
   98 "DONT KNOW" /                                                            
   V90C                                                                        
   11 "PEOPLE INTERESTED IN NATIONAL STRENGTH AND"                             
   12 "SELFISH PEOPLE--INTERESTED IN THEIR OWN WELFARE"                        
   13 "INTELLIGENT PEOPLE"                                                     
   14 "RELIGIOUS PEOPLE"                                                       
   15 "BETRAYERS OF FREEDOM AND THE COUNTRYS WELFARE"                          
   16 "IGNORANT AND MISGUIDED PEOPLE"                                          
   17 "FASCISTS, MILITARISTS"                                                  
   18 "PEOPLE INTERESTED IN THE WELFARE OF HUMANITY"                           
   19 "ATHEISTS, GODLESS PEOPLE"                                               
   20 "ALL SORTS, CANT GENERALIZE"                                             
   90 "OTHER"                                                                  
   98 "DONT KNOW" /                                                            
   V91A                                                                        
   11 "PEOPLE INTERESTED IN NATIONAL STRENGTH AND"                             
   12 "SELFISH PEOPLE -- INTERESTED IN THEIR OWN WELFARE"                      
   13 "INTELLIGENT PEOPLE"                                                     
   14 "RELIGIOUS PEOPLE"                                                       
   15 "BETRAYERS OF FREEDOM AND THE COUNTRYS WELFARE"                          
   16 "IGNORANT AND MISGUIDED PEOPLE"                                          
   17 "FASCISTS, MILITARISTS"                                                  
   18 "PEOPLE INTERESTED IN THE WELFARE OF HUMANITY"                           
   19 "ATHEISTS, GODLESS PEOPLE"                                               
   20 "ALL SORTS, CANT GENERALIZE"                                             
   90 "OTHER"                                                                  
   98 "DONT KNOW" /                                                            
   V91B                                                                        
   11 "PEOPLE INTERESTED IN NATIONAL STRENGTH AND"                             
   12 "SELFISH PEOPLE -- INTERESTED IN THEIR OWN WELFARE"                      
   13 "INTELLIGENT PEOPLE"                                                     
   14 "RELIGIOUS PEOPLE"                                                       
   15 "BETRAYERS OF FREEDOM AND THE COUNTRYS WELFARE"                          
   16 "IGNORANT AND MISGUIDED PEOPLE"                                          
   17 "FASCISTS, MILITARISTS"                                                  
   18 "PEOPLE INTERESTED IN THE WELFARE OF HUMANITY"                           
   19 "ATHEISTS, GODLESS PEOPLE"                                               
   20 "ALL SORTS, CANT GENERALIZE"                                             
   90 "OTHER"                                                                  
   98 "DONT KNOW" /                                                            
   V91C                                                                        
   11 "PEOPLE INTERESTED IN NATIONAL STRENGTH AND"                             
   12 "SELFISH PEOPLE -- INTERESTED IN THEIR OWN WELFARE"                      
   13 "INTELLIGENT PEOPLE"                                                     
   14 "RELIGIOUS PEOPLE"                                                       
   15 "BETRAYERS OF FREEDOM AND THE COUNTRYS WELFARE"                          
   16 "IGNORANT AND MISGUIDED PEOPLE"                                          
   17 "FASCISTS, MILITARISTS"                                                  
   18 "PEOPLE INTERESTED IN THE WELFARE OF HUMANITY"                           
   19 "ATHEISTS, GODLESS PEOPLE"                                               
   20 "ALL SORTS, CANT GENERALIZE"                                             
   90 "OTHER"                                                                  
   98 "DONT KNOW" /                                                            
   V92A                                                                        
   11 "PEOPLE INTERESTED IN NATIONAL STRENGTH AND"                             
   12 "SELFISH PEOPLE -- INTERESTED IN THEIR OWN WELFARE"                      
   13 "INTELLIGENT PEOPLE"                                                     
   14 "RELIGIOUS PEOPLE"                                                       
   15 "BETRAYERS OF FREEDOM AND THE COUNTRYS WELFARE"                          
   16 "IGNORANT AND MISGUIDED PEOPLE"                                          
   17 "FASCISTS, MILITARISTS"                                                  
   18 "PEOPLE INTERESTED IN THE WELFARE OF HUMANITY"                           
   19 "ATHEISTS, GODLESS PEOPLE"                                               
   20 "ALL SORTS, CANT GENERALIZE"                                             
   90 "OTHER"                                                                  
   91 "INAP"                                                                   
   98 "DONT KNOW" /                                                            
   V92B                                                                        
   11 "PEOPLE INTERESTED IN NATIONAL STRENGTH AND"                             
   12 "SELFISH PEOPLE -- INTERESTED IN THEIR OWN WELFARE"                      
   13 "INTELLIGENT PEOPLE"                                                     
   14 "RELIGIOUS PEOPLE"                                                       
   15 "BETRAYERS OF FREEDOM AND THE COUNTRYS WELFARE"                          
   16 "IGNORANT AND MISGUIDED PEOPLE"                                          
   17 "FASCISTS, MILITARISTS"                                                  
   18 "PEOPLE INTERESTED IN THE WELFARE OF HUMANITY"                           
   19 "ATHEISTS, GODLESS PEOPLE"                                               
   20 "ALL SORTS, CANT GENERALIZE"                                             
   90 "OTHER"                                                                  
   91 "INAP"                                                                   
   98 "DONT KNOW" /                                                            
   V92C                                                                        
   11 "PEOPLE INTERESTED IN NATIONAL STRENGTH AND"                             
   12 "SELFISH PEOPLE -- INTERESTED IN THEIR OWN WELFARE"                      
   13 "INTELLIGENT PEOPLE"                                                     
   14 "RELIGIOUS PEOPLE"                                                       
   15 "BETRAYERS OF FREEDOM AND THE COUNTRYS WELFARE"                          
   16 "IGNORANT AND MISGUIDED PEOPLE"                                          
   17 "FASCISTS, MILITARISTS"                                                  
   18 "PEOPLE INTERESTED IN THE WELFARE OF HUMANITY"                           
   19 "ATHEISTS, GODLESS PEOPLE"                                               
   20 "ALL SORTS, CANT GENERALIZE"                                             
   90 "OTHER"                                                                  
   91 "INAP"                                                                   
   98 "DONT KNOW" /                                                            
   V93A                                                                        
   11 "PEOPLE INTERESTED IN NATIONAL STRENGTH AND"                             
   12 "SELFISH PEOPLE -- INTERESTED IN THEIR OWN WELFARE"                      
   13 "INTELLIGENT PEOPLE"                                                     
   14 "RELIGIOUS PEOPLE"                                                       
   15 "BETRAYERS OF FREEDOM AND THE COUNTRYS WELFARE"                          
   16 "IGNORANT AND MISGUIDED PEOPLE"                                          
   17 "FASCISTS, MILITARISTS"                                                  
   18 "PEOPLE INTERESTED IN THE WELFARE OF HUMANITY"                           
   19 "ATHEISTS, GODLESS PEOPLE"                                               
   20 "ALL SORTS, CANT GENERALIZE"                                             
   90 "OTHER"                                                                  
   91 "INAP"                                                                   
   98 "DONT KNOW" /                                                            
   V93B                                                                        
   11 "PEOPLE INTERESTED IN NATIONAL STRENGTH AND"                             
   12 "SELFISH PEOPLE -- INTERESTED IN THEIR OWN WELFARE"                      
   13 "INTELLIGENT PEOPLE"                                                     
   14 "RELIGIOUS PEOPLE"                                                       
   15 "BETRAYERS OF FREEDOM AND THE COUNTRYS WELFARE"                          
   16 "IGNORANT AND MISGUIDED PEOPLE"                                          
   17 "FASCISTS, MILITARISTS"                                                  
   18 "PEOPLE INTERESTED IN THE WELFARE OF HUMANITY"                           
   19 "ATHEISTS, GODLESS PEOPLE"                                               
   20 "ALL SORTS, CANT GENERALIZE"                                             
   90 "OTHER"                                                                  
   91 "INAP"                                                                   
   98 "DONT KNOW" /                                                            
   V93C                                                                        
   11 "PEOPLE INTERESTED IN NATIONAL STRENGTH AND"                             
   12 "SELFISH PEOPLE -- INTERESTED IN THEIR OWN WELFARE"                      
   13 "INTELLIGENT PEOPLE"                                                     
   14 "RELIGIOUS PEOPLE"                                                       
   15 "BETRAYERS OF FREEDOM AND THE COUNTRYS WELFARE"                          
   16 "IGNORANT AND MISGUIDED PEOPLE"                                          
   17 "FASCISTS, MILITARISTS"                                                  
   18 "PEOPLE INTERESTED IN THE WELFARE OF HUMANITY"                           
   19 "ATHEISTS, GODLESS PEOPLE"                                               
   20 "ALL SORTS, CANT GENERALIZE"                                             
   90 "OTHER"                                                                  
   91 "INAP"                                                                   
   98 "DONT KNOW" /                                                            
   V94                                                                         
   1 "PROBABLY HAPPEN"                                                         
   3 "MIGHT HAPPEN"                                                            
   5 "PROBABLY WOULDNT HAPPEN"                                                 
   7 "OTHER"                                                                   
   8 "DONT KNOW" /                                                             
   V95                                                                         
   1 "PROBABLY HAPPEN"                                                         
   3 "MIGHT HAPPEN"                                                            
   5 "PROBABLY WOULDNT HAPPEN"                                                 
   7 "OTHER"                                                                   
   8 "DONT KNOW" /                                                             
   V96                                                                         
   1 "PROBABLY HAPPEN"                                                         
   3 "MIGHT HAPPEN"                                                            
   5 "PROBABLY WOULDNT HAPPEN"                                                 
   7 "OTHER"                                                                   
   8 "DONT KNOW"                                                               
   0 "INAP" /                                                                  
   V97                                                                         
   1 "PROBABLY HAPPEN"                                                         
   3 "MIGHT HAPPEN"                                                            
   5 "PROBABLY WOULDNT HAPPEN"                                                 
   7 "OTHER"                                                                   
   8 "DONT KNOW"                                                               
   0 "INAP" /                                                                  
   V98                                                                         
   1 "PROBABLY HAPPEN"                                                         
   3 "MIGHT HAPPEN"                                                            
   5 "PROBABLY WOULDNT HAPPEN"                                                 
   7 "OTHER"                                                                   
   8 "DONT KNOW"                                                               
   0 "INAP" /                                                                  
   V99                                                                         
   0 "NONE CORRECT"                                                            
   1 "ONE CORRECT"                                                             
   2 "TWO CORRECT"                                                             
   3 "THREE CORRECT"                                                           
   4 "FOUR CORRECT"                                                            
   5 "FIVE CORRECT"                                                            
   6 "SIX CORRECT"                                                             
   7 "SEVEN CORRECT"                                                           
   9 "DONT KNOW, NA" /                                                         
   V100                                                                        
   1 "BY AND LARGE, FATHER MADE THE DECISION"                                  
   2 "BY AND LARGE, MOTHER MADE THE DECISION"                                  
   3 "BOTH PARENTS ACTED TOGETHER"                                             
   4 "EACH PARENT ACTED INDIVIDUALLY"                                          
   7 "OTHER"                                                                   
   9 "DONT KNOW, DONT REMEMBER, NA" /                                          
   V101                                                                        
   1 "BY AND LARGE, FATHER MADE THE DECISION"                                  
   2 "BY AND LARGE, MOTHER MADE THE DECISION"                                  
   3 "BOTH PARENTS ACTED TOGETHER"                                             
   4 "EACH PARENT ACTED INDIVIDUALLY"                                          
   7 "OTHER"                                                                   
   9 "DONT KNOW, DONT REMEMBER, NA" /                                          
   V102                                                                        
   1 "BY AND LARGE, HUSBAND MAKES THE DECISION"                                
   2 "BY AND LARGE, WIFE MAKES THE DECISION"                                   
   3 "BOTH ACT TOGETHER"                                                       
   4 "EACH ACTS INDIVIDUALLY"                                                  
   7 "OTHER"                                                                   
   9 "DONT KNOW, NA"                                                           
   0 "INAP" /                                                                  
   V103                                                                        
   1 "BY AND LARGE, HUSBAND MAKES THE DECISION"                                
   2 "BY AND LARGE, WIFE MAKES THE DECISION"                                   
   3 "BOTH ACT TOGETHER"                                                       
   4 "EACH ACTS INDIVIDUALLY"                                                  
   5 "NO CHILDREN"                                                             
   7 "OTHER"                                                                   
   8 "DONT KNOW"                                                               
   9 "NA"                                                                      
   0 "INAP" /                                                                  
   V104                                                                        
   1 "BY AND LARGE, HUSBAND MAKES THE DECISION"                                
   2 "BY AND LARGE, WIFE MAKES THE DECISION"                                   
   3 "BOTH ACT TOGETHER"                                                       
   4 "EACH ACTS INDIVIDUALLY"                                                  
   6 "DONT VOTE (ONLY U"                                                       
   7 "OTHER"                                                                   
   8 "DONT KNOW"                                                               
   9 "NA"                                                                      
   0 "INAP" /                                                                  
   V105                                                                        
   1 "VERY WELL"                                                               
   2 "FAIRLY WELL"                                                             
   3 "NOT SO WELL"                                                             
   5 "NOT AT ALL"                                                              
   7 "OTHER"                                                                   
   8 "DONT KNOW, DONT REMEMBER"                                                
   0 "INAP" /                                                                  
   V106                                                                        
   1 "MUCH INFLUENCE"                                                          
   3 "SOME"                                                                    
   5 "NONE AT ALL"                                                             
   7 "OTHER"                                                                   
   8 "DONT KNOW, DONT REMEMBER"                                                
   0 "INAP" /                                                                  
   V107                                                                        
   1 "FELT FREE"                                                               
   3 "FELT A LITTLE UNEASY"                                                    
   5 "IT WAS BETTER NOT TO COMPLAIN"                                           
   7 "OTHER"                                                                   
   8 "DONT KNOW, DONT REMEMBER"                                                
   0 "INAP" /                                                                  
   V108                                                                        
   1 "A LOT"                                                                   
   3 "SOME"                                                                    
   5 "NONE"                                                                    
   6 "DIDNT COMPLAIN (U"                                                       
   7 "OTHER"                                                                   
   8 "DONT KNOW, DONT REMEMBER"                                                
   0 "INAP" /                                                                  
   V109                                                                        
   1 "OFTEN"                                                                   
   3 "ONCE IN A WHILE"                                                         
   5 "NEVER"                                                                   
   7 "OTHER"                                                                   
   8 "DONT KNOW, DONT REMEMBER"                                                
   0 "INAP" /                                                                  
   V110                                                                        
   1 "SATISFIED"                                                               
   3 "SO-SO"                                                                   
   5 "DISSATISFIED"                                                            
   7 "OTHER"                                                                   
   8 "DONT KNOW"                                                               
   0 "INAP" /                                                                  
   V111                                                                        
   1 "GREAT DEAL"                                                              
   3 "SOME"                                                                    
   4 "LITTLE"                                                                  
   5 "NONE"                                                                    
   7 "OTHER"                                                                   
   8 "DONT KNOW" /                                                             
/* V112                                                                        
/* UNITED STATES                                                               
/* 0 "NO SCHOOLING"                                                            
/* 1 "ONE - FOUR YEARS"                                                        
/* 2 "FIVE - SEVEN YEARS"                                                      
/* 3 "EIGHT YEARS"                                                             
/* 4 "NINE - ELEVEN YEARS"                                                     
/* 5 "TWELVE YEARS"                                                            
/* 6 "ONE - THREE COLLEGE"                                                     
/* 7 "COLLEGE GRADUATE"                                                        
/* ITALY                                                                       
/* 0 "NONE"                                                                    
/* 2 "ELEMENTARY"                                                              
/* 3 "JUNIOR HIGH"                                                             
/* 5 "SENIOR HIGH"                                                             
/* 6 "UNIVERSITY"                                                              
/* 7 "OTHER"                                                                   
/* UNITED KINGDOM, GERMANY, MEXICO                                             
/* 0 "NO SCHOOLING -- NONE AT ALL"                                             
/* 2 "PRIMARY SCHOOL"                                                          
/* 5 "PREPARATORY SCHOOL OR SECONDARY SCHOOL"                                  
/* 6 "ADVANCED TECHNOLOGICAL SCHOOL OR UNIVERSITY"                             
/* 7 "OTHER"                                                                   
/* 8 "DONT KNOW" /                                                             
/* V113                                                                        
/* 1 "PUBLIC"                                                                  
/* 2 "PRIVATE"                                                                 
/* 3 "CHURCH"                                                                  
/* 7 "OTHER"                                                                   
/* 8 "DONT KNOW"                                                               
/* 0 "INAP"                                                                    
/* ENGLAND ONLY                                                                
/* 1 "STATE"                                                                   
/* 2 "PUBLIC"                                                                  
/* 3 "CHURCH"                                                                  
/* 7 "OTHER"                                                                   
/* 8 "DONT KNOW" /                                                             
/* V114                                                                        
/* UNITED STATES                                                               
/* 0 "NO SCHOOLING"                                                            
/* 1 "ONE - FOUR YEARS"                                                        
/* 2 "FIVE - SEVEN YEARS"                                                      
/* 3 "EIGHT YEARS"                                                             
/* 4 "NINE - ELEVEN YEARS"                                                     
/* 5 "TWELVE YEARS"                                                            
/* 6 "ONE - THREE COLLEGE"                                                     
/* 7 "COLLEGE GRADUATE"                                                        
/* 8 "DONT KNOW, NA"                                                           
/* 9 "INAP"                                                                    
/* ITALY                                                                       
/* 0 "NONE"                                                                    
/* 2 "ELEMENTARY"                                                              
/* 3 "JUNIOR HIGH"                                                             
/* 5 "SENIOR HIGH"                                                             
/* 6 "UNIVERSITY"                                                              
/* 7 "OTHER"                                                                   
/* 8 "DONT KNOW"                                                               
/* 9 "INAP"                                                                    
/* UNITED KINGDOM,GERMANY, MEXICO                                              
/* 0 "NO SCHOOLING -- NONE AT ALL"                                             
/* 2 "PRIMARY SCHOOL"                                                          
/* 5 "SECONDARY SCHOOL OR PREPARATORY SCHOOL"                                  
/* 6 "UNIVERSITY OR ADVANCED TECHNOLOGICAL SCHOOL"                             
/* 7 "OTHER"                                                                   
/* 8 "DONT KNOW"                                                               
/* 9 "INAP" /                                                                  
   V115                                                                        
   1 "A LOT"                                                                   
   2 "SOME, BUT CANT REMEMBER HOW MUCH"                                        
   3 "A LITTLE"                                                                
   5 "NONE"                                                                    
   7 "OTHER"                                                                   
   8 "DONT KNOW, DONT REMEMBER"                                                
   0 "INAP" /                                                                  
   V116A                                                                       
   1 "HAVE FAITH IN LEADERS"                                                   
   2 "OBEY THE LAW"                                                            
   3 "HOW THE GOVERNMENT IS RUN"                                               
   4 "LOVE YOUR COUNTRY"                                                       
   7 "OTHER"                                                                   
   8 "DONT KNOW, DONT REMEMBER"                                                
   0 "INAP" /                                                                  
   V116B                                                                       
   1 "HAVE FAITH IN LEADERS"                                                   
   2 "OBEY THE LAW"                                                            
   3 "HOW THE GOVERNMENT IS RUN"                                               
   4 "LOVE YOUR COUNTRY"                                                       
   7 "OTHER"                                                                   
   8 "DONT KNOW, DONT REMEMBER"                                                
   0 "INAP" /                                                                  
   V116C                                                                       
   1 "HAVE FAITH IN LEADERS"                                                   
   2 "OBEY THE LAW"                                                            
   3 "HOW THE GOVERNMENT IS RUN"                                               
   4 "LOVE YOUR COUNTRY"                                                       
   7 "OTHER"                                                                   
   8 "DONT KNOW, DONT REMEMBER"                                                
   0 "INAP" /                                                                  
   V117                                                                        
   1 "A LOT"                                                                   
   3 "SOME"                                                                    
   5 "NONE"                                                                    
   7 "OTHER"                                                                   
   8 "DONT KNOW, DONT REMEMBER"                                                
   0 "INAP" /                                                                  
   V118                                                                        
   1 "YES"                                                                     
   5 "NO"                                                                      
   7 "OTHER"                                                                   
   8 "DONT KNOW, DONT REMEMBER"                                                
   9 "NA"                                                                      
   0 "INAP" /                                                                  
   V119                                                                        
   1 "A LOT OF INTEREST"                                                       
   3 "SOME INTEREST"                                                           
   4 "DEPENDED ON TEACHER"                                                     
   5 "NONE"                                                                    
   7 "OTHER"                                                                   
   8 "DONT KNOW, DONT REMEMBER"                                                
   0 "INAP" /                                                                  
   V120                                                                        
   1 "ALL WERE TREATED FAIRLY"                                                 
   3 "SOME RECEIVED BETTER TREATMENT"                                          
   5 "DEPENDED ON THE TEACHER"                                                 
   7 "OTHER"                                                                   
   8 "DONT KNOW, DONT REMEMBER"                                                
   0 "INAP" /                                                                  
   V121                                                                        
   1 "FELT FREE"                                                               
   3 "A BIT UNEASY"                                                            
   5 "BETTER NOT TO TALK TO THE TEACHER"                                       
   7 "OTHER"                                                                   
   8 "DONT KNOW, DONT REMEMBER"                                                
   0 "INAP" /                                                                  
   V122                                                                        
   1 "A LOT"                                                                   
   3 "SOME"                                                                    
   5 "NONE"                                                                    
   7 "OTHER"                                                                   
   8 "DONT KNOW, DONT REMEMBER"                                                
   0 "INAP" /                                                                  
   V123                                                                        
   1 "OFTEN"                                                                   
   3 "OCCASIONALLY"                                                            
   5 "NEVER"                                                                   
   7 "OTHER"                                                                   
   8 "DONT KNOW, DONT REMEMBER, NA (U"                                         
   0 "INAP" /                                                                  
   V124                                                                        
   1 "PARTICIPATED A GREAT DEAL"                                               
   3 "SOME"                                                                    
   4 "VERY LITTLE"                                                             
   5 "NOT AT ALL"                                                              
   7 "OTHER"                                                                   
   8 "DONT KNOW, DONT REMEMBER"                                                
   0 "INAP" /                                                                  
   V125                                                                        
   1 "A GREAT DEAL"                                                            
   3 "SOME"                                                                    
   5 "NOT AT ALL"                                                              
   7 "OTHER"                                                                   
   8 "DONT KNOW, DONT REMEMBER"                                                
   0 "INAP" /                                                                  
   V126                                                                        
   1 "YES"                                                                     
   3 "IT DEPENDS"                                                              
   5 "NO"                                                                      
   7 "OTHER"                                                                   
   8 "DONT KNOW, DONT REMEMBER"                                                
   0 "INAP" /                                                                  
   V127                                                                        
   1 "AGREE"                                                                   
   5 "DISAGREE"                                                                
   8 "DONT KNOW, OTHER"                                                        
   9 "NA" /                                                                    
   V128                                                                        
   1 "AGREE"                                                                   
   5 "DISAGREE"                                                                
   8 "DONT KNOW, OTHER"                                                        
   9 "NA" /                                                                    
   V129                                                                        
   1 "AGREE"                                                                   
   5 "DISAGREE"                                                                
   8 "DONT KNOW, OTHER"                                                        
   9 "NA" /                                                                    
   V130                                                                        
   1 "AGREE"                                                                   
   5 "DISAGREE"                                                                
   8 "DONT KNOW, OTHER"                                                        
   9 "NA" /                                                                    
   V131                                                                        
   1 "AGREE"                                                                   
   5 "DISAGREE"                                                                
   8 "DONT KNOW, OTHER"                                                        
   9 "NA" /                                                                    
   V132                                                                        
   1 "AGREE"                                                                   
   5 "DISAGREE"                                                                
   8 "DONT KNOW, OTHER"                                                        
   9 "NA" /                                                                    
   V133                                                                        
   1 "AGREE"                                                                   
   5 "DISAGREE"                                                                
   8 "DONT KNOW, OTHER"                                                        
   9 "NA" /                                                                    
   V134                                                                        
   1 "AGREE"                                                                   
   5 "DISAGREE"                                                                
   8 "DONT KNOW, OTHER"                                                        
   9 "NA" /                                                                    
   V135                                                                        
   0 "NONE NAMED OR NONE CORRECT, DK"                                          
   1 "ONE CORRECT"                                                             
   2 "TWO CORRECT"                                                             
   3 "THREE CORRECT"                                                           
   4 "FOUR CORRECT"                                                            
   5 "FIVE CORRECT"                                                            
   7 "OTHER"                                                                   
   9 "DONT KNOW, NA" /                                                         
   V136                                                                        
   1 "EMPLOYED"                                                                
   2 "UNEMPLOYED"                                                              
   3 "RETIRED"                                                                 
   4 "STUDENT"                                                                 
   5 "KEEP HOUSE ONLY"                                                         
   6 "WORKING HOUSEWIFE"                                                       
   7 "DISABLED"                                                                
   9 "DONT KNOW, NA" /                                                         
   V137                                                                        
   19 "PROFESSIONAL"                                                           
   21 "HIGHER MANAGEMENT (UNITED STATES)"                                      
   22 "SMALL BUSINESS (OWNER, PARTNER) -- (CODED FOR ALL"                      
   28 "PROPRIETOR (U"                                                          
   39 "WHITE COLLAR WORKER (U"                                                 
   49 "SKILLED WORKER, FOREMAN (UNITED STATES)"                                
   51 "OPERATIVE AND KINDRED (U"                                               
   65 "PRIVATE HOUSEHOLD WORKER (UNITED STATES)"                               
   69 "SERVICE WORKER (U"                                                      
   71 "FARM LABORER (U"                                                        
   72 "FARM WORKER (GERMANY ONLY)"                                             
   73 "FARM WORKER -- TENANT (U"                                               
   79 "UNSKILLED WORKER"                                                       
   80 "FARM OWNER, TENANT, SHARECROPPER (U"                                    
   81 "FARMER -- LANDOWNER (U"                                                 
   82 "FARM OWNER (GERMANY, ITALY, AND MEXICO 0NLY)"                           
   90 "OTHER  (GERMANY ONLY)"                                                  
   91 "INAP"                                                                   
   99 "NA (U" /                                                                
/* V138A                                                                       
/* FIELD I (RESPONSE I)                                                        
/* 1 "WORKS FOR PRIVATE EMPLOYER"                                              
/* 2 "GOVERNMENT"                                                              
/* 3 "SELF-EMPLOYED"                                                           
/* 4 "WORKS FOR VARIOUS PEOPLE BUT NOT ACTUALLY SELF-"                         
/* 5 "UNPAID WORKER IN FAMILY BUSINESS"                                        
/* 9 "NO RELEVANT INFORMATION"                                                 
/* 0 "INAP"                                                                    
/* FIELD II (RESPONSE II)                                                      
/* 6 "RESPONDENTS HUSBAND IS MAIN BREADWINNER BUT HE"                          
/* 7 "RESPONDENTS HUSBAND IS MAIN BREADWINNER BUT HE"                          
/* 8 "RESPONDENTS HUSBAND IS MAIN BREADWINNER BUT HE"                          
/* 0 "INAP" /                                                                  
/* V138B                                                                       
/* FIELD I (RESPONSE I)                                                        
/* 1 "WORKS FOR PRIVATE EMPLOYER"                                              
/* 2 "GOVERNMENT"                                                              
/* 3 "SELF-EMPLOYED"                                                           
/* 4 "WORKS FOR VARIOUS PEOPLE BUT NOT ACTUALLY SELF-"                         
/* 5 "UNPAID WORKER IN FAMILY BUSINESS"                                        
/* 9 "NO RELEVANT INFORMATION"                                                 
/* 0 "INAP"                                                                    
/* FIELD II (RESPONSE II)                                                      
/* 6 "RESPONDENTS HUSBAND IS MAIN BREADWINNER BUT HE"                          
/* 7 "RESPONDENTS HUSBAND IS MAIN BREADWINNER BUT HE"                          
/* 8 "RESPONDENTS HUSBAND IS MAIN BREADWINNER BUT HE"                          
/* 0 "INAP"/                                                                   
/* V138C                                                                       
/* FIELD I (RESPONSE I)                                                        
/* 1 "WORKS FOR PRIVATE EMPLOYER"                                              
/* 2 "GOVERNMENT"                                                              
/* 3 "SELF-EMPLOYED"                                                           
/* 4 "WORKS FOR VARIOUS PEOPLE BUT NOT ACTUALLY SELF-"                         
/* 5 "UNPAID WORKER IN FAMILY BUSINESS"                                        
/* 9 "NO RELEVANT INFORMATION"                                                 
/* 0 "INAP"                                                                    
/* FIELD II (RESPONSE II)                                                      
/* 6 "RESPONDENTS HUSBAND IS MAIN BREADWINNER BUT HE"                          
/* 7 "RESPONDENTS HUSBAND IS MAIN BREADWINNER BUT HE"                          
/* 8 "RESPONDENTS HUSBAND IS MAIN BREADWINNER BUT HE"                          
/* 0 "INAP" /                                                                  
   V139                                                                        
   19 "PROFESSIONAL"                                                           
   21 "HIGHER MANAGEMENT, BIG BUSINESS  (U"                                    
   22 "SMALL BUSINESS (OWNER, PARTNER)"                                        
   39 "WHITE COLLAR WORKER"                                                    
   49 "SKILLED WORKER, ARTISAN"                                                
   65 "DOMESTIC SERVANT  (U"                                                   
   72 "FARM WORKER  (GERMANY ONLY)"                                            
   73 "FARM WORKER--TENANT  (U"                                                
   79 "UNSKILLED WORKER"                                                       
   81 "FARMER--LANDOWNER  (U"                                                  
   82 "FARM OWNER  (GERMANY, ITALY, MEXICO)"                                   
   90 "OTHER  (GERMANY)"                                                       
   91 "INAP"                                                                   
   99 "NA  (U" /                                                               
   V140                                                                        
   19 "PROFESSIONAL"                                                           
   21 "HIGHER MANAGEMENT  (UNITED STATES)"                                     
   22 "SMALL BUSINESS (OWNER, PARTNER)--(U"                                    
   28 "PROPRIETOR  (U"                                                         
   39 "WHITE COLLAR WORKER  (U"                                                
   49 "SKILLED WORKER, FOREMAN  (U"                                            
   51 "OPERATIVE AND KINDRED  (U"                                              
   65 "PRIVATE HOUSEHOLD WORKER  (U"                                           
   69 "SERVICE WORKER  (U"                                                     
   71 "FARM LABORER  (U"                                                       
   73 "FARM WORKER--TENANT  (U"                                                
   79 "UNSKILLED WORKER"                                                       
   80 "FARM OWNER, TENANT, SHARECROPPER  (U"                                   
   81 "FARMER--LANDOWNER  (U"                                                  
   91 "INAP"                                                                   
   99 "NA  (U" /                                                               
   V141                                                                        
   1 "YES"                                                                     
   5 "NO"                                                                      
   7 "OTHER"                                                                   
   9 "DONT KNOW,NA"                                                            
   0 "INAP" /                                                                  
   V142                                                                        
   1 "USUALLY CONSULTED"                                                       
   3 "SOMETIMES CONSULTED"                                                     
   4 "RARELY CONSULTED"                                                        
   5 "NEVER CONSULTED"                                                         
   7 "OTHER"                                                                   
   8 "DONT KNOW"                                                               
   0 "INAP" /                                                                  
   V143                                                                        
   1 "FEEL FREE"                                                               
   3 "UNEASY"                                                                  
   5 "BETTER NOT TO COMPLAIN"                                                  
   7 "OTHER"                                                                   
   8 "DONT KNOW"                                                               
   0 "INAP" /                                                                  
   V144                                                                        
   1 "YES"                                                                     
   3 "IT DEPENDS"                                                              
   5 "NO"                                                                      
   7 "OTHER"                                                                   
   8 "DONT KNOW"                                                               
   0 "INAP" /                                                                  
   V145                                                                        
   1 "OFTEN"                                                                   
   3 "ONCE OR TWICE"                                                           
   5 "NEVER"                                                                   
   7 "OTHER"                                                                   
   8 "DONT KNOW"                                                               
   0 "INAP" /                                                                  
   V146                                                                        
   1 "INTERESTS TAKEN INTO ACCOUNT"                                            
   3 "SOMETIMES TAKEN INTO ACCOUNT, SOMETIMES IGNORED"                         
   5 "INTERESTS IGNORED"                                                       
   7 "OTHER"                                                                   
   8 "DONT KNOW"                                                               
   0 "INAP" /                                                                  
   V147                                                                        
   1 "SATISFACTORY"                                                            
   3 "SO-SO"                                                                   
   5 "UNSATISFACTORY"                                                          
   7 "OTHER"                                                                   
   8 "DONT KNOW"                                                               
   9 "NA (MEXICO ONLY, MEXICAN DATA LOST)" /                                   
   V148                                                                        
   1 "GO UP"                                                                   
   3 "STAY THE SAME"                                                           
   5 "GO DOWN"                                                                 
   7 "OTHER"                                                                   
   8 "DONT KNOW" /                                                             
   V149                                                                        
   0 "NONE"                                                                    
   1 "ONE"                                                                     
   2 "TWO"                                                                     
   3 "THREE"                                                                   
   4 "FOUR OR MORE"                                                            
   8 "DONT KNOW" /                                                             
   V150A                                                                       
   01 "UNIONS (LABOR OR TRADE)"                                                
   02 "BUSINESS"                                                               
   03 "PROFESSIONAL"                                                           
   04 "FARM"                                                                   
   05 "SOCIAL"                                                                 
   06 "CHARITABLE"                                                             
   07 "RELIGIOUS"                                                              
   08 "CIVIC, POLITICAL"                                                       
   09 "VETERAN (EX-SERVICE)"                                                   
   10 "FRATERNAL -- N"                                                         
   11 "COOPERATIVE (U"                                                         
   91 "INAP"                                                                   
   96 "DK, OTHER" /                                                            
   V150B                                                                       
   01 "UNIONS (LABOR OR TRADE)"                                                
   02 "BUSINESS"                                                               
   03 "PROFESSIONAL"                                                           
   04 "FARM"                                                                   
   05 "SOCIAL"                                                                 
   06 "CHARITABLE"                                                             
   07 "RELIGIOUS"                                                              
   08 "CIVIC, POLITICAL"                                                       
   09 "VETERAN (EX-SERVICE)"                                                   
   10 "FRATERNAL -- N"                                                         
   11 "COOPERATIVE (U"                                                         
   91 "INAP"                                                                   
   96 "DK, OTHER" /                                                            
   V150C                                                                       
   01 "UNIONS (LABOR OR TRADE)"                                                
   02 "BUSINESS"                                                               
   03 "PROFESSIONAL"                                                           
   04 "FARM"                                                                   
   05 "SOCIAL"                                                                 
   06 "CHARITABLE"                                                             
   07 "RELIGIOUS"                                                              
   08 "CIVIC, POLITICAL"                                                       
   09 "VETERAN (EX-SERVICE)"                                                   
   10 "FRATERNAL -- N"                                                         
   11 "COOPERATIVE (U"                                                         
   91 "INAP"                                                                   
   96 "DK, OTHER" /                                                            
   V150D                                                                       
   01 "UNIONS (LABOR OR TRADE)"                                                
   02 "BUSINESS"                                                               
   03 "PROFESSIONAL"                                                           
   04 "FARM"                                                                   
   05 "SOCIAL"                                                                 
   06 "CHARITABLE"                                                             
   07 "RELIGIOUS"                                                              
   08 "CIVIC, POLITICAL"                                                       
   09 "VETERAN (EX-SERVICE)"                                                   
   10 "FRATERNAL -- N"                                                         
   11 "COOPERATIVE (U"                                                         
   91 "INAP"                                                                   
   96 "DK, OTHER" /                                                            
   V151                                                                        
   1 "YES"                                                                     
   5 "NO"                                                                      
   7 "OTHER"                                                                   
   8 "DONT KNOW"                                                               
   0 "INAP" /                                                                  
   V152                                                                        
   1 "YES"                                                                     
   5 "NO"                                                                      
   7 "OTHER"                                                                   
   8 "DONT KNOW"                                                               
   0 "INAP" /                                                                  
   V153                                                                        
   1 "PROTESTANT"                                                              
   2 "CATHOLIC"                                                                
   3 "JEW"                                                                     
   7 "OTHER"                                                                   
   8 "DONT KNOW"                                                               
   0 "NONE" /                                                                  
   V154                                                                        
   1 "WEEKLY OR MORE OFTEN"                                                    
   3 "ONCE IN A WHILE"                                                         
   4 "ONLY FOR MAJOR HOLIDAYS OR MAJOR EVENTS"                                 
   5 "NEVER"                                                                   
   7 "OTHER"                                                                   
   8 "DONT KNOW"                                                               
   0 "INAP" /                                                                  
   V155                                                                        
   1 "18 - 25"                                                                 
   2 "26 - 30"                                                                 
   3 "31 - 35"                                                                 
   4 "36 - 40"                                                                 
   5 "41 - 50"                                                                 
   6 "51 - 60"                                                                 
   7 "60 AND OVER"                                                             
   9 "NA" /                                                                    
/* V156                                                                        
/* UNITED STATES                                                               
/* 1 "UNDER $1,000"                                                            
/* 2 "$1,000 - $1,999"                                                         
/* 3 "$2,000 - $2,999"                                                         
/* 4 "$3,000 - $4,999"                                                         
/* 5 "$5,000 - $7,499"                                                         
/* 6 "$7,500 - $9,999"                                                         
/* 7 "$10,000 - $14,999"                                                       
/* 8 "$15,000 AND OVER"                                                        
/* 9 "DONT KNOW, REFUSE TO ANSWER"                                             
/* UNITED KINGDOM                                                              
/* 1 "UNDER L300"                                                              
/* 2 "L300 - L650"                                                             
/* 3 "L650 - L1,000"                                                           
/* 4 "L1,000 - L1,500"                                                         
/* 5 "L1,500 - L2,000"                                                         
/* 6 "L2,000 - L3,000"                                                         
/* 8 "L3,000 AND OVER"                                                         
/* 9 "DONT KNOW, REFUSE TO ANSWER"                                             
/* GERMANY                                                                     
/* 1 "UNDER 150 DM"                                                            
/* 2 "150 - 250 DM"                                                            
/* 3 "250 - 350 DM"                                                            
/* 4 "350 - 500 DM"                                                            
/* 5 "500 - 750 DM"                                                            
/* 6 "750 - 1000 DM"                                                           
/* 7 "1000 - 1500 DM"                                                          
/* 8 "1500 DM AND OVER"                                                        
/* 9 "DONT KNOW, REFUSED TO ANSWER"                                            
/* ITALY                                                                       
/* 1  "UNDER 200,000 LIRE"                                                     
/* 2 "200,000 - 399,999 LIRE"                                                  
/* 3 "400,000 - 699,999 LIRE"                                                  
/* 4 "700,000 - 999,999 LIRE"                                                  
/* 5 "1,000,000 - 1,499,999 LIRE"                                              
/* 6 "1,500,000 - 2,499,999 LIRE"                                              
/* 7 "2,500,000 - 4,999,999 LIRE"                                              
/* 8 "5,000,000 LIRE AND OVER"                                                 
/* 9 "DONT KNOW, REFUSED TO ANSWER"                                            
/* MEXICO                                                                      
/* 1 "UNDER 500 PESOS"                                                         
/* 2 "500 - 999 PESOS"                                                         
/* 3 "1,000 - 1,499 PESOS"                                                     
/* 4 "1,500 - 2,499 PESOS"                                                     
/* 5 "2,500 - 4,999 PESOS"                                                     
/* 6 "5,000 - 7,999 PESOS"                                                     
/* 7 "8,000 - 12,999 PESOS"                                                    
/* 8 "13,000 PESOS AND OVER"                                                   
/* 9 "DONT KNOW, REFUSED TO ANSWER" /                                          
   V157                                                                        
   1 "UNDER $1,000"                                                            
   2 "$1,000 - $1,999"                                                         
   3 "$2,000 - $2,999"                                                         
   4 "$3,000 - $4,999"                                                         
   5 "$5,000 - $7,499"                                                         
   6 "$7,500 - $9,999"                                                         
   7 "$10,000 - $14,999"                                                       
   8 "$15,000 AND OVER (NOT CODED FOR U"                                       
   9 "DONT KNOW, REFUSED TO ANSWER, NA--MEXICO ONLY" /                         
   V158                                                                        
   1 "HOME"                                                                    
   2 "PLACE OF WORK"                                                           
   3 "PUBLIC PLACE"                                                            
   7 "OTHER" /                                                                 
   V159                                                                        
   1 "LESS THAN 5,000 (NOT CODED FOR MEXICO)"                                  
   2 "5,000 - 10,000 (U"                                                       
   3 "10,000 - 20,000 (U"                                                      
   4 "5,000 - 20,000 (U"                                                       
   5 "20,000 - 50,000"                                                         
   6 "50,000 - 100,000"                                                        
   7 "100,000 OR MORE"                                                         
   9 "NA" /                                                                    
/* V160                                                                        
/* UNITED STATES                                                               
/* 1 "NEW ENGLAND STATES"                                                      
/* 2 "MIDDLE ATLANTIC STATES"                                                  
/* 3 "SOUTH ATLANTIC (INCLUDING D"                                             
/* 4 "EAST SOUTH CENTRAL STATES"                                               
/* 5 "EAST NORTH CENTRAL STATES"                                               
/* 6 "WEST NORTH CENTRAL STATES"                                               
/* 7 "WEST SOUTH CENTRAL STATES"                                               
/* 8 "MOUNTAIN STATES"                                                         
/* 9 "PACIFIC STATES"                                                          
/* UNITED KINGDOM                                                              
/* 1 "S. ENGLAND"                                                              
/* 2 "WALES"                                                                   
/* 3 "THE MIDLANDS"                                                            
/* 4 "NO. ENGLAND"                                                             
/* 5 "SCOTLAND"                                                                
/* GERMANY                                                                     
/* 1 "SCHLESWIG-HOLSTEIN -- LOWER SAXONY"                                      
/* 2 "NORTHERN RHINE, WESTPHALIA, RHINELAND - PALATINATE"                      
/* 3 "HESSE -- BADEN-WUERTTEMBERG"                                             
/* 4 "BAVARIA"                                                                 
/* 5 "HAMBURG -- BREMEN"                                                       
/* ITALY                                                                       
/* 1 "NORTH"                                                                   
/* 2 "CENTER"                                                                  
/* 3 "SOUTH"                                                                   
/* 4 "ISLANDS"                                                                 
/* MEXICO                                                                      
/* 9 "NA" /                                                                    
   V161                                                                        
   1 "MALE"                                                                    
   2 "FEMALE" /                                                                
   V162                                                                        
   1 "WHITE"                                                                   
   2 "NEGRO"                                                                   
   3 "INDIAN"                                                                  
   5 "MIXED"                                                                   
   7 "OTHER" /                                                                 
   V163                                                                        
   1 "A  (HIGH)"                                                               
   2 "B"                                                                       
   3 "C"                                                                       
   4 "D  (LOW)"                                                                
   9 "NA" /                                                                    
   V164                                                                        
   1 "VERY ARTICULATE"                                                         
   3 "SO-SO"                                                                   
   5 "RELATIVELY INARTICULATE"                                                 
   8 "SPECIAL U"                                                               
   9 "NA" /                                                                    
   V165                                                                        
   1 "FRIENDLY, EAGER, ETC"                                                    
   2 "COOPERATIVE, BUT NOT PARTICULARLY EAGER"                                 
   3 "INDIFFERENT, BORED, ETC"                                                 
   5 "HOSTILE"                                                                 
   9 "NA" /                                                                    
   V166A                                                                       
   10 "EISENHOWER"                                                             
   15 "TRUMAN"                                                                 
   20 "ELEANOR ROOSEVELT"                                                      
   25 "NIXON"                                                                  
   30 "BILLY GRAHAM"                                                           
   35 "BISHOP SHEEN"                                                           
   40 "MAC ARTHUR"                                                             
   45 "SCHWEITZER"                                                             
   50 "SALK"                                                                   
   55 "MARTIN LUTHER KING"                                                     
   91 "INAP"                                                                   
   92 "NO FURTHER RESPONSE" /                                                  
   V166B                                                                       
   10 "EISENHOWER"                                                             
   15 "TRUMAN"                                                                 
   20 "ELEANOR ROOSEVELT"                                                      
   25 "NIXON"                                                                  
   30 "BILLY GRAHAM"                                                           
   35 "BISHOP SHEEN"                                                           
   40 "MAC ARTHUR"                                                             
   45 "SCHWEITZER"                                                             
   50 "SALK"                                                                   
   55 "MARTIN LUTHER KING"                                                     
   91 "INAP"                                                                   
   92 "NO FURTHER RESPONSE" /                                                  
   V166C                                                                       
   10 "EISENHOWER"                                                             
   15 "TRUMAN"                                                                 
   20 "ELEANOR ROOSEVELT"                                                      
   25 "NIXON"                                                                  
   30 "BILLY GRAHAM"                                                           
   35 "BISHOP SHEEN"                                                           
   40 "MAC ARTHUR"                                                             
   45 "SCHWEITZER"                                                             
   50 "SALK"                                                                   
   55 "MARTIN LUTHER KING"                                                     
   91 "INAP"                                                                   
   92 "NO FURTHER RESPONSE" /.                                                 
                                                                               
* SPSS MISSING VALUES COMMAND.                                                 
                                                                               
* MISSING VALUES                                                               
   V6 (0000008 THRU HI)                V7 (0000007 THRU HI)                    
   V8 (0000007 THRU HI)                V9 (0000009 THRU HI)                    
   V10 (0000008 THRU HI)               V11A (0000090 THRU HI)                  
   V11B (0000090 THRU HI)              V11C (0000090 THRU HI)                  
   V12 (0000000)                       V13 (0000009 THRU HI, 0000000)          
   V14 (0000009 THRU HI, 0000000)      V15 (0000007 THRU HI)                   
   V16A (0000090 THRU HI, 0000000)     V16B (0000090 THRU HI, 0000000)         
   V16C (0000090 THRU HI, 0000000)     V17 (0000009 THRU HI, 0000000)          
   V18 (0000007 THRU HI)               V19 (0000007 THRU HI)                   
   V20A (0000090 THRU HI, 0000000)     V20B (0000090 THRU HI, 0000000)         
   V20C (0000090 THRU HI, 0000000)     V22 (0000007 THRU HI)                   
   V23 (0000007 THRU HI, 0000000)      V24 (0000007 THRU HI, 0000000)          
   V25 (0000007 THRU HI, 0000000)      V26 (0000007 THRU HI)                   
   V27 (0000007 THRU HI)               V28A (0000090 THRU HI)                  
   V28B (0000090 THRU HI)              V28C (0000090 THRU HI)                  
   V29 (0000007 THRU HI)               V30 (0000007 THRU HI)                   
   V31 (0000007 THRU HI)               V32 (0000007 THRU HI)                   
   V33 (0000007 THRU HI)               V34A (0000090 THRU HI)                  
   V34B (0000090 THRU HI)              V34C (0000090 THRU HI)                  
   V35A (0000090 THRU HI)              V35B (0000090 THRU HI)                  
   V35C (0000090 THRU HI)              V36A (0000090 THRU HI)                  
   V36B (0000090 THRU HI)              V36C (0000090 THRU HI)                  
   V37 (0000007 THRU HI)               V38A (0000090 THRU HI)                  
   V38B (0000090 THRU HI)              V38C (0000090 THRU HI)                  
   V39 (0000007 THRU HI)               V40 (0000007 THRU HI, 0000000)          
   V41 (0000007 THRU HI)               V42A (0000090 THRU HI)                  
   V42B (0000090 THRU HI)              V42C (0000090 THRU HI)                  
   V43 (0000007 THRU HI)               V44 (0000007 THRU HI)                   
   V45 (0000007 THRU HI)               V46 (0000007 THRU HI)                   
   V47 (0000007 THRU HI)               V48 (0000007 THRU HI)                   
   V49 (0000007 THRU HI, 0000000)      V50 (0000007 THRU HI)                   
   V51 (0000007 THRU HI, 0000000)      V52A (0000090 THRU HI)                  
   V52B (0000090 THRU HI)              V52C (0000090 THRU HI)                  
   V53A (0000000)                      V53B (0000000)                          
   V53C (0000000)                      V54 (0000007 THRU HI)                   
   V55 (0000007 THRU HI)               V56 (0000007 THRU HI, 0000000)          
   V57 (0000007 THRU HI, 0000000)      V58 (0000007 THRU HI, 0000000)          
   V59 (0000007 THRU HI, 0000000)      V60A (0000007 THRU HI, 0000000)         
   V60B (0000007 THRU HI, 0000000)     V60C (0000007 THRU HI, 0000000)         
   V61A (0000007 THRU HI, 0000000)     V61B (0000007 THRU HI, 0000000)         
   V61C (0000007 THRU HI, 0000000)     V62A (0000009 THRU HI, 0000000)         
   V62B (0000009 THRU HI, 0000000)     V62C (0000009 THRU HI, 0000000)         
   V63 (0000007 THRU HI, 0000000)      V64 (0000007 THRU HI)                   
   V65 (0000007 THRU HI)               V66 (0000095 THRU HI)                   
   V67 (0000009 THRU HI, 0000000)      V68 (0000007 THRU HI)                   
   V69 (0000009 THRU HI, 0000000)      V70 (0000090 THRU HI)                   
   V71 (0000090 THRU HI)               V72 (0000090 THRU HI)                   
   V73 (0000007 THRU HI, 0000000)      V74 (0000007 THRU HI, 0000000)          
   V75 (0000090 THRU HI)               V76 (0000090 THRU HI)                   
   V77 (0000090 THRU HI)               V78 (0000090 THRU HI)                   
   V79 (0000008 THRU HI, 0000000)      V80 (0000007 THRU HI, 0000000)          
   V81 (0000007 THRU HI)               V82 (0000007 THRU HI)                   
   V83 (0000007 THRU HI)               V84 (0000007 THRU HI)                   
   V85 (0000007 THRU HI)               V86 (0000007 THRU HI)                   
   V87 (0000007 THRU HI)               V88 (0000007 THRU HI, 0000000)          
   V89 (0000007 THRU HI, 0000000)      V90A (0000090 THRU HI)                  
   V90B (0000090 THRU HI)              V90C (0000090 THRU HI)                  
   V91A (0000090 THRU HI)              V91B (0000090 THRU HI)                  
   V91C (0000090 THRU HI)              V92A (0000090 THRU HI)                  
   V92B (0000090 THRU HI)              V92C (0000090 THRU HI)                  
   V93A (0000090 THRU HI)              V93B (0000090 THRU HI)                  
   V93C (0000090 THRU HI)              V94 (0000007 THRU HI)                   
   V95 (0000007 THRU HI)               V96 (0000007 THRU HI, 0000000)          
   V97 (0000007 THRU HI, 0000000)      V98 (0000007 THRU HI, 0000000)          
   V99 (0000009 THRU HI)               V100 (0000007 THRU HI)                  
   V101 (0000007 THRU HI)              V102 (0000007 THRU HI, 0000000)         
   V103 (0000007 THRU HI, 0000000)     V104 (0000007 THRU HI, 0000000)         
   V105 (0000007 THRU HI, 0000000)     V106 (0000007 THRU HI, 0000000)         
   V107 (0000007 THRU HI, 0000000)     V108 (0000007 THRU HI, 0000000)         
   V109 (0000007 THRU HI, 0000000)     V110 (0000007 THRU HI, 0000000)         
   V111 (0000007 THRU HI)              V112 (0000008 THRU HI)                  
   V113 (0000007 THRU HI, 0000000)     V114 (0000007 THRU HI)                  
   V115 (0000007 THRU HI, 0000000)     V116A (0000007 THRU HI, 0000000)        
   V116B (0000007 THRU HI, 0000000)    V116C (0000007 THRU HI, 0000000)        
   V117 (0000007 THRU HI, 0000000)     V118 (0000007 THRU HI, 0000000)         
   V119 (0000007 THRU HI, 0000000)     V120 (0000007 THRU HI, 0000000)         
   V121 (0000007 THRU HI, 0000000)     V122 (0000007 THRU HI, 0000000)         
   V123 (0000007 THRU HI, 0000000)     V124 (0000007 THRU HI, 0000000)         
   V125 (0000007 THRU HI, 0000000)     V126 (0000007 THRU HI, 0000000)         
   V127 (0000008 THRU HI)              V128 (0000008 THRU HI)                  
   V129 (0000008 THRU HI)              V130 (0000008 THRU HI)                  
   V131 (0000008 THRU HI)              V132 (0000008 THRU HI)                  
   V133 (0000008 THRU HI)              V134 (0000008 THRU HI)                  
   V135 (0000007 THRU HI)              V136 (0000009 THRU HI)                  
   V137 (0000090 THRU HI)              V138A (0000009 THRU HI, 0000000)        
   V138B (0000009 THRU HI, 0000000)    V138C (0000009 THRU HI, 0000000)        
   V139 (0000090 THRU HI)              V140 (0000091 THRU HI)                  
   V141 (0000007 THRU HI, 0000000)     V142 (0000007 THRU HI, 0000000)         
   V143 (0000007 THRU HI, 0000000)     V144 (0000007 THRU HI, 0000000)         
   V145 (0000007 THRU HI, 0000000)     V146 (0000007 THRU HI, 0000000)         
   V147 (0000007 THRU HI)              V148 (0000007 THRU HI)                  
   V149 (0000008 THRU HI)              V150A (0000091 THRU HI)                 
   V150B (0000091 THRU HI)             V150C (0000091 THRU HI)                 
   V150D (0000091 THRU HI)                                                     
   V151 (0000007 THRU HI, 0000000)     V152 (0000007 THRU HI, 0000000)         
   V153 (0000007 THRU HI)              V154 (0000007 THRU HI, 0000000)         
   V155 (0000009 THRU HI)              V156 (0000009 THRU HI)                  
   V157 (0000009 THRU HI)              V158 (0000007 THRU HI)                  
   V159 (0000009 THRU HI)              V162 (0000007 THRU HI)                  
   V163 (0000009 THRU HI)              V164 (0000009 THRU HI)                  
   V165 (0000009 THRU HI)              V166A (0000091 THRU HI)                 
   V166B (0000091 THRU HI)             V166C (0000091 THRU HI).                
