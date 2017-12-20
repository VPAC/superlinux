by Lev Lafayette

ISBN-10: 0-9943373-0-2

ISBN-13: 978-0-9943373-0-6

Supercomputing with Linux by Lev Lafayette, 2015 (online). This edition 2017 (revised)

Published by the Victorian Partnership for Advanced Computing (trading as V3 Alliance) .

Cover art composed by Michael D'Silva, featuring several clusters operated by the Victorian Partnership for Advanced Computing.

Supercomputing with Linux, is licensed under a Creative Commons Attribution 4.0 International License. 

All trademarks are property of their respective owners.

# Table of Contents

0.0 Introduction
0.1 Forward
0.2 Preface

1.0 The Victorian Partnership for Advanced Computing and Supercomputing
1.1 About VPAC
1.2 VPAC Case Studies
1.3 VPAC's Supercomputer Systems
1.4 Some Supercomputing Definitions
1.5 Supercomputers and FOSS
1.6 System Specification and Software
1.7 Accounts, Licensed Software, and Helpdesk

2.0 The Linux Environment
2.1 Logging On
2.2 Exploring The Environment
2.3 Files and Text Editing
2.4 Copying and Transferring Files
2.5 Creating Directories, Moving Files
2.6 Files Differences
2.7 Searches and Wildcards
2.8 Deletions

3.0 Modules, PBS, and Example Jobs
3.1 Environment Modules
3.2 Portable Batch System
3.3 Frequently Used PBS and Scheduler Commands
3.4 Standard Job DLPOLY: Molecullar Modelling
3.5 Two Standard Jobs with Graphic Output: GNU Octave and MATLAB(R)
3.6 Standard Job with PDF Output: R, A Statistical Package
3.7 Extended Application for Parallel Processing: R: A Statistical Package
3.8 Parallel Job with License : ANSYS Finite Element Analysis
3.9 Standard Job with License : Abaqus Finite Element Analysis
3.1- Standard Job With Local Visualisation : NAMD and VMD

4.0 Intermediate Linux
4.1 Login Files
4.2 Editing With Vim
4.3 Editing with Emacs	
4.4 Archiving Files
4.5 Redirection and Tee
4.6 Attributes, Types, Ownership
4.7 Hard and Symbolic Links
4.8 File Manipulation Commands
4.9 System Information Commands
4.10 Program Manipulation Commands

5.0 Regular Expressions, Shells, and Scripting
5.1 Regular Expressions with grep and sed
5.2 Reports with awk
5.3 Shells
5.4 Shell Scripting with bash
5.5 Better Bash Scripting

6.0 Alternative Job Submission Options
6.1 Job Scripts with Shell Scripting
6.2 Autogeneration PBS Scripts with sed and loops
6.3 Autogenerating PBS Scripts with a Heredoc
6.4 PBS Job Arrays, Dependencies, and Interactive Jobs

7.0 Command Summary and References
7.1 Linux Commands
7.2 File System
7.3 Queuing Commands
7.4 References


# 0.0 Introduction

## 0.1 Foreword

Our era has been defined by the ever-increasing scale and performance of information technology and its impact on many facets of society. Information technology has been made possible by the rapid, and continuing, development of semiconductor technology which enables high speed electronic processing and storage of data. These advances have continued unabated over more than six decades, enabling the realisation of computers with increasing speeds, sophistication and capability to facilitate the solution of complex problems of larger scale, more rapidly and with increased detail. Our society is now dependent upon the availability of the increasingly massive computing capability which is available to researchers for the exploration of the frontiers of knowledge, with the consequent provision to society of the benefits of their expertise. 

The journey which universities and their researchers undertook, as computer technology developed, is complex. It commenced with computers being utilised for administrative functions and relatively simple calculations. The availability of the world-wide web, and its communication networks of increasing capacity, enabled computers to greatly enhance their functionality.  AARNeT (the Australian Academic Research Network) commenced in 1989, progressively interconnecting universities in Australia and linking them to the network created in USA, which was destined to become a global network. It was the pioneering founder of the now all-pervasive web in Australia. 

While universities could acquire small/medium computers (which progressively increased in capability) for their local utilisation, very large computers for complex research problems were quite expensive. Australia’s first "super-computer" was shared between CSIRO and ANU. When the network capacity and coverage increased, it became clear that it was in the national interest for the Commonwealth government to fund a larger computing facility that could be utilised for research by staff of all the universities and CSIRO. This topic was the subject of a government organised workshop, with extensive participation, which led to the creation of APAC, the Australian Partnership for Advanced Computing in 1998. I was invited by the Department of Education to Chair APAC and to facilitate the development of a new national research computing service for Australian Universities and CSIRO, with a new larger computer located at ANU providing this service. I continued in this role until 2005. 

It became apparent that many research staff in Victorian universities, whose projects required large scale computing resources, but which could not gain access to the national facility, would be better served by a local computer facility. I raised this issue at a VVCC (Victorian Vice-Chancellors Committee) meeting and six universities indicated that they would wish to participate in a co-operative facility.  Thus the Victorian Partnership for Advanced Computing, VPAC was formed in 1999 and I was also requested to be its initial chair. Financial commitment was subsequently given by RMIT, Melbourne, Swinburne, Monash, Latrobe and Deakin Universities to enable the purchase of a suitable computer, to establish facilities and to employ support staff. RMIT had an excellent visualisation system and adjacent space in Building 91 which provided a convenient location for VPAC. The focus was on academic, scientific and industrial problems and Dr Bill Applebe was selected as the first CEO. In an exciting period of computer technology development, VPAC facilitated the rapid growth of computer technology applications to the diverse research problems being explored by university staff in Victoria. This book explores these important, complex and rapidly developing technologies, to assist researchers in this field. It will contribute to the continuation of the development of this central, and widely applicable, field of technological endeavour as it progresses into the next phase of its realisation and impact. 

Emeritus Professor David Beanland, AO, FTSE, FIEAust 
Foundation Vice-Chancellor RMIT University 

## 0.2 Preface

The electronic networked computer is the single most important technology of the contemporary age. From their earliest days, it has been observed that computational devices are becoming more powerful (roughly doubling in processing and storage capacity every two years), an observation that has been true since 1958 (G.E. Moore, 1965), and extended to other metrics. In addition to this, computing is becoming increasingly ubiquitous; there is the "the Internet of things" an expansion of machine-to-machine communication, and expansion of computational devices (e.g., 3D printing). 

There is also an expansion of data collection, which in turn leads to a  need for increased data storage, and therefore increased data processing. The increase in the volume, velocity, and variety of datasets has become a well recognised issue. The rate of dataset increase has also been well-researched (Hilbert and López 2011) with a reported increase of 23% per annum increase in information storage from 1986 to 2007, and a 28% increase in bidirectional telecommunications. 

Storage issues are, of course, only part of the problem of the increasing deluge of data. It can be reasonably assumed that datasets are stored for a purpose, which means that they must be manipulated or modified in some way. As can be expected with processing of large data a high performance computing system would be necessary. Distributed or loosely coupled computational systems, such as various grid computing architectures is arguably not the solution for large datasets except in cases where the dataset can be broken up, in which case it is a large collection of smaller datasets. There is, of course, the significant issue of data transfer in such situations. As an alternative tightly-coupled computer clusters, which make up the world's supercomputers, are an increasingly important (if mature) technology.

As a result for scientific researchers, high performance computing and parallel processing will inevitably be increasing demand and the the necessary skills - from familiarity with the command line interface, job submission, scripting, through to parallel programming - will also be required. These are, however, not commonly taught at the level required for most researchers and indeed, it has been cogently argued that (Wilson, 2008) there is a major distinction between high performance computing (the machinery and software) and scientific computing (what scientists actually do). Whilst obviously computational capacity does have a certain priority (the system must exist prior to use), in order for that capacity to realised in terms of usage a skill-set competence must also exist. 

The the core issue is that high performance compute clusters is just speed and power (or even power-consumption in these more environmentally sensitive times). The issues of usage, productivity, correctness, and reproducibility must also be considered and granted at least equal weight, if not more. For the users necessary education and ease-of-use is highlighted, although elsewhere (Lafayette 2015 and 2015) I have argued that the opportunities for design improvements in limited compared to improving the skillset of users. 

This leads to an increasing conflict between different metrics; on one hand the need for data processing is increasing, but at the same time the skills among researchers typically are not present (and indeed, it can be argued, less present as computers become more "user friendly"). Nevertheless, those researchers who do have the necessary skills to take advantage of high performance computing will be at a significant advantage as they will be able to carry out their data processing with increasingly greater performance. Those are the researchers and research institutions that will have an increasingly significant advantage in publication output (Apon et.al., 2010).

Putting this together, there is an environment where the quantity of data is increasing in size faster than unicore desktop applications are capable of processing it, which suggests a greater need for high performance computing, but researchers who have less background exposure to the skills required to process such data, which suggests a greater need for training. This is why over from 2013-2015 the Victorian Partnership for Advanced Computing conducted over one hundred days of classes to researchers from a variety of institutions whose content significantly formed the basis of this book.

The institutions included researchers from RMIT, La Trobe University, the University of Melbourne, Deakin University, Swinburne University, Victoria University of Technology, Monash University, the Australian Synchrotron, the Department of Environment and Primary Industries, the University of Sydney, Macquarie University, the University of New South Wales, the University of Western Australia, the Australian Institute of Health Innovation, the Westmead Millennium Institute, the Australian Radiation Protection and Nuclear Safety Agency, and the Australian Institution of Marine Science.

This book is designed for scientific researchers who have had minimal exposure to command-line Linux and to high performance computing but have a need for such skills.  It starts with some necessary commands, which may appear trivial to users who are more familiar with Linux, but are absolutely essential for those who are starting from little to no experience. It then provides information about environment modules, a very common installation in computer clusters, gives some basic PBS commands, and then some simple jobs scripts across a across a variety of applications.  By this stage the user will be able to navigate their way around the system and be able to check usage, submit jobs, and evaluate the results (including error messages).

Following this, a wider range of Linux commands are provided, giving the user a more thorough grounding in the range of options that are available to them, especially in terms of configuration, archiving, regular expressions, and scripting. All of this can, of course, be added in PBS job submissions themselves, and several examples are provided on how to this along with the more advanced job submission procedures, such as job arrays, job dependencies, and interactive jobs. 

In part this book has been written as a reference guide for user researchers and in part as workbook which is meant to studied from beginning to end. It takes into account some of the main features of advanced learning techniques insofar that it provides content in a structured manner. However other disciplinary learning style methods can only be provided by the educator (including autodidactics). In the field of computer science both collaborative approaches (such as "paired programming") and active learning ("yield to the hands-on imperative") are most useful. One can only encourage the learner to work their way through the examples and make plenty of mistakes as that will be the most effective way to learn. Don't just read the text as given.

Obviously a book like this is at least in part derived from a variety of sources. The most important in terms of the Linux point of view is actually the manual and info pages built into the operating system, and the online resources at the Linux Documentation Project (https://tldp.org), especially Bash Guide for Beginners (Machtelt Garrels, 2008) and Advanced Bash-Scripting Guide (Mendel Cooper, 2014), Rute User's Tutorial and Exposition (Paul Sheer, 2004), along with a hat-tip to the bash Cookbook (lower-case intentional; Carl Albing, et. al., 2007). In terms of the job submission, the official manuals from such as PBS Pro 12.0 Reference Guide (Altair, 2013)  and TORQUE Administrator Guide (Adaptive Computing, 2015).

There may be an expectation that much of the content of this book is time-dependent, but an effort has been made to provide grounding in concepts as well as contemporary examples. There will doubtless be new releases of scientific applications, new releases of compilers and programming languages, new releases of the Linux kernel and various GNU utilities, new shell implementations, new releases of schedulers and resource managers. But regardless of such changes grounded principles can retain utility. Books like The C Programming Language Kernighan and Ritchie, 1978), The UNIX Programming Environment (Kernighan and Pike, 1984), are still useful to read for the concepts they provide. Obviously it is not suggested that this introductory book is even remotely of the same calibre as these classics, but rather they are cited in recognition of being inspirational texts.

Further material from this manual draws upon training manuals produced at the Victorian Partnership for Advanced Computing over the past several years, including material written by Mike Kuiper, Andy Botting, David Bannon, Chris Samuel, and Hu Ping. I also wish to thank several other contributors from the Victorian Partnership for Advanced Computing who assisted in this manuscript, including Andrew Charmers, Michael D'Silva, and Craig West. All errors and omissions are my own.

This book is part of a series designed to assist researchers, systems administrators, and managers in a variety of advanced computational tasks. Other books that will be published in this series include: Sequential and Parallel Programming., Mathematical Applications and Programming., Data Management Tools for eResearchers., Building HPC Clusters and Clouds., Teaching Research Computing to Advanced Learners., Quality Assurance in Technical Organisations., Technical Project Management, and A History of the Victorian Partnership of Advanced Computing.

Thanks are given to the Victorian Partnership of Advanced Computing for the time and resources necessary for the publication of this book, and especially Bill Yeadon, manager of research and development, who authorised its publication.

Lev Lafayette, Victorian Partnership for Advanced Computing, Melbourne, 2015

# 1.0 The Victorian Partnership for Advanced Computing and Supercomputing

## 1.1 About VPAC

In the late 1990s the various universities in Victoria were confronted with the problem that in aggregate they needed HPC facilities, but individually they could not justify the expense relative to demand at the time. In response a consortium of the six universities (La Trobe, Monash, RMIT, Swinburne, Ballarat and Melbourne) joined together to form a new company in 2000, the Victorian Partnership for Advanced Computing. The new company provided high performance compute clusters and programming support for the research community member universities. At a later date Deakin University and Victoria University also joined with CSIRO as an associate member.

In comparison, VeRSI, the Victorian eResearch Strategic Initiative, was established 2006 as an unincorporated joint venture of Monash University, the University of Melbourne, La Trobe University and the Department of Primary Industries. Later the Australian Synchrotron, the University of Ballarat, Deakin University, RMIT University, Swinburne University of Technology and Victoria University, also joined. Funding was also provided and funded by the Department of Business and Innovation. Its objective was to accelerate the uptake of eResearch in universities, government departments and other research organisations. 

In 2013, VPAC and VeRSI merged to become the V3 Alliance with a spin-off commercial company, VPAC Innovations, becoming the third part of the V3. The V3 Alliance is thus a merger of the Victorian Partnership for Advanced Computing (VPAC) and the Victorian eResearch Strategic Initiative. The Victorian Partnership for Advanced Computing remains the legal name for the organisation, and V3 Alliance as a trading name.

In late 2015 the VPAC Board made a decision not to continue the organisation after the end of the 2016 financial year, which would coincide with the contractual end of the Trifid cluster.  This book is part of a series of publications produced by the Victorian Partnership of Advanced Computing in its last months, a decision to return to the computational community the opportunities for new minds and hands to take advantage of the knowledge developed and to contribute further in improving our collective intelligence.

## 1.2 VPAC Case Studies

VPAC had a number of commercial and academic case studies of which three are described here in summary for interest's sake. A more complete description of these projects and other case studies is available at: http://www.vpac.org/services and http://www.v3.org.au/case_studies

**Marine Benthic Habitat Mapping***

The project objective focused on developing a better understanding of geophysical characteristics and benthic communities in coastal Victoria, Australia.

V3 Alliance’s participation involved the development of an automated procedure to process large volumes of multibeam sonar data coupled with georeferenced video “ground truth” data collected off the cost of Victoria.

An automated decision tree classification system was used to classify substrata and dominant biota communities based on georeferenced underwater video ground truth data. 

The technique of combining derivative products from the backscatter and the bathymetry datasets was found to improve separability for broad biota and substrata categories over the use of either of these datasets alone.

Development of coastal regions has resulted in significant anthropogenic impacts in south-west Victoria. The Victorian Marine Habitat Mapping Project surveyed over 500 square kilometres in 14 marine regions within Victorian state waters with the objective of establishing baseline physical and biological information regarding coastal waters.

**SHIINe Infection Surveillance System**

Infection surveillance is regarded as the cornerstone of Infection Control programs. Knowledge of the normal rate of infections is essential if medical health providers such as hospitals are to accurately detect and measure any increases in reported infections and assess preventative actions. 

Hospitals are required to undertake routine hospital-acquired or nosocomial infection surveillance as a component of their Infection Control programs. Infection surveillance can be very time consuming, and efficient data management is vital to the process. VICNISS and V3 Alliance are collaboratively developing a new infection surveillance software application, called Safer Hospitals Integrated Information Network (SHIINe), to ensure scientific credibility, identify problems, ensure the use of standardised methodology, and to increase compliance and participation with Infection Control in hospitals.

**Multi-Disciplinary Optimisation of a Vehicle Architecture**

GM Holden wished to optimise the design of a vehicle architecture by removing mass from the vehicle frame without affecting crash safety. The optimisation process required the client to generate hundreds of minor variants of a design and simulate the performance of each variant in multiple crash scenarios. V3 Alliance provided a software automation solution based on its Virtuneer technology that greatly reduced the time and cost involved in such a large-scale simulation and design exercise. 

Multi-Disciplinary Optimisation (MDO) is a common technique in automotive engineering. In the concept stage of vehicle development, conflicting performance requirements in the disciplines of crash, noise and vibration, durability, and mass reduction require the generation and evaluation of many alternative designs. The vehicle concept is represented in a parameterised CAD model, which must then be rendered into a high-quality Finite Element (FE) mesh, combined with appropriate inputs in an analysis deck, and submitted to a High Performance Computing (HPC) resource for analysis. Post-analysis, performance metrics must be evaluated and aggregated into a predictive model of vehicle performance. 
 
GM Holden reduced manual set-up time for a large-scale MDO study from an estimated 6 weeks to 1.5 weeks and greatly reduced the number of failed HPC simulations. The client therefore realised large time and cost savings for both staff and HPC resources and successfully accelerated its innovation process.

**VisLab for social research**

Researchers at Victoria University’s Centre for Cultural Diversity and Wellbeing (CCDW) examine issues relating to diversity, creativity and health in both local and global contexts. The use of technologies enabling greater 'connectedness' is central to their exploration of these areas.

VisLab12, the new Social Technologies Lab developed for the CCDW by V3 Alliance, will facilitate the work of several of the centre’s projects, including:

* Mapping public alcohol and other drug (AOD) use impacts in the western region of Melbourne: researchers will be able to visualise and map geographical, social and temporal patterns of public AOD use across the region.
* Enhancing connection to Yorta Yorta country: researchers will use the lab as an interactive tool, deploying video and image-based media to facilitate generative knowledge production about alternative mapping methodologies.
* The Australian Federal Police media project: Young Muslims creating effective media messages about Islam in Australia: researchers will be able to gauge and analyse responses to a documentary film and its messages using sensory data observation of audiences and instantaneous responses to the film through multiple iPad connectivity.
* The lab will enable the Food, health, memory and African Australian transitions research team to digitally map and visualise African-Australian foodscapes in the west of Melbourne. Researchers will be able to collect and display sensory, visual and mobile data, analyse crowdsourced data and images, and disseminate visual and sensory research in order to understand the importance of food in African-Australian wellbeing.

VisLab12 is one of a series of visualisation laboratories developed and custom-built by V3 in conjunction with La Trobe University and Victoria University, to meet the needs of researchers in specific disciplines.

## 1.3 VPAC's Supercomputer Systems

In the course of its history, V3 Alliance (through VPAC) provided internal HPC systems for Victoria's research community along with deployment and maintenance of external systems. Internal systems named Grendel, Brecca, Edda, Wexstan, Tango, and lastly Trifid. Some of the earlier machines were ranked in the Top 500 as the most powerful systems at the time. For example, in June, 2001, VPAC's AlphaServer SC40 (Grendel), was ranked 150 in the world Top 500 list with a peak peformance of 0.21 Tflops. In June 2003 the Xeon xSeries (Brecca) ranked 124th position 1.075 TFlops. 

The last in-house system, initially with Intel E5-2670 processors (Trifid), operated with 45.9 TFLOPS. It was then upgraded to close to 60 TFLOPS with additional E5-2660v2 processors. As an illustration of how far supercomputers have developed in the past decade, despite being 46 times faster than VPACs last entry in the top 500 at initial install, it would be lucky to be at the bottom of the top 1000!
VPAC has also provided deployment and staff for three HPC systems at the AutoCRC (Windsor, Wembley, Karros), clusters at DEPI for the Victorian government, Swinburne University's Green HPC, La Trobe University's Hercules, University of Melbourne's Edward, Monash University and the Australian Synchroton's Massive, the Australian Institute for Health Innovation at the University of New South Wales and Macquarie University, the Popple cluster at the University of Western Australia, the Australian Institute for Marine Science, and staff for the initial VLSCI deployment.

Reference and specifications for the Top 500 systems that have were housed at VPAC are available at the following URLs:

http://www.top500.org/site/49239
http://www.top500.org/system/173431
http://www.top500.org/system/166873

#1.4 Some Supercomputing Definitions

A supercomputer is a rather nebulous term for any computer system that is at the frontline of current processing capacity, particularly speed of calculation. High-performance computing (HPC), as the name indicates, is any computer system whose architecture allows for above average performance. In general however the two terms are treated as if they were synonymous; when one talks about a "supercomputer" they could easily mean a "high performance computer", despite the fact that even a single desktop system, with sufficient optimisation, could be considered "high performance", and a system that is one of the most powerful in the world, but is poorly designed, could be a "supercomputer". 

The earliest supercomputers from the 1960s were single system units whose impressive performance was due to material innovations and architecture. For example, the IBM 7030 Stretch (1961) made heavily use of transitor technologies instead of vacuum tubes. Operating three times faster, the CDC 6600 (1964) made extensive use of peripheral processes and refrigeration, leaving IBM somewhat shocked that a such small company of 34 could produce a machine.

Without doubt the most amazing machine of the period was the Cray-1, chiefly designed by Seymour Cray, who had formed his own company from Control Data Corporation.  First released in 1975, this series of supercomputers used integrated circuits, vector processing with registers, and liquid Freon for cooling. Its replacement, the Cray X-MP, was a direct successor in terms of architecture, where its successor, the Cray 2, was released in 1985 had a new design. Between them, the three systems (Cray 1, Cray X-MP, Cray 2), were the most powerful systems in the world from 1975 to 1990.

Supercomputers from this era typically only had a relatively small number of processors. Massive processing in a single system unit became dominant in the 1990s, starting with systems like the Numerical Wind Tunnel of Japan which had a pipeline of 166 vector processors, the Intel Paragon, which could have up to 4000 processors on a grid, and eventually the mesh-based ASCI Red, the latter being particularly famous for being the first machine to reach over 1 teraflop, and which operated for almost ten years.

As a logical follow-on, today supercomputers invariably make use of cluster architecture. Clustered computing is when two or more computers serve a single resource.  This improves performance and provides redundancy in case of failure system. To describe simply, there are a collection of smaller computers strapped together with a high-speed local network (e.g., Myrinet, InfiniBand, 10 Gigabit Ethernet), although a low-speed network system could certainly be used instead, and often is for those who wish to build inexpensive clusters for testing purposes. 

By the way of analogy consider a horse and cart as a computer system and the load as the computing tasks. If one wants to move a greater load there is essentially three options. 

* Re-arrange the load so it is more efficiently arranged. This is analogous to improving the code. It can help, and help significantly, but its ultimately limited.
* Purchase a bigger cart and a bigger horse to move the load. This is analogous to buying a bigger computer and getting better software. In  computing, this rapidly develops decreasing returns. 
* Distribute the load among several carts and horses, managed by a teamster. This is analogous to parallel processing in a cluster. It is the  most cost-efficient and most scalable method. 

The clustered HPC is the most efficient, economical, and scalable method, and for that reason it dominates supercomputing today.

Further, with a cluster architecture, applications can be parallelised across them. Parallel computing refers to the submission of jobs or processes over multiple processors and by splitting up the data or tasks between them. A (trivial) analogous example of a data parallel would be the generation and recording of random dice results. In a serial manner, one would roll the dice, record the number, then loop over this sequence for the number of results desired. In a parallel system, one simply rolls all the dice and then records the results. Note that of course this assumes that the order of the die rolls is not important. An analogous  example of task parallelism is driving a car; the "sight processor" keeps track of the environment, the "foot" processor manages breaking and acceleration, the "hand processor" conducts the steering and gear changes (in communication with the foot processor if a manual clutch is used, and the entire program engaged in "message passing" to each other for a coordinated result. As this example should illustrate, real world problems often parallel.

Supercomputing metrics are popularly measured by the number of teraflops (floating point operations per second), using the LINPACK library, which performs linear algebra calculations. Whilst the library itself has been largely replaced by LAPACK (Linear Algebra Package) it still used as a benchmarking tool. Every six months results based on this measurement are published by the Top500. Another metric, the Green500, takes the Top500 list and calculates the energy efficiency, based on FLOPS per watt.

Floating point operations per second is a well known metric, but not necessarily the best - the overall performance of a computer system cannot really be measured by one metric. The HPC Challenge, in comparison, uses seven tests which cover floating point calculation speed, matrix calculations, sustainable memory bandwidth, paired processor communications, random memory updates, discrete Fourier transforms, and communication bandwidth and latency. Of course with several different metrics, it is more difficult to determine which is the best system overall. 

In contrast, scientific computing is the software applications used by the scientific community to aid research. Scientific computing does not necessarily equate with high performance computing, or the use of clusters; it is whatever scientists use and do which usually is not high performance computing (even if it should be – hence this and related books). This skills gap is a major problem and must be addressed because as the volume, velocity, and variety of datasets increases then researchers will need to be able to process this data.

The following image displays a simplified version of a high-performance compute cluster. There are two "head" nodes, the login node for users and the management node for system administrators. Smaller clusters may only have one head node which combines user logins and management. In this particular schema however, two are assumed. The management node includes the job scheduler which decides when and where jobs will run. It receives updates from a resource manager which keeps track of what's being used and typically has a daemon process on each compute node. Users connect to the login node and submit their jobs which makes resource requests and is then sent to the scheduler. When the scheduler. decides the job can run it is submitted to one or more compute nodes, which can communicate to each other within each node or between each other through the switching fabric. Depending on the configuration, they may also be connecting to network attached storage devices for data. 

## 1.5 Supercomputers and FOSS

Free and open-source software (FOSS) means that anyone is freely licensed to use, copy, and change the software in any way. This implies that the source code is available. It contrasts with various forms of proprietary software, where the software is under restrictive copyright and the source code is usually hidden from the users as a binary file. In many respects this means treating software development like an academic project ensuring that there is the potential for peer review.

The first thing that must be accepted is that FOSS operating systems and applications dominates supercomputing and has done so for some time. As of November 2015, Linux systems made up 494 of the top 500 (98.8%), and various forms of UNIX another 6 (1.2%). If one goes several years into the past to June 2009 the distribution was 88% Linux, 5.8% mixed, 4.8% UNIX, and 0.8% MS-Windows. In June 2004 it was 58.2% Linux, 36.4% UNIX, 2% BSD-based, and a handy 3.2% Not Available. One has to go back into the last century (e.g., June 1999) to where Linux was not dominant – and then it was the various proprietary UNIXes that had the majority (UNIX 96.4%, Linux 3.4%). 

Today, whether measured by the total number of systems, the performance of the systems, or the highest ranking systems, it is Linux, Linux, and Linux in the high performance computing world.

There are grounded reasons for this; it didn't happen by accident. Most organisations in the high performance computing space are, in principle, vendor neutral (for example VPAC's first cluster used a True64 proprietary UNIX operating system). This means that they will use the best technology for the job, with best being a combined metric of effectiveness, efficiency, and price. It just so happens that the best operating system technology for high performance, clustered systems and parallel computing is a UNIX-like operating system such as GNU/Linux.

Firstly, GNU/Linux scales and does so with stability and efficiency. From the outset there has been an insistence that all good code has a place in the kernel, regardless of hardware and size, with an explicit orientation to ensuring that the parts interact smoothly. There are extensive modules to a minimal base kernel which can be applied on complex systems, or left out for smaller and simpler systems. Overall, the code base has been well maintained and ensures flexibility with forking for different types of hardware. 

Secondly, critical software such as the Message Parsing Interface (MPI) and nearly all scientific programs are designed to work with GNU/Linux in the first instance and many of those come from a very long lead time in development. Linux (1991) derives from Unix (1971), which itself derives from MULTICS (origins from 1964). A great deal of scientific applications can trace their lineage back to Unix systems. Organisations like CERN even produce their own distributions of Linux (Scientific Linux), along with making significant code contributions to a variety of applications.

Thirdly, the operating system and many applications are provided as "free and open source", which means that not only are there are significant financial savings, were also much better placed to improve, optimize and maintain specific programs. In other words, there are social collaboration reasons, as well as financial reasons, for the choice of free software.  There is also security benefits, both in the software architecture, and protection from malware. Such optimisation (configuring against particular compilers and processors) may take some time – it's not a matter of clicking through a *.exe file – but the time savings can be quite notable, up to 20% for some computational heavy applications.

Finally, there is the command line. For most users a Graphic User Interface (GUI) is how they interact with a computer system, and there are some advantages with this, not the least being a usually intuitive visual representation for actions. However this takes up significant computer resources. In contrast a command-line interface provides a great deal more power and is very resource efficient. Running supercomputers with a GUI as the foundation is not a sound policy.

## 1.6 System Specification and Software

It is valuable for any user to have recorded the system specifications of the high performance compute cluster that they will be using. Many clusters will have a heterogeneous collection of processors, often partitioned into different queues, different interconnect systems, and different methods of storing data, along with different core distributions of the Linux operating system.

A configuration of the Trifid cluster (2015), would include the following as an example:

> 220 total system unit "nodes" (218 compute, login, and management).
> 3,008 cores of Intel E5-2670 (trifid001-trifid179) 
> 5 nodes with GPUs MICs (trifid180-tridid184)
> 500 cores of Intel E5-2660v2 (trifid191-trifid218)
> 4 GB PC1600 memory per core (64-80 GB per node), with 6 nodes having 16 GB per core (256 GB per node)
> FDR Infiniband
> CentOS 6 Linux
> 40TB NFS for home
> 165TB Lustre DDN S2A high-performance array

There is close to four hundred scientific software applications and versions installed, including compiler suites (GCC, Intel, PGI), computational chemistry (Gromacs, LAMMPS, Schrodinger, VMD), bioinformatics (BEAST, BLAST, MrBayes), Math Libraries (ATLAS, Boost, FFTW, LAPACK, Scalapack), fluid dynamics and engineering (Abaqus, Ansys, Fluent, OpenFOAM), mathematics and statistics (Octave, R, Matlab), climate and weather modelling (Geant, WRF), and many more. A complete list will be illustrated through the use of the module command, illustrated later in this manual.

The following is a non-comprehensive list of the software that's often available on on HPC clusters. It is taken from the software that was on VPAC's last two clusters, Tango and Trifid, but serves as an illustrative collection.

**Abaqus**: Abaqus is a package for finite element analysis, usually applied in mechanical engineering. Abaqus is available at the following URL : http://www.3ds.com/products-services/simulia/products/abaqus/

**ABWT**: The AB WT (Whole Transcriptome) Analysis Pipeline is an off-instrument SOLiD data analysis software package for the analysis of experiments run. It maps reads from a transcript sample to a reference genome and assigning tag counts to features of the reference genome. ABWT is available at the following URL: http://solidsoftwaretools.com/gf/project/transcriptome/

**ACML**: The AMD Core Math Library (ACML) is a set of optimised and threaded math routines, especially useful for computational-intensive tasks. The AMD Core Math Library is available at the following URL: http://developer.amd.com/tools-and-sdks/archive/amd-core-math-library-acml/

**AFNI**: AFNI (Analysis of Functional NeuroImages) is a set of C programs for processing, analyzing, and displaying functional MRI (FMRI) data - a technique for mapping human brain activity. AFNI is available at the following URL: https://afni.nimh.nih.gov/afni/

**AMBER**: Assisted Model Building with Energy Refinement (AMBER) is a family of force fields for molecular dynamics of biomolecules. AMBER is also the name for the molecular dynamics software package that simulates these force fields. AMBER is available at the following URL: http://ambermd.org/

**ANSYS**: ANSYS is an engineering simulation for general-purpose finite element analysis and computational fluid dynamics. ANSYS can be found at the following URL: http://www.ansys.com/

**Ant**: Apache Ant as an automated software build processes, like Make etc, but is implemented using the Java language, requiring the Java platform, and best suited to building Java projects. Ant can be found at the following URL: http://ant.apache.org/

**Armadillo**: Armadillo is a C++ linear algebra library (matrix maths) that supports integer, floating point and complex numbers, as well as a subset of trigonometric and statistics functions. Armadillo can be found at the following URL: http://arma.sourceforge.net/

**Atlas**: Automatically Tuned Linear Algebra Software (ATLAS) is a software library for linear algebra, providing an open source implementation of BLAS APIs for C and Fortran77. ATLAS is available at the following URL: http://math-atlas.sourceforge.net/

**Autodock**: AutoDock is a suite of docking tools designed to predict how small molecules, such as substrates or drug candidates, bind to a receptor of known 3D structure. AutoDock is available at the following URL: http://autodock.scripps.edu/

**AutoGrow**: AutoGrow uses AutoDock as the selection operator. For each generation, all ligand files are docked to the target protein, and for each dock, AutoDock returns a predicted binding affinity. AutoGrow (Java DOCK), uses fragment-based growing, docking, and evolutionary techniques. AutoGrow is available from the following URL: http://autogrow.ucsd.edu/

**BEAM**: BEAMnrc is a general purpose Monte Carlo simulation system for modelling radiotherapy sources which is based on the EGSnrcMP code system for modelling coupled electron and photon transport. BEAMnrc is available at the following URL: http://www.nrc-cnrc.gc.ca/eng/solutions/advisory/beam_index.html

**BigDFT**: BigDFT is a Density Functional Theory (DFT) parallel electronic structure code using a wavelet basis set. Wavelets form a real space basis set distributed on an adaptive mesh. Surfaces and isolated systems can be simulated with the proper boundary conditions and GTH or HGH pseudopotentials are used to remove the core electrons. BigDFT is available at the following URL: http://bigdft.org/

**Binutils**: The GNU Binary Utilities, or binutils, is a collection of programming tools for the manipulation of object code in various object file formats. They are typically used in conjunction with GNU Compiler Collection, make, and GDB. The GNU Binutils are available from the following URL: https://www.gnu.org/software/binutils/

**BLAST**: The NCBI Basic Local Alignment Search Tool (BLAST) finds regions of local similarity between DNA sequences sequences and can be used to infer functional and evolutionary relationships between sequences as well as help identify members of gene families. 

**Blender**: Blender is a 3D graphics application used for modeling, UV unwrapping, texturing, rigging, water simulations, skinning, animating, rendering, particle, and other simulations, non-linear editing, compositing, and creating interactive 3D applications. The image (right) was created with Blender. 

**BLT**: The BLT library is an extension to Tcl/Tk. that adds plotting widgets, a geometry manager, a canvas item, and several new commands to Tk. 

**Bonnie++**: Bonnie++ is a benchmark suite that is aimed at performing a number of simple tests of hard drive and file system performance. 

**Boost**: The Boost C++ libraries are a collection of open source libraries that extend the functionality of C++. They range from general-purpose libraries like the smart_ptr library to libraries primarily aimed at other library developers and advanced C++ users, like the metaprogramming template (MPL) and DSL creation (Proto). 

**BWA**: The Burrows-Wheeler Alignment (BWA) Tool is a fast light-weight tool that aligns short sequences to a sequence database, such as the human reference genome. 

**CGAL**: CGAL (Computational Geometry Algorithms Library) provides efficient and reliable geometric algorithms in the form of a C++ library data structures and algorithms for triangulations, Voronoi diagrams, polygons and polyhedra, arrangements of curves and their applications, mesh generation, geometry processing, subdivision and parameterization, as well as estimation of local differential properties, and approximation of ridges and umbilics, alpha shapes, convex hull algorithms, search structures , interpolation, shape analysis, fitting, and distances, and kinetic data structures. 

**Circuitscape**: Circuitscape is a free, open-source program which borrows algorithms from electronic circuit theory to predict patterns of movement, gene flow, and genetic differentiation among plant and animal populations in heterogeneous landscapes. 

**CDAT**: The Climate Data Analysis Tools (CDAT) is a software infrastructure that uses Python. The CDAT subsystems, implemented as Python modules, provide access to and management of gridded data (Climate Data Management System or CDMS); large-array numerical operations (Numerical Python); and visualization (Visualization and Control System or VCS). The image (left) is a composite of CDAT windows. 

**CDO**: The Climate Data Operators (CDO) software is a collection of many operators for standard processing of climate and NWP model output. 

**CPMD**: The Car-Parrinello Molecular Dynamics code is a parallelized plane wave/pseudopotential implementation of Density Functional Theory, particularly designed for ab-initio molecular dynamics. 

**CUDA**: The NVIDIA CUDA Toolkit includes accelerated BLAS and FFT implementations, parallel thread execution and CUDA command line compiler. CUDA (an acronym for Compute Unified Device Architecture) is a parallel computing architecture developed by NVIDIA, the computing engine in NVIDIA graphics processing units (GPUs). 

**DAWN**: Drawer for Academic WritiNgs (DAWN) is a renderer which reads 3D geometrical data and visualizes with a vectorized 3D PostScript processor with analytical hidden line/surface removal. 
Desmond: Desmond is a software package developed at D.E. Shaw Research to perform high-speed molecular dynamics simulations of biological systems on parallel systems that is available as part of Schrodinger or as a stand-alone package. 

**DeMon**: DeMon (Density of Montréal) is a software package for density functional theory (DFT) calculations. It uses the linear combination of Gaussian-type orbital (LCGTO) approach for the self-consistent solution of the Kohn-Sham (KS) DFT equations. The calculation of the four-center electron repulsion integrals is avoided by introducing an auxiliary function basis for the variational fitting of the Coulomb potential. 

**DL POLY**: DL_POLY is a general purpose classical molecular dynamics (MD) simulation software developed at Daresbury Laboratory by I.T. Todorov and W. Smith. 

**DOCK**: DOCK simulates the problem of docking molecules to each other. In the field of molecular modeling, docking is a method which predicts the preferred orientation of one molecule to a second when bound to each other to form a stable complex. 

**Ecat**: Comprehensive C Library and utilities to handle Ecat, Interfile and Analyze datasets. Allows conversion, and access to file internals. 

**EGSnrc**: EGSnrc is a package for the Monte Carlo simulation of coupled electron-photon transport. 

**EM3D**: EM3D is an integrated software application designed to facilitate the analysis and visualization of electron microscope (EM) tomography data by cellular and molecular biologists. 

**Espresso**: Molecular dynamics simulation of "coarse-grained" bead-spring models as they are used in soft-matter research in physics, chemistry and molecular biology. 

**EMBOSS**: The European Molecular Biology Open Software Suite (EMBOSS) is a molecular biology tool which copes with data in a variety of formats and even allows transparent retrieval of sequence data from the web. 

**FDS**: Fire Dynamics Simulator (FDS) is a computational fluid dynamics model of fire-driven fluid flow. The software solves numerically a form of the Navier-Stokes equations appropriate for low-speed, thermally-driven flow, with an emphasis on smoke and heat transport from fires.

**FFTW**: "Fastest Fourier Transform in the West" (FFTW) is a C subroutine library for computing the discrete Fourier transform (DFT) in one or more dimensions, of arbitrary input size, and of both real and complex data (as well as of even/odd data, i.e. the discrete cosine/sine transforms or DCT/DST). 

**FLUENT**: FLUENT is a flexible general-purpose computational fluid dynamics package used for engineering simulations of all levels of complexity. 

**Freeglut**: freeglut is a completely opensource alternative to the OpenGL Utility Toolkit (GLUT) library. 

**FreeSurfer**: FreeSurfer is a set of automated tools for reconstruction of the brain’s cortical surface from structural MRI data, and overlay of functional MRI data onto the reconstructed surface. 

**FSL**: FSL is a comprehensive library of analysis tools for FMRI, MRI and DTI brain imaging data. 

**G4beamline**: G4Beamline is a particle tracking and simulation program based on the Geant4 toolkit that is specifically designed to easily simulate beamlines and other systems using single-particle tracking. 

**GAMESS**: General Atomic and Molecular Electronic Structure System (GAMESS) is a program for ab initio molecular quantum chemistry. A variety of molecular properties, ranging from simple dipole moments to frequency dependent hyperpolarizabilities may be computed. 

**GATE**: The Geant4 Application for Emission Tomography (GATE) provides comprehensive physics modeling abilities of the general purpose codes while making it possible to intuitively configurate an Emission Tomography simulation. GATE allows the accurate description of time-dependent phenomena such as source or detector movement and source decay kinetics. 

**Gaussian**: Gaussian provides electronic structure modeling which can be applied to both stable species and compounds which are difficult or impossible to observe experimentally. Gaussian can be used for comprehensive investigations of molecules and reactions, predicting and interpreting spectra, exploring diverse chemical arenas, and complex modelling. 

**GCC**: The GNU Compiler Collection (GCC) is a compiler system produced by the GNU Project supporting various programming languages including C and C++ with front ends for Fortran, Pascal, Objective-C, Java, Ada and others. 

**GD**: The Graphics Draw (GD) Library is a graphics software library for dynamically manipulating images. Its native programming language is ANSI C, but it has interfaces for many other programming languages. 

**GDB**: The GNU Debugger (GDB) is the standard debugger for the GNU software system. It is a portable debugger that runs on many Unix-like systems and works for many programming languages, including Ada, C, C++, FreeBASIC, FreePascal and Fortran. 

**GEANT**: GEometry ANd Tracking (GEANT) is a simulation software designed to describe the passage of elementary particles through matter, using Monte Carlo methods. 

**GENREG**: Generator fuer regulaere Graphen (GENREG) generates regular graphs for the chosen parameters and constructs them. 

**GEOS**: GEOS (Geometry Engine - Open Source) is a C++ port of the Java Topology Suite (JTS). As such, it aims to contain the complete functionality of JTS in C++. This includes all the OpenGIS Simple Features for SQL spatial predicate functions and spatial operators, as well as specific JTS enhanced topology functions. 

**GLUE**: Grid LSC User Environment (GLUE) is a collection of utilities for running data analysis pipelines for online and offline analysis as well as accessing various grid utilities. It also provides the infrastructure for the segment database. 

**GMP**: GNU MP (GMP) is a library for arbitrary precision arithmetic, operating on signed integers, rational numbers, and floating point numbers. It has a rich set of functions, and the functions have a regular interface. It is particularly designed for speed. 

**GotoBLAS**: The GotoBLAS codes are a fast implementation of the Basic Linear Algebra Subroutines. The advantage is fast calculation which makes use of all instruction sets of modern processors. 

**Grace**: Grace is a tool to make two-dimensional plots of numerical data. It combines the convenience of a graphical user interface with the power of a scripting language which enables it to do sophisticated calculations or perform automated tasks. 

**Graphviz**: Graphviz is open source graph visualization software with several main graph layout programs, interactive graphical interfaces, auxiliary tools, libraries, and language bindings. 

**GROMACS**: The GROningen MAchine for Chemical Simulations (GROMACS) is a molecular dynamics simulation package that is very fast and has support for different force fields. It is notable for being used for protein folding at Folding@Home. 

**Gridpro**: Gridpro is an object-oriented, multiblock grid generator that provides users the capability to build topology, edit surfaces, set CFD boundary conditions, and view grids. 

**GSL**: The GNU Scientific Library (GSL), is a collection of numerical routines for scientific computing. The library provides a wide range of mathematical routines such as random number generators, special functions and least-squares fitting. 

**H5utils**: The package h5utils is a set of utilities for visualization and conversion of scientific data in the free, portable HDF5 format along with programs to convert HDF5 datasets into the formats required by other free visualization software (e.g. plain text, Vis5d, and VTK). 

**Harminv**: Harminv is used to solve problems of harmonic inversion - given a discrete-time, finite-length signal that consists of a sum of finitely-many sinusoids (possibly exponentially decaying) in a given bandwidth, it determines the frequencies, decay constants, amplitudes, and phases of those sinusoids. It can, in principle, provide much better accuracy than straightforwardly extracting FFT peaks. 

**HDF5**: HDF5 is a data model, library, and file format for storing and managing data. It supports an unlimited variety of datatypes, and is designed for flexible and efficient I/O and for high volume and complex data. 

**Hadoop**: Apache Hadoop is a framework for running applications on large clusters built of commodity hardware. The Hadoop framework transparently provides applications both reliability and data motion. 

**HyperWorks**: Altair HyperWorks is a computer-aided engineering simulation software platform that includes modeling, analysis, visualization and data management solutions for linear, nonlinear, structural optimization, fluid-structure interaction, and multi-body dynamics applications. 

**Hypre**: Hypre is a library of high performance preconditioners that features parallel multigrid methods for both structured and unstructured grid problems. 

**IDL**: Interactive Data Language (IDL) is a programming language used for data analysis. IDL is vectorized, numerical, and interactive, and is commonly used for interactive processing of large amounts of data (including image processing). 

**IMOD**: IMOD is a set of image processing, modeling and display programs used for tomographic reconstruction and for 3D reconstruction of EM serial sections and optical sections. 

**Intel**: Intel compilers are optimised for its hardware platforms to minimise stalls and produce code that executes in the fewest number of cycles. Intel's suite of compilers has front ends for C, C++, and Fortran. 

**IPRSCAN**: IntroProScan (iprscan) is a tool that combines different protein signature recognition methods into one resource. InterProScan is more than a simple wrapping of sequence analysis applications since it requires performing a considerable data look-ups from some databases and program outputs. 

**ISP**: In-situ Partial Order (ISP) is a dynamic verifier for MPI Programs. ISP will help you debug your programs, and graphically show you all the possible send/receive matches, barrier synchronizations, etc. 

**ITKSNAP**: ITK-SNAP is used to segment structures in 3D medical images, providing semi-automatic segmentation using active contour methods, as well as manual delineation and image navigation. 

**JAIDA**: JAIDA is a Java (J) implementation of the Abstract Interfaces for Data Analysis (AIDA). JAIDA allows Java programmers to create histograms, scatter plots and tuples, perform fits, view plots and store and retrieve analysis objects from files. 

**JAS3**: JAS3 is a follow on from Java Analysis Studio (JAS), a general purpose data analysis tool for histograms, XY plots, scatterplots, export of plots in a variety of formats, and AIDA compliant analysis system. 

**JasPer**: JasPer is a collection of software (i.e., a library and application programs) for the coding and manipulation of images. 

**Java**: The Java programming language is an object-orientated language similar to C and C++ in syntax, but with a simpler object model and fewer low-level facilities. It is designed for developing cross-playment applications. 

**KOBAS**: KEGG Orthology Based Annotation System (KOBAS) is a bioinformatics Python application. KOBAS can assign appropriate KO terms for queried sequences based on similarity search, and it can further discover enriched KO terms among the annotation results by frequency of pathways or statistical significance of pathways. 

**LAL**: The LSC Algorithm Library (LAL) is a collection of routines written in ANSI C99 for gravitational wave data analysis. 

**LAMMPS**: Large-scale Atomic/Molecular Massively Parallel Simulator (LAMMPS) has potentials for soft materials and solid-state materials (metals, semiconductors) and coarse-grained or mesoscopic systems. It can be used to model atoms or as a parallel particle simulator at the atomic, meso, or continuum scale. The image (left) is atom-to-continuum coupling using LAMMPS. 

**LatentGOLD**: Latent GOLD is a latent class and finite mixture program. Latent GOLD contains separate modules for estimating three different model structures; LC Cluster models, DFactor models, and LC Regression models. 

**LMF**: The Local Maximum Fitting (LMF) algorithm firstly finds local maximums within a certain time window, and regenerate the time series data as a sum of harmonic curves. The number of harmonic curves is limited by AIC (Akaike Information Criterion) to avoid over-fitting. 

**LP_SOLVE**: LP_SOLVE is a linear programming code written in ANSI C, which has solved problems as large as 30,000 variables and 50,000 constraints. Lp_solve can also handle (smaller) integer and mixed-integer problems. 

**MADYMO**: MAthematical DYnamic MOdels (MADYMO) is a multibody dynamics solver and frequently used for automobile occupant safety/injury calculations. 

**Maq**: Maq builds mapping assemblies from short reads generated by the next-generation sequencing machines. It is particularly designed for Illumina-Solexa 1G Genetic Analyzer, and has preliminary functions to handle ABI SOLiD data. 

**Marmot**: Marmot is a library written in C++, which has to be linked to your application in addition to the existing MPI library. It will check if your application conforms to the MPI standard and will issue warnings if there are errors or non-portable constructs. 

**Mash**: Mash is a toolkit for multimedia using IP multicast. The Mash toolkit is an outgrowth of the MBone tools (e.g.--sdr, vic, vat) developed to support streaming audio and video applications. 

**Matio**: Libmatio is an open-source library for reading/writing Matlab MAT files. This library is designed for use by programs/libraries that do not have access or do not want to rely on Matlab's libmat shared library. 

**MATLAB**: MATLAB (R) is a numerical computing environment allowing matrix manipulation, plotting of functions and data, implementation of algorithms etc. 

**MEEP**: MIT Electromagnetic Equation Propagation (MEEP) is a finite-difference time-domain (FDTD) simulation software package developed at MIT to model electromagnetic systems. 

**MEME**: MEME provides tools for discovering and using protein and DNA sequence motifs, a pattern of nucleotides or amino acids that appears repeatedly in a group of related DNA or protein sequences. 

**Mesa**: Mesa is an implementation of the OpenGL specification for rendering interactive 3D graphics, usable in a variety of environments from software emulation to GPUs. 

**Metaio**: Metaio contains a library for parsing LIGO_LW Table files and can read XML files compressed with the gzip compression algorithm. 

**MFIX**: MFIX (Multiphase Flow With Interphase Exchanges) has been developed by the U.S. National Energy Technology Laborartory, providing transient data on the three-dimensional distribution of pressure, velocity, temperature, and species mass fractions. 

**MGLTools**: Developed by the Molecular Graphics Laboratory (MGL) MGLTools, is used for visualization and analysis of molecular structures. It includes AutoDockTools (ADT), Python Molecular Viewer (PMV) and Vision, a visual-based programming environment. 

**Minibaum**: Minibaum3 is a small C program which has been used for hypohamilton graphs and angular momentum graphs. 

**Modules**: The environment modules package package provides for the dynamic modification of a user's environment. 

**Molden**: Molden displays molecular density from the ab initio packages GAMESS and GAUSSIAN and others. Molden reads all the required information from the GAMESS / GAUSSIAN outputfile. Molden is capable of displaying molecular orbitals, electron density and molecular minus atomic density. 

**Molekel**: Molekel is a molecular visualization program that import and exports data using OpenBabel and displays molecules with different rendering styles, generates iosurfaces, and animates. 

**Mono**: Mono is used to develop an Ecma standard compliant, .NET-compatible set of tools, including a C# compiler and a Common Language Runtime. 

**MOPAC**: Molecular Orbital PACkage (MOPAC) is a semiempirical quantum chemistry program based on Dewar and Thiel's NDDO approximation. 

**MPFR**: The GNU MPFR library is a C library for multiple-precision floating-point computations with correct rounding. 

**mpiBLAST**: mpiBLAST is an implementation of the bioinformatics software NCBI BLAST, which finds regions of local similarity between sequences. Through database fragmentation, query segmentation, intelligent scheduling, and parallel I/O, it improves performance by several orders of magnitude. 

**MPICH**: MPICH is a free and portable implementation of MPI, a standard for message-passing for distributed-memory applications used in parallel computing. 

**MVAPICH** and **MVAPICH2**: MVAPICH/MVAPICH2 are implementations of MPI for computing systems and servers using InfiniBand, 10GigE/iWARP and RoCE & etc networking technologies. 

**Mpiexec**: Mpiexec is a replacement program for the script mpirun, which is part of the mpich package. It is used to initialize a parallel job from within a PBS batch or interactive environment. Open MPI's mpirun and mpiexec are synonyms for the underlying launcher, orterun (the Open Run-Time Environment layer in Open MPI, or ORTE).

**MrBayes**: MrBayes conducts Bayesian estimation of phylogeny based on the posterior probability distribution of trees, which is the probability of a tree conditioned on the observations. 

**MUMmer**: MUMmer is rapidly aligns entire genomes, including incomplete genomes and contigs from a shotgun sequencing program. 

**NAMD**: NAnoscale Molecular Dynamics (NAMD) is a molecular dynamics simulation package written using the Charm++ parallel programming model, often used to simulate large systems (e.g., millions of atoms). 

**Nauty**: nauty is a LAMMPS (Large-scale Atomic/Molecular Massively Parallel Simulator) program for computing automorphism groups of graphs, digraphs and can also produce a canonical labelling. 

**NCARG-NCL**: NCAR is the National Centre for Atmospheric Research, NCARG is a graphics library, maps database and applications for the same, and NCAR Command Language (NCL) is interpreted language for the above. 

**NEI Nastran**: NEi Nastran is a finite element analysis (FEA) solver used to generate 1.5 VPAC's Software solutions for linear and nonlinear stress, dynamics, and heat transfer characteristics of structures and mechanical components. The image (right) is a Nastran model. 

**netCDF**: The Unidata network Common Data Form (netCDF) is an interface for scientific data access and a library that provides an implementation of the interface. The netCDF library also defines a machine-independent format for representing scientific data. Together, the interface, library, and format support the creation, access, and sharing of scientific data. 

**NS**: Network Simulator (NS) is a discrete event simulator targeted at networking research. Ns provides substantial support for simulation of TCP, routing, and multicast protocols over wired and wireless (local and satellite) networks. 

**NUMPY**: NumPy is numerical package for scientific computing with Python. It provides numerical array objects, linear algebra and other capabilities. 

**Octave**: GNU Octave is a high-level language, primarily intended for numerical computations and is highly compatible with MATLAB. 

**Open Babel**: Open Babel is a chemical toolbox which can read, write and convert over 90 chemical file formats, and filter and search molecular files using SMARTS and other methods. 

**OpenFOAM**: Open Field Operation and Manipulation (OpenFOAM) is primarily a C++ toolbox for the customisation and extension of numerical solvers for continuum mechanics problems, including computational fluid dynamics. 

**OpenMPI**: Open MPI is a message passing interface that combines the merger of three major MPI implementations (FT-MPI, LA-MPI, and LAM/MPI) to create a complete MPI implementation. MPI is a language-independent communications protocol used to program parallel computers. 

**Padb**: Padb works as a parallel front end to gdb allowing it to target parallel applications. 

**Pahole**: Analyzes your code and identifies unused memory holes in data structures, and suggests re-ordering to improve memory usage and speed. 

**Paraview**: ParaView is a data analysis and visualisation application. The data exploration can be done interactively in 3D or programmatically using ParaView's batch processing capabilities. ParaView was developed to analyze extremely large datasets. 

**PBSssh**: PBSssh: Is a Bourne-Again shell executable for Portable Batch Script. 

**PHYLIP**: PHYLIP (the PHYLogeny Inference Package) is a package of programs for inferring phylogenies (evolutionary trees). 

**PCRE**: Perl-Compatible Regular Expression (PCRE) library is a set of functions that implement regular expression pattern matching using the same syntax and semantics as Perl 5. 

**Perl**: Perl is a high-level, general-purpose, interpreted, dynamic programming language designed as a a general-purpose Unix scripting language to make report processing easier. 

**PETSc**: PETSc is a suite of data structures and routines for solution of scientific applications modeled by partial differential equations. 

**PGI**: PGI compilers are a set of Fortran, C and C++ compilers for High Performance Computing Systems from Portland Group. 

**Phaser**: Phaser consists of CCP4 and BLT. The former is used to determine macromolecular structures by X-ray crystallography, and other biophysical techniques. BLT has been previously described. 

**POV-Ray**: Persistence of Vision Raytracer (POV-RAY) is a high-quality for creating three-dimensional graphics. Features include radiosity, photon mapping, focal blur, and other photorealistic capabilities. 

**Parallel NETCDF**: Parallel NETCDF is an implementation of the Network Common Data Form which supports parallel I/O.

**Python**: Python is a general-purpose high-level programming language that aims for high levels of readability. It features a fully dynamic type system and automatic memory management. Like other dynamic languages it is often used as a scripting language. 

**Quilt**: Quilt is a tool to manage large sets of patches by keeping track of the changes each patch makes. Patches can be applied, unapplied, refreshed, etc. 

**R**: R is a programming language and software environment for statistical computing, where it is a defacto standard, and graphics. 

**Rosetta**: Rosetta is a molecular modeling software package for understanding protein structures, protein design, protein docking, protein-DNA and protein-protein interactions. 

**rysnc**: Rsync copies files either to or from a remote host, or locally on the current host. It is quick because it only copies changed files. 

**SABRE**: Software for the Analysis of Recurrent Events (SABRE) is a program for the statistical analysis of multi-process random effect response data. These responses can take the form of binary, ordinal, count and linear recurrent events. 

**Schrodinger**: Schrodinger is a suite of molecular modelling and simulation, lead discovery, and optimisation applications that support basic modelling through advanced pharmaceutical research. The image (left) is Schrodinger Maestro.

**Scilab**: Scilab is a scientific software package for numerical computations which includes hundreds of mathematical functions, sophisticated data structures (including lists, polynomials, rational functions, linear systems), an interpreter and a high level programming language. 

**SCons**: SCons is a software construction tool (build tool, or make tool) implemented in Python, that uses Python scripts as "configuration files" for software builds. 

**Semtex**: Semtex is a family of spectral element simulation codes. The spectral element method is a high-order finite element technique that combines the geometric flexibility of finite elements with the high accuracy of spectral methods. 

**smem**: smem is a memory reporting tool, notable for its ability to report proportional set size (PSS), which is a more meaningful representation of the amount of memory used by libraries and applications in a virtual memory system. 

**SPEC**: The Standard Performance Evaluation Corporation (SPEC) that has a standard set of relevant benchmarks for computer systems. SPEC CPU2006 measures the performance of the processor, memory architecture, and compilers. 

**Spinner**: Spinner is an anti-idle program that displays a little "spinning" ASCII character in the top left corner of your terminal. Spinner is useful for keeping ssh links from dropping due to inactivity. 

**SRB**: Storage Resource Broker (SRB) is a Data Grid Management System (DGMS) or simply a logical distributed file system based on a client-server architecture which presents the user with a single global logical namespace or file hierarchy. 

**Stata**: Stata is a integrated statistical package that provides data analysis, data management, and graphics that includes linear mixed models, multivariate methods, multinominal probit and Mata, a matrix language. 

**SVMperf**: Support Vector Machine for Multivariate Performance Measures (SVMperf) is an implementation of the Support Vector Machine (SVM) formulation for optimizing multivariate performance measures and implements alternative structural formulation of the SVM optimization problem for conventional binary classification with error rate and ordinal regression. 

**Szlib**: Szip is a freeware portable general purpose lossless compression program. 

**TAU**: Tuning and Analysis Utilities (TAU) is a program and performance analysis tool for high-performance parallel and distributed computing with a suite of tools for static and dynamic analysis of programs written in C, C++, FORTRAN 77/90, Python, High Performance FORTRAN, and Java. 

**Tcl**: Tool command language (Tcl) is a scripting language commonly used for rapid prototyping, scripted applications, GUIs and testing. 

**Tk**: Tk is an a library of basic elements ("widgits") for building a graphical user interface. It is typically used with Tcl. 

**tkcon**: tkcon is a replacement for the standard console that comes with Tk which provides many more features than the standard console. 

**TORQUE**: Terascale Open-Source Resource and QUEue Manager (TORQUE) is a distributed resource manager with notable fault tolerance, scalability and a useful scheduling interface. 

**UltraScan**: UltraScan is used for the analysis of ultracentrifugation data. The software features an integrated data editing and analysis environment in graphical user interface, popular sedimentation and equilibrium analysis methods with support for velocity and equilibrium experiments, single and multi-channel centerpieces, absorbance and interference optics. 

**Underworld**: Underworld is a 3D-parallel geodynamic modelling framework capable of deriving viscous / viscoplastic thermal, chemical and thermochemical models consistent with tectonic processes, such as mantle convection and lithospheric deformation over long time scales. 

**Valgrind**: Valgrind is an instrumentation framework for building dynamic analysis tools. 

**VASP**: VASP (Vienna Ab-initio Simulation Package) is a package for performing ab-initio quantum-mechanical molecular dynamics (MD) using pseudopotentials and a plane wave basis set. 

**Velvet**: Velvet is a set of algorithms manipulating de Bruijn graphs for genomic Sequence assembly. It was designed for short read sequencing technologies, such as Solexa or 454 Sequencing. The tool takes in short read sequences, removes errors then produces high quality unique contigs. 

**VisualDOC**: VisualDOC is a general-purpose optimization tool that allows the user to quickly add design optimization capabilities to almost any analysis program. 

**VMD**: Visual molecular dynamics (VMD) is a molecular modelling and visualization computer program. VMD is primarily developed as a tool for viewing and analyzing the results of molecular dynamics simulations. 

**WIEN2k**: WIEN2k performs quantum mechanical calculations on periodic solids. It uses the full-potential (linearized) augmented plane-wave and local-orbitals basis set to solve the Kohn–Sham equations of density functional theory. 

**Wine**: Wine Is Not an Emulator (Wine) allows Unix-like computer operating systems to execute programs written for Microsoft Windows. 

**WRF**: WRF (The Weather Research and Forecasting Model) is a mesoscale numerical weather prediction system designed to serve both operational forecasting and atmospheric research needs. The image (right) is a case study used in WRF from the data of the the U.S. East Coast storm of January 2000.

**XFOIL**: XFOIL is an interactive program for the design and analysis of subsonic isolated airfoils. 

**XMDS**: eXtensible Multi Dimensional Simulator (XMDS) is a numerical simulation package that integrates equation that converts XML files to a C++ program that integrates the equations. 

## 1.7 Accounts, Licensed Software, and Helpdesk

Invariably there will be  process for users to gain an account and access to a HPC cluster. They are relatively rare and expensive creatures, so the institutions that own them want to ensure some degree over control over who has access, and the systems administrators who manage it will have various technologies at their disposal. As a general rule, the degree of bureaucracy that one has to deal with will depend on a number of metrics, including security concerns, the relative expense of the cluster, demand and so forth.

By way of two examples, at VPAC, we allowed any researcher who was from a member university to apply for an account and membership to one or more projects. A representative of the member university approved the project and the project leaders were authorised to approve accounts. In contrast, access to the Rajin system, managed by the Australian National Computational Initiative, was determined by the National Computational Merit Allocation Scheme (NCMAS) which required submitting a completed member allocation application form to the allocation administrator m which would then be reviewed all applications on a quarterly basis, and advice the lead researchers of the outcome.

Usually users will belong to one of more groups, which may represent research projects. This is actually built into the operating system itself and will be discussed further as we delve into this subject matter. Often groups will have their own shared directories for common files, which all members of that group will have access to, in addition to one's own home, or personal, directory.

Regrettably a great deal of software – and sometimes common and popular software – comes with various restrictive licenses. In some cases these will be organised and paid for on the institutional level. In others, it will simply a case of ticking a box and agreeing to use it for academic and research purposes only – typically they want some recognition for this.

An example license is that for Gaussian which was required for all VPAC users to agree to.

> Use of the Gaussian software is conditional upon acceptance of the following conditions:    
1. I am not a member of a research group developing software competitive to Gaussian.    
2. I will stop using Gaussian on VPAC systems immediately and will notify VPAC (help@vpac.org) if there >is a change in my situation that would bring into question my status with respect to point 1. above.    
3. I will not copy the Gaussian software, nor make it available to anyone else.    
4. I will acknowledge Gaussian Inc. in published works to which Gaussian calculations on the VPAC >systems contributed.   

Most HPC clusters will have a team of systems administrators to provided assistance to users and most of those will have some sort of ticketing system (e.g., Request Tracker) to manage those issue requests. This means that there will be one email address to contact for help (e.g., help@vpac.org)

The importance of using this email address should not be underestimated. An issue raised through this address is seen by a number of systems administrators, so they may all act and comment on the issue, even if you are only in correspondence with a single person. It is best not to email a single systems administrator. Not only will the issue not receive the collective attention and knowledge of the team, the individual in question may be away or otherwise busy. Plus, it causes issues with the owning institutions record keeping, recall, and metrics. 

When emailing the help desk use one correspondence thread per issue. If you have three distinctly different matters, initiate three tickets. This is because different people may take primary responsibility for different issues. Please note the term "distinctly different"; you can submit a ticket with multiple, but related issues. For example "When I submit this job across multiple nodes it crashes and I run it successfully on a single core, it generates an error", counts two related issues. The request "When I submit this job across multiple nodes it crashes, and can you book me in the next intermediate training course" counts as "distinctly different" issues. On a related matter, when initiating a ticket do not go through an email archive and reopen a ticket unless it actually is the same issue. 

When submitting a ticket be as clear and as informative as possible in the ticket. A ticket that says "My job died, why?" is difficult to diagnose. One that says "My job ID 28807 on trifid died. My PBS script is located in ~/openfoam/openfoam_par and my input file was simpleFoam" tells us a great deal! Also, as we'll learn later, jobs often produce useful diagnostic error information. These are worth checking. 

The other request we have is please be patient and accepting. Diagnosing failures in high performance and parallel computing is somewhat far from trivial. Whilst system administrators have a wide range of experience in operations and network administration, resource and cluster management, and scientific programming, they are not experts on all scientific disciplines or even all applications - not even collectively. Often users will have great familiarity and expertise in the application that they're using and almost invariably, the will have greater expertise in the discipline in question.

# 2.0 The Linux Environment

In this introduction to Linux part of the course we will engage in several tasks. The first will be to log into a Linux system and familiarise ourselves with the environment. We will then create some files on the local machine and copy those files to the supercomputer. We will then log on to the supercomputer, modify those files and copy them back the local computer. Back on the local computer we'll create a directory, move the files to that directory and run some very basic search functions.

For users who are familiar with the command line, this chapter may seem a little trivial. However for those who do not have this necessary background, it is essential. More and more researchers are reaching the postgraduate level with very little exposure to the command line, simply because of extensive GUI developments in general use operating systems. However, in order to use HPC clusters effectively, this knowledge is required. Best of all, it's knowledge that can remain for the rest of your computing life - many of the core commands illustrated here date from the 1970s and show no sign of being replaced any time soon.

## 2.1 Logging On

To log on to a HPC system, you will need a user account and password and a Secure Shell (ssh) client. Most HPC cluster administrators do not allow connections with protocols such as Telnet, FTP or RSH as they insecurely send passwords in plain-text  over the network, which is easily captured by packet analyser tools (e.g., Wireshark). 

Linux distributions almost always include SSH as part of the default installation as does Mac OS 10.x, although you may also wish to use the Fugu SSH client. For MS-Windows users, the free PuTTY client is recommended. 

If using Mac OS 10.x, you will probably want to add a terminal alias to your dock. From the  Macintosh HDD and go to the Applications folder, then Utilities from within that. Terminal is in the Utilities folder. Drag it to an empty space in the Dock, and the operating system will put an alias there. If you are using a graphic interface for Linux, like GNOME or KDE, you may wish to do the same with one of the terminal clients and panels. 

If you're using MS-Windows, download PuTTY. In the 'Host Name' box, enter the server you want to connect to (e.g., trifid.vpac.org) and select SSH from the 'Connection type' radio button. Verify the host key when connecting for the first time. You will also probably want to have X-forwarding enabled for any connections that require graphic forwarding. 

In the 'Host Name' box, enter the server you want to connect to (e.g., trifid.vpac.org) and select ssh from the 'Connection type' radio button. Its useful to enter a session name, "Trifid" in the above case and save it so you don't need to remember the details next time.

Generally, the other Putty settings will be fine as they are. One thing you might need if you are going to be using XWindows (to display a graphical interface from the HPC cluster on your desktop) is to turn on XForwarding. Note however that there is a general rule of thumb that X-forwarding is not usually recommended for a cluster, due to the latency of operating over a WAN link. Do your computation on the cluster, copy the files, and do your visualisation using local resources.

However, if you do need to do remote visualisation, you will also need some sort of "XWindows Server" installed on your desktop, if you are using MS-Windows. A possible free option is XMing, `http://www.straightrunning.com/XmingNotes/`

With Mac or Linux simply open the terminal client and enter your username and the machine you wish to connect to, followed by the password when connected. For example;  `ssh <your username>@trifid.vpac.org`

Secure shell opens a connection to a remote system. Replace trifid.vpac.org with the HPC cluster that you are connecting to.
	
If you want to enable graphic enabling you can use the -X or -Y (secure) options e.g., `ssh -Y <your username>@trifid.vpac.org`

Open up two terminal windows. In the first terminal window we'll explore some of the basic commands on the local machine In the second terminal window we'll do the same, but on the supercomputer.

## 2.2 Exploring The Environment

The first thing we'll do is explore the environment of the command-line on both our local machine and the supercomputer. On both these systems, run the following commands.

`whoami` : "Who Am I?; prints the effective user id.
`pwd` : "Print working directory";  prints the directory where you're currently in.

Now you know who you are (useful if you are logged on to several machines at the same time with different user names) and where you are.

When a user logs in on a Linux or other UNIX-like system on the command line, they start in their home directory. The output of the above command should be: /home/<username> . A full standard directory listing is available at the back of this manual. For users from a MS-Windows background, one of the first things that one will notice is that there is no drive letters (e.g., C:). As the catch-phrase says: "Everything in the UNIX system is a file" (Kernighan and Pike, 1984, p41) - which means that files, directories, and any input-output resources (disks, keyboard, memory, etc) are treated as a stream of bytes through the filesystem.
					
Now let's run a listing for the directory on both the local computer and the supercomputer:

`ls` : "List"; lists contents for particular directory, the current directory by default.

Now you know 'Who am I'? 'Where am I?' and 'What's here'? 

Linux commands often come with options expressed as:

`<command> -<option[s]>`

Run this command on both the local computer and the supercomputer.

`ls -lart` : "List" with long format, including file permissions (l), include hidden files ('a', for all), sorted by reverse  order ('r'), by modification time ('t').

Linux commands come with `man` (manual) pages, which provide a terse description of the meaning and options available to a command. To view the appropriate man page simply enter the word man followed by the command. Specific sections of a man page can also be invoked. A more verbose alternative to man with a simple hypertext system is info. 

Both man and info can exited with `q` for quit.

`man ls` : Display the manual entry for the command "ls"
`apropos ls` : Search for the "ls" command. Equivalent to "man -k <command>"
`info ls` : Display the more verbose hypertext entry for the command "ls"
`whats ls` : Display a terse definition of the command "ls".

In addition to commands by themselves, Linux also have very useful pipes and redirects for commands. To pipe one command through another use the `|` symbol.

For example, the who command how who is currently logged into the system. You may suspect that this will differ on the supercomputer and the local system! Run the command on the local computer and then 'pipe' the who command through 

Run this command on the supercomputer.

`who -u | less` : "Who" shows who is logged on, how long they've been idle and piped through the less command.

You may be wondering why the command to display the contents of a file to the screen is called "less". This is a pun on the expression "less is more"; once upon a time the command to display information to the screen was "more <filename>. But it was only one screen at at time and could not scroll backwards! Take the opportunity to display the same command using 'more', and also read the man page for that utility – check the last time it was updated!

`who -u | more` : "Who" shows who is logged on, how long they've been idle and piped through the more command, followed by the man page more.

Another common option for displaying a file's contents to the screen is `cat`, which concatenate any files listed and print on the standard output. There is a common novice practise of taking the output of cat and putting into a pipe. For example, `cat | wc -l filename` will count (wc) the number of lines (-l) in a file, and print to standard output - it doesn't even need the `cat |` component, which simply starts up another process. The removal of unnecessary `cat` statements is known as "demoggification".

<img src="https://raw.githubusercontent.com/VPAC/superlinux/master/images/pipcat.jpg" />

Another environment feature to explore is the `ps` or process status command.  A number of programs can be run by a one or more users simultaneously, including helping programs called daemons. If no options are added ps selects all processes with the same effective user ID (euid=EUID) as the current user and associated with the same terminal as the invoker. To see what is running, who is running it, the process ID, and how much CPU they are using  use:

`ps afux | less` : "ps" provides a list of current processes. The 'a' option list the processes of all users, the 'f' shows job hierarchy, the 'u' option provides additional information about each process, and the 'x' option includes non-user programs such as daemons. This is piped through less.

Note that "ps -aux" is different to "ps aux". The POSIX and UNIX standards require that "ps -aux" print all processes owned by a user named "x". If the user named "x" does not exist, this ps might interpret the command as "ps aux" instead and print a warning, depending on the version of Linux being used.

To redirect output use the `>` symbol. To redirect input (for example, to feed data to a command) use the `<`. Concatenation is achieved through the use of `>>` symbol.

Run this command on the supercomputer.

`w > list.txt` : The command 'w' acts like a combination of who, uptime and ps -a. This is redirected to the file list.txt

This command lists the  current  time, how  long  the  system  has been running, how many users are currently logged on, and the system load averages for the past 1, 5, and 15  minutes and redirects this information to the file list.txt

If the command is run a second time, it will overwrite the first `list.txt`. If it is run with `w >> list.txt` it will append the result to the existing file.

## 2.3 Files and Text Editing

Linux expresses its files as words made up of pretty much any characters, excepting the slash (/) which is used for directory navigation. In general however it is a good idea to avoid filenames with punctuation marks, non-printing characters (including spaces, tabs etc) as these can lead to some difficulties and annoyances, especially on the command-line level. It is a convention to use underscores instead of spaces or CamelCase e.g., this_is_a_long_name.txt or ThisIsALongFileName.txt

Linux is case-sensitive with its filenames. This means that that list.txt is a different file to LIST.TXT, or even lisT.txT. Files do not usually require a program association suffix, although you may find this convenient (a C compiler like files to have .c in their suffix, for example). The file list can be opened by a text-editor just as easily as list.txt.

The type of file can be determined with the file command. The type returned will usually be text, executable binaries, archives, or a catch-all "data" file.

`file <filename>`

There are three text editors usually available on Linux systems. The first is nano, a very easy to use clone from the Pine email client that uses control keys with a the equivalent of a "shortcut bar". Others include Vim (Vi improved) which is a series of enhancements build on the "screen orientated" text editor vi, which was first introduced in 1976. Vim is generally understood to be a modal editor, operating either in a insert mode (where typed text becomes part of the document) or command mode (where keystrokes are interpreted as commands that control the edit session). Vi or Vim are often installed as the default text editor. Also written in 1976, the hefty EMacs (Editor Macros) editor and environment is a feature-rich program, to the extent that it is even considered by some to be a virtual machine in its own right. With appropriate plugins, it can act as an email client, web browser, IDE, and even comes with a Rogerian psychotherapist.

In "UNIX culture" EMacs and Vim are considered favourites among experienced users, with nano considered the best for beginners. There are also long-running, and largely tongue-in-cheek, "editor wars" with various proponents debating the relative merits of different editors. 

**Nano; A Simple Text Editor**

With nano editing is very intuitive. Start with nano <filename> on the command prompt. One can type straight to the display and editing is a simple function of simultaneously using Ctrl and a keystroke. Previously we created a file list.txt - you may wish to experiment with nano's options using this file.

The most commonly used key combinations are available on the bottom of the screen, including cutting (^K) and pasting ("uncutting", ^U) lines of text, searching ("where is", ^W), opening ("read a file", ^R), saving files ("write out", ^O), scrolling up and down the text (^Y, ^V).  Further commands can be displayed through invoking help ("get help", ^G) such as search and replace (M-R, ie., meta key, usually Esc and 'R'). 

## 2.4 Copying and Transferring Files

All files used in this course are available on from https://github.com/levlafayette/superlinux

To get a copy of all these files (including this book, in plain-text format) use the following command:

`git clone https://github.com/levlafayette/superlinux`

To copy a file from within a system use the cp command. The following is an example: 

`cp /common/introductory/gattaca.txt .` : Copy the file gattaca.txt from the directory path /common/introductory/ to the current working directory, represented by the `.` symbol.

There is a great deal of options that can are part of the cp command; some of the more common include a recursive copy for all files in a series of directories and sub-directories (e.g., `cp -r /common/introductory .`) and a copy as an archive, with permissions, recursive, and links (e.g., `cp -a /common/introductory .`) . To copy a long file name or directory, use the tab key for auto-completion of the path and options.

To move files to and from the supercomputer and one's desktop you need to use an SCP (secure copy protocol) or SFTP (secure file transfer protocol) over SSH. If you are using Linux or Mac, you will be able to do this with the standard command-line interface with the general procedure of; 
scp source destination

This however doesn't quite give the full story. Both the source or the destination may include a username and address, although if one is running the command the source or destination machine the account information does not have to be entered for that machine. Often a path to the files and directories will be required as well. However remembering the order source then destination is good shorthand.

The following is a more elaborate version of scp:

`scp source.address:/path/to/source destination.address:/path/to/destination/`

Note when typing out the address make use of the tab-completion feature, which provides suggested options for command and file completion, plus Cntl-R or direction keys to recursively search through a history of previously used commands.

If you are using MS-Windows, we recommend using WinSCP, or, if using certain applications such as MATLAB, the PuTTY Secure Copy client PSCP.  WinSCP comes with a intuitive GUI that provides basic file management functionality in addition to Secure Shell and Secure Copy functions.

Linux and Mac users can also use a GUI for secure file transfers. For Linux users this is typically inbuilt with the file browser application. For Mac users you might wish to consider Fugu or Cyberduck. Filezilla is a good GUI option for file transfers for all three operating systems because it has the same general "look and feel"! This is, of course, in addition to the suite of features it provides.

An alternative transfer option is rsync. Rsync provides a way to keep two repositories of files "in sync", one of these repositories may be on your desktop, the other your home directory on the cluster. The nice feature of rsync is that it is very fast - after the initial backup. The reason for this is that it tracks changes. There is no point copying and re-writing an entire file when only a handful of characters have changed.

The general sequence is: `rsync options source destination`

The following is the basic command for rsync between two Linux machines:

`rsync -avz source/ username@remotemachine.com:/path/to/destination/`

The -avz ensures that it is in archive mode (recursive, copies symlinks, preserves permissions), is verbose, and compresses on transmission. Note that rsync is "trailing slash sensitive". A trailing / on a source means "copy the contents of this directory". Without a trailing slash it means "copy the directory".  In many implementations rsync can be quite intelligent and work out which protocol you are using, so the following will suffice:

`rsync -avz source/ username@remotemachine:/path/to/destination`
`rsync – avz username@remotemachine:/path/to/source/ .`

For greater  security in the transmission specify ssh encryption.

`rsync -avze ssh username@remotemachine:/path/to/source .`

Rsync can be used in a synchronise mode with the --delete flag. This will delete anything in the destination that is not in source directory. Handle with care! You may wish to also run rsync with the -n or --dry-run option to see what it will do first, before running the command for real.

`rsync -avz --delete --dry-run source/ username@remotemachine:/path/to/destination`

Another popular option is the --update flage which only changes files in the destination that are newer in the source. This will mean that you won't accidentally delete any files in the destination, but it it also means that you may end up with old files in the destination that you already have removed in the source.

`rsync -avz --update username@remotemachine:/path/to/src .`

Many people often use rsync on local machines as well, especially when copying large directories. e.g.,

`rsync -av source/ destination/`

A GUI interface for rsync is also available, grysnc.

One may wonder why we aren't running the command on the supercomputer (a "put", rather than a "get"). It must be remembered that in order for a copy of files to occur, both machines have to know where the other one is, translated from hostnames and Internet Protocol (IP) addresses. In most cases, local machines use private IP addresses, not public addresses. For example, if you were on the supercomputer and wanted to copy the file to a local machine you might think the following could work, as it follows the suggested format of source and destination and uses the correct command:

`scp list.txt <username>@192.168.1.100`

The problem is, which of the multitudes of computers out there with a private address of 192.168.1.100 do you want to copy list.txt to? How would the supercomputer know which machines have this private addresses? Even if it could find out, it would take a very long time to connect to all the switches in the world to find out!

The applications mentioned in this discussion are available at the following URLs

Putty is available from: `http://www.putty.org/`
Filezilla is available from: `http://filezilla-project.org`
Rsync is available from: `https://rsync.samba.org/`
Grsync is available from: `http://www.opbyte.it/grsync/`
WinSCP is available from: `http://winscp.net`
Fugu is available from: `http://rsug.itd.umich.edu/software/fugu/`
Cyberduck is available from:  `http://cyberduck.ch/`
OpenSSH is available from: `http://www.openssh.com/` 

## 2.5 Creating Directories, Moving Files

We are going to copy the file gattaca.txt from the supercomputer to the local machine. From the local machine enter the following command:

`scp <username>@trifid.vpac.org:gattaca.txt .`

Be sure to replace <username> with your username on the supercomputer (e.g., train01, train02, train03 etc). When the transfer is complete check on the local machine that the file has transferred with ls.

We know have gattaca.txt on the local computer. Let's add some new material to it before sending it back to the supercomputer. On the local computer enter: `nano gattaca.txt`

Move to the first column on the third line and change the letters ATVK to ATEK. Then write out the file (Cntrl-O) and exit (Cntrl-X).

Our next step will be to create a directory to put this file in and then move the file into that directory. The navigate to the directory and make sure that it is there. On the local computer enter:

`mkdir braf`
`mv gattaca.txt braf/`

Change to the braf directory and check the contents of the directory. The output should be the `gattaca.txt` file from the ls command and `/home/<user>/braf` from the `pwd` command.

## 2.6 Files Differences

The next step will be to copy the directory and its contents from the local computer to the supercomputer. This uses the scp command again, but this time with the -r (recursive) option, which will copy the directory and all sub-directories and files within it. On the local computer change to the home directory and recursively copy the directory. Note the colon at the end of the scp command.

 `scp -r braf/ <username>@trifid.vpac.org:`

Now on the supercomputer do a directory listing but specify the file you want and with the time option. You should see a gattaca.txt in your home directory (the original one) and a braf directory. Move into the braf directory and run a directory listing again with the same option. There should be another gattaca.txt file, the one you just moved, but you will notice it has a different timestamp.

`ls -l gattaca.txt`
`cd braf`
`ls -l gattaca.txt`

Sometimes you may wish to compare the content of files as well as when they were created. To do this use the diff command. This compares files line-by-line and prints the differences to the screen. As usual there are a number of options which can be ascertained from the command man diff, but for now we'll just use the basic command. The command uses brackets to indicate where additional material is located. To illustrate this, let's add some lines to the first list.txt file and then run the diff comparison.

Write out (Cntrl-O) and exit (Cntl-X) and run the diff command.

`diff gattaca.txt braf/gattaca.txt`
	
The output should be something like the following:

```
[lev@trifid ~]$ diff gattaca.txt braf/gattaca.txt 
4c4 
< ATVKSRWSGS HQFEQLSGSI LWMAPEVIRM QDKNPYSFQS DVYAFGIVLY 
--- 
\> ATEKSRWSGS HQFEQLSGSI LWMAPEVIRM QDKNPYSFQS DVYAFGIVLY 
```

For a side-by-side representation use the command sdiff instead.

The diff command is often used by programmers to create a patch file between two programs. For example, if one wanted to a patch of braf/gattaca.txt to gattaca.txt one would generate the patch file like follows:

`diff -u gattaca.txt braf/gattaca.txt > gattaca.patch`

## 2.7 Searches and Wildcards

Often you will want to search for files or search within files for a particular phrase. The find command, which will find files according to the directory and sub-directories offered, by name, modification time, size etc, and with filter operations, all of which are available through man find. To find all files with the suffix .txt on your supercomputer account change to the home directory use the following command: `find . -name '*.txt'`. Note that the filter is within quotes, to ensure that the command is not expanded due to the wildcard. 

The `find` command is differentiated from the `locate` and `whereas` commands which also find files. The `find` command is searches for files by filename in the directories and with the options assigned. It is best for finding files that a users and within a limited directory range. In comparison the `locate` command searches through a database that must be regularly updated, typically by administrators (`updatedb`). It is best for files that are used regularly without change, or for quick search that may not be the most up-to-date. Finally, `whereis` finds source, binary and manual files by name and should be used for such searches.
	
To search within a collection of files use the grep command. It originally an abbreviation of "global search for a regular expression and print to standard output". The command searches the named input files for lines containing a match to the given pattern, including regular expressions, and prints the matching lines. As usual there are a variety of options available through man grep. The following command will search for the pattern 'ATEK', ignoring case, within the directory braf. Enter the following on the supercomputer:

```
cd ~
grep -i ATEK braf/*
```

The search is for a regular expression, which means any sequence of characters that includes the letters ATEK. If one wishes to search for a word the -w option can be invoked:

```
cd ~
grep -w ARSLPK braf/*
```

Note that the files being searched must be specified, even with a wildcard character. Simply stating a directory is insufficient. Where there are multiple results, grep will also display the filename. Compressed or gzipped files can be searched with `zgrep`; there are other "z" tools, including `zcat`, `zdiff` etc. If one wants to search a PDF file, then either the `poppler-utils` needs to be installed, or `pdfgrep`. A binary file can also be searched for text in the binary format with the `strings` command.

The wildcard you see most often is * (asterisk), but we'll start with something simpler: ? (question mark). When it appears in a filename, the ? matches any single character. For example, letter? refers to any filename that begins with letter and has one character after that. This would include letterA, letter1, as well as filenames with a non-printing character as their last letter, like letter^C. 

The * wildcard matches any character or group of zero or more characters. For example, *.txt matches all files whose names end with .txt, *.c matches all files whose names end with .c (by convention, source code for programs in the C language), and so on.

| Wildcard	| Matches 	 				|
|---------------|-----------------------------------------------|
| ?		| Any single character 				|
| *		| Any group of zero or more characters 		|
| [ab]		| Either a or b 				|
| [a-z]		| Any character between a and z, inclusive 	|

## 2.8 Deletions

Sometimes you'll want to remove files and directories from your account. Be very careful and very selective with this because when you're operating on the command line there's no "trashcan" to easily undelete files. Somewhere, delete really means what it says, and that somewhere is here.

On the supercomputer we'll carefully delete the file in the home directory and then change the directory to braf and delete the file there. We'll delete the file in that directory, change out of that directory and delete the directory.

```
cd ~
rm gattaca.txt
cd braf
rm gattaca.txt
cd ~
rmdir braf
```

Then on the local computer we'll use a shortcut; a command which deletes the entire directory, all sub-directories and all files within the directory tree. This is remove with the recursive and force options.

```
rm -rf braf/
```

Be very careful with rm, especially with the -rf option and especially with wildcards. Consider what would happen to someone who wishes to delete all their backup files in a directory with the helpful suffix .BAK. Choosing a wildcard and the suffix they intend to type rm *.BAK but instead, they mistype the command and type rm * .BAK. The result of this typing error is that they have just deleted everything in that directory. Worse still imagine a user running as root thinking that they are about to delete a directory and instead types rm -rf / ; a command that will delete everything or, more commonly rm -rf ./ ; a command which deletes the current directory and all sub-directories. 

> **Why The File Differences Mattered**   
BRAF is a human gene that makes a protein (imaginatively) named B-Raf. This protein is involved in sending signals inside cells, which are involved in directing cell growth. In 2002, it was shown to be faulty (mutated) in human cancers.    
In particular the difference that between the two files "ATVKSRWSGS" and "ATEKSRWSGS" is the difference which leads to susceptibility to metastatic melanoma. Fortunately, because of high performance computing, massive databases, and molecular modelling applications, science has begun to develop  specific inhibitors of mutated B-raf protein for anticancer treatments.

# 3.0 Modules, PBS, and Example Jobs

## 3.1 Environment Modules

Modulefiles also have the advantages of being shared on many users on a system (such as an HPC system) and easily allowing multiple installations of the same application but with different versions and compilation options. Sometimes users want the latest and greatest of a particular version of an application for the feature-set they offer. In other cases, such as someone who is participating in a research project, a consistent version of an application is desired. Having multiple version of applications available on a system is essential in research computing.

When you are operating on a Linux system the user has a certain environment; this can be checked with the `env` command. This will include particular a set of paths, which indicate where binary executables, libraries, etc will be found. Environment modules allow the user to dynamically change what is in their path.

**Module commands**

Some basic module commands include the following:

`module help` :The command module help , by itself, provides a list of the switches, subcommands, and subcommand arguments that are available through the environment modules package. Note that one of the subcommands is module help [modulefile]. If, and only if, a help file has been associated with a particular module (and not the program itself), this command will generate any action. This is not the case with any of the modules installed on trifid - instead, use module whatis [modulefile] or module display [modulefile].

`module avail` : This option lists all the modules which are available to be loaded. Notice that many of them have version numbers associated with them. Modules makes it easy to switch compiler application versions. The module name without a version number is the production default. 

One particular nuissance is that the output of a module avail is treated as a standard error, rather than standard output in the standard environment modules application. Thus to pipe the output of module avail to less, one has to redirect standard error to standard output. This can also be used for providing an output of `module whatis`  i.e.,

```
module avail 2>&1 | less
module avail -l 2>&1 | less
module whatis 2>&1 | less
```

`module whatis <modulefile>` : This option provides a description of the module listed. 

`module display <modulefile>` : Use this command to see exactly what a given modulefile will do to your environment, such as what will be added to the PATH, MANPATH, etc. environment variables. 

For example the command: module display freesurfer displays the following results:

```
/usr/local/Modules/modulefiles/freesurfer/4.5.0: 
module-whatis	 Set environment variables to use freesurfer version 4.5.0 
prepend-path	 PATH /usr/local/freesurfer/4.5.0/bin 
prepend-path	 FREESURFER_HOME /usr/local/freesurfer/4.5.0 
prepend-path	 SUBJECTS_DIR /usr/local/freesurfer/4.5.0/subjects 
```

`module load <modulefile>` : This adds one or more modulefiles to the user's current environment (some modulefiles load other modulefiles, e.g., module load vpac or module load gcc). You can load multiple modules simultaneously. For example, to load NAMD one would use the command: `module load namd`.  If you load the generic name of a module, you will get the default version. To load a specific version, load the module using its full specification. for example; `module load namd/2.9-openmpi-gcc`. It is almost always better to use the precise version to ensure consistency in scripts and resuls. The default version should only be used for testing purposes. 

As an example of how the changes occur, check the version and path when loading a module. For example:

```
which gcc
/usr/bin/gcc
gcc --version
gcc (GCC) 4.4.5
module load gcc/4.9.2
gcc (GCC) 4.9.2
```

Note that if multiple versions of the same application are loaded then it will be the last one that is loaded which will apply. However, if they are referenced files in previous versions it will search for those as well which can lead to some unexpected results. For this reason it is highly recommended that only one version of an application remains loaded at any point in time.

`module list` : This lists all the modules which are currently loaded into the users environment. 

`module unload <modulefile>` : This removes any listed modules from the user's current environment. Multiple modules can be unloaded simultaneously. e.g., `module unload gcc namd`
	
Note that unloading a module does not necessarily automatically remove additional modules loaded by the original module file, depending on the configuration of the modules on a particular system.

`module switch <modulefile1> <modulefile2>` : This unloads one modulefile (modulefile1) and loads another (modulefile2). This is very handy for testing behavior across different versions of the same program. 

For example, the following loads Octave v3.2.0, but the user then discovers that an earlier version better suits their needs. Rather than loading and unloading the different versions they can simply use module switch instead.

```
module load octave/3.2.0
module switch octave/3.2.0 octave/3.0.3 
```

`module purge` : This removes all modules from the user's environment.

`module initadd <modulename>` : The 'module initadd' command can be used to have a module automatically loaded each time a user logs into the system.

Depending on the user's shell preferred shell, the initadd command searches a range of initialisation files in the user's home directory for a 'module load' and appends as appropriate. 

If the `module load` line is found in multiple shell initialization files, all of the lines are changed. 

`initrm <modulefile>` : Remove a module file from the initialisation files.

`initswitch <modulefile1> <modulefile2 >` : Switch one modulefile to another in the initialisation file.

`initlist` : List all the modulefiles loaded from the shell initialisation files.

`initclear` : Clear all the modulefiles from the shell's initialisation files.

## 3.2 Portable Batch System

A batch system, often expressed as 'Portal Batch System' or PBS) is the name of a utility software that performs job scheduling by assigning unattended background tasks expressed as batch jobs, among the available resources. A batch system typically consists of a resource manager (e.g., TORQUE) and a job scheduler (e.g., Maui, Moab), or a combination (e.g., PBSPro, Slurm). The scheduler provides for paramterisation of computer resources, an automatic submission of execution tasks, and a notification system for incidents. The resource manager is responsible for managing the resources of the cluter, such as the the availble nodes and processors, memory etc, and to ensure that jobs do not overlap on such resources.

The original Portable Batch System was developed by MRJ Technology Solutions under contract to NASA in the early 1990s. In 1998 the original version of PBS was released as an open-source product as OpenPBS. This was forked by Adaptive Computing (formally, Cluster Resources) who developed TORQUE (Terascale Open-source Resource and QUEue Manager). Many of the original engineering team and what commercial property of exists from the original product is now part of Altair Engineering who have their own version, PBSPro. In addition to this the popular job scheduler SLURM (Simple Linux Utility for Resource Management) also uses batch script where are very similar in intent and style to PBS scripts.

In addition to this variety of implementations of batch submission systems in different institutions may also make further elaborations and specifications to their submission filters (e.g., site-specific queues, user projects for accounting). This means that job scripts that one may find from other sources are not always completely compatible. The user needs to pay attention to what implementation is being used on their system and to determine site-specific options have been enabled. 

The batch command file does not need to be an executable. In the case of parallel jobs, the batch command file is staged to, and executed on, the first allocated compute node only. The script is executed from the user's home directory by default, however the script may define the submission directory by using the `$PBS_O_WORKDIR` environment variable. 

Submitting and running jobs is a relatively straight-forward process consisting of:

1) Setup and launch
2) Monitor results
3) Retrieve results and analyse.

Remember that this is a shared environment, hence the need for a resource requesting system. There could be hundreds or thousands of individuals with accounts on an HPC cluster, and they all will want resources. Policies are typically established to ensure that everyone has access to a "fair share" of these resources (e.g., a limit on how many processors an individual may access at any one time). One thing that is invariably requested by administrators of HPC clusters:

**Don't run jobs on the login node!**

Whilst the entire cluster is a shared resource, the login node is a particularly shared resource. All users will access the login node in order to check their files, submit jobs etc. If one or more users start to run computationally or I/O intensive tasks on the login node (such as forwarding of graphics, copying large files, running multicore jobs), then that will make life difficult for everyone. Avoid it whenever possible. Instead, using the queuing system to submit jobs.

The graphic presented below (from an otherwise fairly formal book on queue management by IBM) gives an amusing representation of what occurs; the jobs are launched by the user (the initial rabbits) which then go into a queue. The scheduler (the dog) determines when they can run, they dash off to the compute machines and, after computation, collect their results (the carrots).

1. Setup and Launch

When uploading files in preparation for launching a HPC job it is good practice to keep each job in separate folders, labeled in an intuitive way, such as:    NAMD_albumin_run_01 . Writing all files to the top level of the home directory will very quickly become difficult to follow and easy to make mistakes. Use the mkdir command learned in the previous section to do this.

A pbs script allocates the compute nodes and time requested by the user. The user can edit this script to change the number of preferences including the number of cpus to use, the length of time to run the job and the name of the program executable.

Lines that start with  `#PBS` pass a PBS command,  while adding a white space does not.   For example, compare the lines:

`#PBS -l walltime=24:0:0`
`# PBS -l walltime=24:0:0` 

The following is a sample PBS script for TORQUE and with comments for script for PBSPro and SLURM. Note that PBS job script directives should be declared first. The following is an example Job Script with annotations for TORQUE, PBSPro, and SLURM.

| Script command		| Explanation							|
|-------------------------------|---------------------------------------------------------------|
| #!/bin/bash 			| Always invoke a shell. This is common regardless of whether one is using TORQUE, PBSPro, or SLURM. |
| #  job script for a NAMD job. | A comment line. Note the use of whitespace after the hash.	|
| #PBS -N Job_name		| The name of the job. 						|
| #PBS -q compute		| A request for the compute queue; can be left out if the system accepts a default. Will vary on different systems. Format is identical for TORQUE and PBS.		|
| # SBATCH -p compute		| The equivalent command for the above but for SLURM. Note that it makes use of the -p (partition) rather than -q (queue) option.					|
| #PBS -l nodes=8		| Asking for any 8 cores for TORQUE.				|
| # PBS -l ncpus=8		| The same resource request, but for PBSPro.			|
| # SBATCH -ntasks=8		| Again, the same resource requests, but this time for SLURM.	|
| # PBS -M example@example.com	| The email address that notifications should be sent to for TORQUE and PBSPro. Currently commented out. Make sure this is entered correctly.				|
| # SBATCH --mail-user=example@example.com	| The same command as above, except for SLURM.	|
| # PBS -m abe			| Mail user if job aborts (a), begins (b) or ends (e). Currently commented out. 			|
| # SBATCH –mail-type=FAIL	| |
| # SBATCH --mail-type=BEGIN	| |
| # SBATCH –mail-type=END	| |
| # SBATCH –mail-type=ALL	| The equivalent of the above for SLURM with the equivalent of the "abe" option represented by "all"	|
|#PBS -l walltime=24:10:5	| Walltime for TORQUE and PBSPro. Set the job to run 24 hours 10 minutes and 5 seconds – a deliberately strange time request for the purposes of illustration. 		|
| # SBATCH --time=24:10:5	| The same command as above but written for SLURM. SLURM also takes the format -t days-hours:minutes:seconds								|
| #PBS -o output_file_name.txt	| |
| #PBS -e error_file_name.txt	| For TORQUE and PBSPro, set output and error file name. Note that these are created with the job ID by default. In this format they can also be combined with #PBS -j oe (join error and output)		|
| # SBATCH -output		| |
| # SBATCH -error		| The equivalent output and error filenames for SLURM. Where -o is specified without a -e SLURM assumes they are to be combined.					|
| module load namd/2.9-openmpi-gcc	| Load the NAMD module					|
| cd $PBS_O_WORKDIR		| For TORUE and PBSPro, change to the directory where the job was launched; otherwise it will try to run it in the home directory. SLURM assumes that you want to run in the directory where you launched the job from, so this command is not necessary.		|
| # Launching the job!		| Another comment line. 					|
| mpiexec namd2 configfile	| Launching the executable “namd2”  with the file “configfile”. |
| # srun namd2 configfile	| Launching the executable “namd2”  with the file “configfile” using srun for Slurm. |

In addition to using text files for PBS job submission a graphic user interface is available if one has logged in with X-windows forwarding, `xpbs`. However there is not much to gained from this; a GUI is only truly useful if (a) there are tasks that can be simplified, and (b) the user doesn't need to understand what is happening 'behind the scenes'. Neither is true with high performance computing.

**Queues and Partitions**

With the qstat or squeue commands (see below) the available queues on the system can be shown. Queues are simply a set of available resource limits, which on various systems may be subject to a different set of scheduler rules. 

To submit according to a particular queue in TORQUE or PBSPro use `#PBS -q queuename` ; if using SLURM use `#SBATCH -p partitionname`

**Nodes and Performance**

Requesting more nodes or cores for a particular job does not necessarily mean better performance or faster completion. This depends on how well parallelised the program is. Also, requesting large numbers of cores may result in the job waiting in the queue for days while the scheduler allows for resources to become available.  The number of nodes requested can be distinguished between a number of cores from anywhere on the system, or within a single system unit, or another combination. It is also possible to request specific nodes on the system, although the instances where this is necessary are usually limited to debugging, assuming that queues have been established appropriately.. Another option with OpenMPI is to launch the job with  `--hostfile $hostfile`.

Note that with TORQUE the nodes request is for system units (except when expressed in the singular, when it is processors) and in PBSPro it is "chunks", which may or may not be specific system units.

| TORQUE		| PBSPro	| SLURM			|Description				|
|-----------------------|-----------------------|---------------|---------------------------------------|
| #PBS -l nodes=16	| #PBS -l ncpus=16	| #SBATCH --ntasks=16 | Sixteen cores or tasks			|
| #PBS -l nodes=1:ppn=16| #PBS -l select=1:ncpus=16 | #SBATCH --nodes=1 |					|
|			|				| #SBATCH --ntasks-per-node=16 | Sixteen cores or tasks from a system unit.	|
| #PBS -l nodes=2:ppn=8 | #PBS -l select=2:ncpus=16 | #SBATCH --nodes=2	|				|
|			|		| #SBATCH --ntasks-per-node=8		| Sixteen or tasks from two system units with eight each.	|
| #PBS -l nodes="trifid001"	| #PBS -l nodes="trifid001" |	#SBATCH -w, --nodelist=trifid001 | To run specifically on trifid001	|

Note that the details of these resource requests may vary significantly between systems. Some implementations of PBSPro, for example, also require the statement: mpiprocs=n after selecting the quantity of processors specifically for MPI jobs.

**Walltime**

Walltime is the length of time specified in the pbs script for which the job will run. In a shared resource environment, the user who is submitting a job is making an agreement with other users: "This job will require x number of resources for y period of time". At the end of that time the job "hits a wall" and will stop. 

So make sure that you have specified enough walltime for a particular job to complete!  Your job will end after the allocated walltime whether it is finished or not, sometimes resulting in lost data if the program does not check point restart files. If you are not sure how long a job will run, set a generous walltime, and then check the job status before the walltime expires. 

In a number of environments and email to the helpdesk with a request to extend walltime can be fulfilled. But don't rely on this, and certainly don't make it a habit. In effect when an extension is granted, it means that the user is jumping ahead in the queue, by way of extension of resource use. This is unfair to others. It is best to be generous with one's walltime to begin with and run a few test cases to see how long a dataset takes to process.

**Memory**

Sometimes you will require more or less memory that is typical for a job. In these cases the resource requests memory for the total job (mem for TORQUE and PBSPro), or more commonly, for each processing task (pmem), may be useful. A standard resource request is used e.g., #PBS -l pmem=2000mb for TORQUE and PBS or #SBATCH --mem=20000 for SLURM.

**Backfilling**

Many schedulers and resource managers use a backfilling algorithm to improve system utilisation and maximise job throughout. When more resource intensive (e.g., multiple node) jobs are running it is possible that gaps ends up in the resource allocation. To fill these gaps a best effort is made for low-resource jobs to slot into these spaces.


## 3.3 Frequently Used PBS and Scheduler Commands

| TORQUE/PBSPro		| SLURM		| Description					|
|-----------------------|---------------|-----------------------------------------------|
| qstat			| squeue	| Show status of jobs   			|
| showq			| squeue	| Displays information about active, eligible, blocked, and/or recently completed jobs.					|
| showq -u user=[username] |	squeue -u | Showq with a constraint, in this case, user. Not available in PBSPro [EDIT].									|
| qstat -q		| sinfo -a	| List all queues or partitions 		|
| qstat -Q		| sinfo -a	| Queue limits.					|
| qstat -a		| squeue -A 	| List all jobs in alternative format.		|
| qstat -au		| squeue -A <account> | List all jobs of a particular user, e.g., qstat -au mike|
| qstat -s 		| squeue -a	| All jobs with status comments			|
| qstat -r		| squeue -t R	| All running jobs				|
| qstat -f <jobid>	| squeue -j <jobid> | Information concerning a particular job.  |
| qsub <pbsscript>	| sbatch <jobname>  | Submits job script			|
| qsub -I 		| sinteractive	 | Submit an interactive batch job. SLURM command varies per installation.										|
| qdel <jobid>		| scancel <jobid> | Deletes a job. SLURM allows one to delete all jobs belonging to a user wit the -u option.								|
| qpeek jobid>		| not needed	|  Allows a partial output of a job while it is still running. SLURM produces output files in real time.|


The following are state definitions for a job.

| State 		| Definition							|
|-----------------------|---------------------------------------------------------------|
| Down 			| Node is either not reporting status, is reporting status but failures are detected, or is reporting status but has been marked down by an administrator.		|
| Idle 			| Node is reporting status, currently is not executing any workload, and is ready to accept additional workload.							|
| Busy			| Node is reporting status, currently is executing workload, and cannot accept additional workload due to load.							|
| Running 		| Node is reporting status, currently is executing workload, and can accept additional workload. SLURM will use "Mixed" to describe this state			|
| Drained 		| Node is reporting status, currently is not executing workload, and cannot accept additional workload due to administrative action.				|
| Draining 		| Node is reporting status, currently is executing workload, and cannot accept additional workload due to administrative action.					|

## 3.4 Standard Job DLPOLY: Molecullar Modelling

DL_POLY is a general purpose classical molecular dynamics (MD) simulation software developed at Daresbury Laboratory by I.T. Todorov and W. Smith. Note that it is licensed software, but with a permissive academic license. Confirm with the developer (Dr Ilian Todorov) that a cluster installation is acceptable (e.g., possibly through a restricted group and agreement of license) and register at their website. 

The following example runs a job for phase-state transition in potassium chloride from the cubic rock salt structure at ambient temperature to the cesium chloride structure under high pressure. The example DL Poly files are from CCLRC Daresbury Laboratory in the UK.

Copy the test files to an appropriate directory and extract:

```
cd /home/train01/
wget http://www.ccp5.ac.uk/DL_POLY/TUTORIAL/EXERCISES/TEST1.tar.gz 
tar xvf TEST1.tar.gz 
```
Inside the TEST1 directory, create the following file 'dltest' with nano. 

```
#!/bin/bash
#PBS -N dlpoly1
## Job resources
#PBS -l nodes=1:ppn=4
#PBS -l walltime=00:10:00
module load dlpoly/4.03.2.1
cd $PBS_O_WORKDIR
mpiexec DLPOLY.Z
```

This job example is specific to TORQUE; if one is using PBSPro or SLURM, changes will need to be made as illustrated previously. 

Once having written up the script, submit it according to the scheduler used (e.g., `qsub dltest`). There may be mistakes! Typing errors are very common in script writing, so be attentive to what you've written. The scheduler will generate error messages as appropriate. Take the opportunity to work through these to find out what went wrong.

Assuming all goes well, DLPOLY will read in the CONFIG, CONTROL, and FIELD data, and wait for the output. If successful the job will create OUTPUT, RDFDAT, REVCON, REVIVE, and STATIS files. 

## 3.5 Two Standard Jobs with Graphic Output: GNU Octave and MATLAB(R)

GNU Octave is a mathematical application and programming language that is highly compatible with MATLAB(R) but without the licensing restrictions. The following compares (using TORQUE examples) two job scripts written for the respective languages that generate the same result. 

```
#!/bin/sh
#PBS -l nodes=1:ppn=1
#PBS -l walltime=00:10:00
module load matlab
cd $PBS\_O\_WORKDIR 
matlab -nodesktop -nodisplay -nosplash < polar-plot.m
```

```
#!/bin/sh 
#PBS -l nodes=1:ppn=1 
#PBS -l walltime=00:10:00 
module load octave
cd $PBS\_O\_WORKDIR
octave polar-plot.m
```

The Matlab example, more designed for a graphical interface, requires parameters to be passed to the executable to ensure that the output is conducted on the file itself. In both cases the .m file is polar-plot.m i.e.,

```
angle = 0:.1*pi:3*pi;
            radius = exp(angle/20);
            polar(angle,radius),...
            title('An Example Polar Plot'),...
            grid
print -deps polar-plot.ps;`
quit;
```

Simply put the PBS job is submitted, which calls the polar-plot.m file, which runs it's own script, which then generates a polar-plot.ps file which can be downloaded and viewed.

## 3.6 Standard Job with PDF Output: R, A Statistical Package

The data is used to indicate an estimate of biomass of ponderosa pine in a study performed by Dale W. Johnson, J. Timothy Ball, and Roger F. Walker who are associated with the Biological Sciences Center, Desert Research Institute, University of Nevada. The tutorial is partially derived from material by Kelly Black of Clarkson University.

It consists of observation measurements and markers for 28 different measurements of a given tree. For example, the first number in each row is a number, either 1, 2, 3, or 4, which signifies a different level of exposure to carbon dioxide. The sixth number in every row is an estimate of the biomass of the stems of a tree. Note that the very first line in the file is a list of labels used for the different columns of data. 

A collection of files is available in the introductory directory, so change to that. Review the files that it references with less (`less pbs-script`, `less tutorial.R`, `less trees91.csv`, `less w1.dat`). The `tutorial.R` script, imports the w1.dat and trees91.csv files into appropriate variables. Then it plots a histogram, breaks, a box plot, normal quantiles, a scatter plot relationship. The output file will also record the correlation of the scatter diagram. 

Submit the job with: qsub pbs-script, check the status of the job (`qstat -u [username]`) until the job is completed. When it is complete note the directory listing (`ls`). You should have something like the following: 

```
[lev@trifid R]$ ls
MyJob.e32933  MyJob.o32933  pbs-script  Rplots.pdf  trees91.csv  tutorial.R  w1.dat
```

The two files `MyJob.e32933` and `MyJob.o32933` are the job error and output files, respectively. The error file in this case is empty, but can be useful for debugging purposes if a job fails. The output file in this instance documents the actions of the program, including the significant correlation result. The real output is Rplots.pdf, which can be copied from the cluster to the desktop and then displayed using the command evince Rplots.pdf. 

# 3.7 Extended Application for Parallel Processing: R: A Statistical Package

Many applications assume single-core usage and don't take advantage of parallel systems for tasks. That doesn't mean that HPC systems are not useful for such applications, as multiple single-core jobs can be launched, often far in excess of a single system unit. For example, dozens and even hundreds variant instances of the previous R job could be all launched simultaneously on an HPC system. Later examples of such job arrays are provided that make such submissions easier.

In addition to the standard, single-core job in the R directory, there are also files for a parallel task that makes use of the snow (simple network of workstations) library that has been developed to extend the functionality of the R application. It is one of several R libraries which have been implemented to carry out parallel computation. 

In this example a simple task on normal distribution using both a sequential process and a parallel process. The outline of the R script is contained in the file xvalidate.R and the pbs script itself is `r-parallel.pbs`; these should be reviewed (`less r-parallel.pbs`, `less xvalidate.R`)

A review of the r-parallel.pbs script will indicate that that the job requests 4 cores, and 10 minutes of walltime. It also includes a call to the PBS variable `PBS_NODEFILE` which is the nodes (system units) that the cores are called from. It makes use of the applications R (as expected) but also openmpi-gcc, which are called as modules.

In the file `xvalidate.R`, the R script calls the special library extension snow to allow for parallel processing. It then creates a random data set and samples, fits the model to the samples, and eventually the mean squared difference – with a test to ensure that the results are equal. There are two output files in this case, one which is the results of the R script (`xvalidate.out`) and one which has a list of the `PBS_NODEFILE` (e.g., `R-parallel.o279816`)

This example of parallel processing with R is taken from Eugster and Knaus (2011).

## 3.8 Parallel Job with License : ANSYS Finite Element Analysis

ANSYS is an engineering simulation for general-purpose finite element analysis and computational fluid dynamics. The following example is an Oscillating Plate with Two-Way Fluid-Structure Interaction from the ANSYS tutorials, but modified as a task for parallel computation. This tutorial uses an example of an oscillating plate simulation involving two-way Fluid-Structure Interaction (FSI). The structural physics is set up in the Transient Structural analysis system and the fluid physics is set up in Fluid Flow (CFX) analysis system, but both structural and fluid physics are solved together under the Solution cell of the Fluid system. Coupling between two analysis systems is required throughout the solution to model the interaction between structural and fluid systems as time progresses. The framework for the coupling is provided by the ANSYS Multi-field solver using the MFX setup. 

The geometry consists of a 2D closed cavity and a thin plate, 1 m high, that is anchored. An initial pressure of 100 Pa is applied to one side of the thin plate for 0.5 seconds in order to distort it. Once this pressure is released, the plate oscillates backwards and forwards as it attempts to regain its equilibrium (vertical) position. The surrounding fluid damps the plate oscillations, thereby decreasing the amplitude of oscillations with time. The CFX solver calculates how the fluid responds to the motion of the plate, and the ANSYS solver calculates how the plate deforms as a result of both the initial applied pressure and the pressure resulting from the presence of the fluid. Coupling between the two solvers is required since the structural deformation affects the fluid solution, and the fluid solution affects the structural deformation. 

This is a quick start that bypasses the building of input files by copying them from two different samples directories. Normally, you would build your own input files using the ANSYS and CFX GUIs but this will demonstrate the scheduling process. 

The input file, `OscillatingPlate.inp`, is a the step-by-step instructions that is sent to ansys. Normally this file has to be created from the Ansys Workbench, and the .def file is create the cfx.

Under the standard tutorial there is the conclusion concludes with "Obtaining A Solution Using ANSYS CFX-Solver"; contrary to what the tutorial suggests don't press the "Start Run" button. There are two reasons for this: 

* The job will run on only one cpu on the head node. That cpu will be shared with lots of other users so your job will run very badly. 
* By doing so, you break a very important rule, by running a computational intensive process on the head node, you seriously inconvenience all the other users logged on. They will not like that! 

**DON'T RUN JOBS ON THE HEAD NODE.**

Instead, edit your pbs-script to reflect the .inp and .def files you have just created, adjust the number of CPUs and licenses.  Another file to check is the PBS script. In it you will notice the line:

`#PBS -W x=GRES:aa_r+1%aa_r_hpc+12` 

An equivalent in Slurm is to specify the particular generic resource either in the script or at launch. For example, if there is a compute nodes where the generic resource is `gpu` the following can be used:

`#SBATCH --gres=gpu` or `sbatch --gres="gpu" job.slurm`

This is what sets the resources for an ANSYS job. It will not run without it. For the first 4 processors you only need to ask for aa_r+1, for every additional processor over 4 you need to ask for a single aa_r_hpc license as well.

You should be now able to check your output file, `OscillatingPlate.db`. Two other ANSYS jobs you can launch and view results include `pbs-script-pvm` and `pbs-cfx-benchmark`. 

## 3.9 Standard Job with License : Abaqus Finite Element Analysis

The Abaqus FEA suite is commonly used in automatic engineering problems using a common model data structure and integrated solver technology. As licensed software it requires a number of license tokens based on the number of cores required, which can be calculated by the simple formula int(5 x N^0.422), where N is the number of cores. Device Analytics offers an online calculator at http://deviceanalytics.com/abaqus-token-calculator .

The case study here is a car door being propelled into a pole. This is analogous to the EURONCAP pole test, in which a car is propelled sideways into a rigid pole of diameter 254 mm at 29 km/h. While a crash event generally lasts for around 100 milliseconds, the time step of the case study has been reduced to 10 milliseconds to reduce the job time.

`Door.cae  Door.inp  pbs-abaqus  pbs-abaqus-mpi`

The cae file is "complete abaqus environment", the inp file is for input. The output files will be Door.odb and Door.jnl ("output database" and "journal")

Submit the job using the following command: `qsub pbs-abaqus` 

The status of the job can be queried using the following command: `tail -f door.sta` 

Once the job has completed, all files, with the exception of the output database (.ODB) file can be deleted. By default, ABAQUS/CAE writes the results of the analysis to the ODB file. When you create a step, ABAQUS/CAE generates a default output request for the step, which in the case of this analysis is Energy Output. Check the output files for the job to ensure it has run correctly.

You use the Field Output Requests Manager to request output of variables that should be written at relatively low frequencies to the output database from the entire model or from a large portion of the model. You use the History Output Requests Manager to request output of variables that should be written to the output database at a high frequency from a small portion of the model; for example, the displacement of a single node.

The results will be visualised using ABAQUS/CAE. It should be noted that ABAQUS/Viewer is a subset of ABAQUS/CAE that contains only the post-processing capabilities of the Visualization module. The procedure discussed in this tutorial also applies to ABAQUS/Viewer. Copy the files to your local machine and run the Abaqus CAE. Do not do this in Trifid itself if at all possible. You should have Abaqus on your desktop machine for ease of visualisation. 

It is almost always better do conduct computational intensive tasks on the cluster, and visualisation locally.

From the local command: `abaqus cae`

The following procedure is used to open the ODB file;

* Select [Open Database] in the Session Start window.
* The Open Database dialog will appear. Select Output Database from the File Filter dropdown menu.
* Select Door.odb and click [OK].

By default, ABAQUS/CAE will plot the undeformed shape with exterior edges visible. For clarity (if the mesh density is high) it may be necessary to make feature edges visible. The following procedure is used:

* Select [Common Plot Options] in the Toolbox Area.
* In the Basic Tab, check Feature edges in the Visible Edges section.
* Select [OK]. The door assembly undeformed shape plot is shown in the following figure. Both exterior edges and feature edges are shown.

The following procedure can be used to plot the crash models deformed shape:

 * Select [Plot Deformed Shape] in the Toolbox area. By default, the final step is displayed. It should be noted that the Deformation Scale Factor is 1 by default in explicit analyses.
* Select [Animate: Time History] to animate the crash event. The frame rate can be adjusted by clicking [Animation Options] and moving the slider in the Player tab to the desired speed.

## 3.10 Standard Job With Local Visualisation : NAMD and VMD

NAMD is a parallel, molecular dynamics simulation program used to model large biomolecular systems using high performance computing clusters which is freely available for academic work.  If you are interested in running NAMD simulations you should also install a local copy of VMD on your own computer.  VMD is a molecular viewer program that can be used to help set up NAMD simulation and to help analyse and visualize NAMD output. 

VMD can be freely obtained from:  `http://www.ks.uiuc.edu/Research/vmd/`

Additional tutorials and information about NAMD are available at: `http://www.ks.uiuc.edu/Research/namd/`

**Molecular Dynamics Simulation**

We have an example of Ubiquitin protein, in a vacuum,  ready to download and run.  Normally we would do this with water and salt ions, but we need the simulation to run quickly for demonstration purposes. 

Change into this directory and launch the job with the command `qsub` and the pbs script for TORQUE or PBSPro, or `sbatch` for SLURM. 

`cd namd`
`qsub pbs_example_script`
 
This particular job is very short compared to a regular NAMD simulation and should be finished in a few minutes. As the job runs, various output files are produced but the main one you will be interested in is the trajectory file with the  .dcd suffix.  The business end of the script is in the last line: 

`mpiexec namd2  Ubiquitin_example.conf` 

This is saying use the program "mpiexec" to launch the parallel program "namd2" passing the configuration file "Ubiquitin_example.conf"

Let's have a look at the NAMD configuration script: 

`less Ubiquitin_example.conf`

The lines near the top define the input files, (the protein structure file .psf, and the coordinate file, .pdb) and also the name of the output files.:

```
structure		1ubq_example.psf
coordinates		1ubq_example.pdb
outputName		1ubq_example_output_01
```

 Further down you will see: 

```
set temp           310
temperature      $temp
```

Which is setting the temperature to 310 K ( 37 C) while below that we have:

```
## Parameter file:
paraTypeCharmm      	on
parameters			par_all27_prot_na.inp 
```

This tells NAMD which parameter file to use; you'll see a copy of the parameter file in the NAMD_example directory.  Depending on what molecules you have in you simulation, you may need to use a more detailed parameter file.

Somewhere in the middle you will see these lines: 

```
## Periodic Boundary Conditions
cellBasisVector1    42.      0.       0.
cellBasisVector2     0.     42.       0.
cellBasisVector3     0.       0.     42.
cellOrigin           0        0        0
wrapAll              on
wrapWater            on
```

This defines the boundary conditions, a trick to simulate an infinite system, where a molecule coming off one side of the boundary will reappear on the other. 

Near the bottom we have the lines: 

```
## Output files:
restartfreq         20000 
dcdfreq             50
xstFreq             20000
outputEnergies      20000
outputPressure      20000
```

These lines tell us how often to write out to the output files.  The most important is the dcdfreq, (here set to 50), or how often to save a frame of the dynamics trajectory.  Usually this is set around 5,000 to 10,000. 

The last few line in the configuration file: 

```
## Minimize, reinitialize velocities,  run dynamics:
minimize           100
reinitvels         $temp
run                5000 
```

These tell us that the simulation is first minimized for 100 steps,  (a good idea to iron out bad contacts and steric clashes, but usually set to 1000 steps or more), followed by resetting the velocities to $temp, (310 K, remember?), and then told to run only a mere 1000 steps.  This is a very short example; typically you might set "run" to  10000000 or more!

When the job finishes, the output directory should have something like the following:

```
ls -lrt    
-rw-r--r-- 1 joe vpac  199275 Feb 20 12:54 par_all27_prot_na.inp 
-rw-r--r-- 1 joe vpac   97324 Feb 20 12:54 1ubq_example.pdb 
-rw-r--r-- 1 joe vpac  286622 Feb 20 12:54 1ubq_example.psf 
-rw-r--r-- 1 joe vpac     471 Feb 20 12:58 pbs_example_script 
-rw-r--r-- 1 joe vpac    2614 Feb 20 13:02 Ubiquitin_example.conf 
-rw------- 1 joe vpac       0 Feb 20 13:02 namd_example_job_01.e131657 
-rw------- 1 joe vpac     166 Feb 20 13:03 1ubq_example_output_01.xst 
-rw------- 1 joe vpac  141418 Feb 20 13:03 Namd_1ubq_example_output.txt 
-rw------- 1 joe vpac     224 Feb 20 13:03 1ubq_example_output_01.xsc 
-rw------- 1 joe vpac   29548 Feb 20 13:03 1ubq_example_output_01.coor 
-rw------- 1 joe vpac   29548 Feb 20 13:03 1ubq_example_output_01.vel 
-rw------- 1 joe vpac 1515180 Feb 20 13:03 1ubq_example_output_01.dcd 
```

The main output file is .dcd while the .xsc, .coor, .vel files all have to do with being able to restart the simulation at a later date, while the Namd_1ubq_example_output.txt file contains the text output from the simulation. 

Copy that information back to your local computer and use VMD to visualize the results – remember it is nearly always preferable to do visualisation on the local system and computation on the HPC cluster.
									
**Visualizing NAMD results with VMD**

In part 2 of this tutorial, you will be using the molecular visualization program, VMD to look at the trajectory data of the ubiquitin protein you generated in part I of the tutorial. 

Download the entire NAMD example directory back to your local computer. For example:

`scp  -r [your account name]@trifid.vpac.org:namd .` 

You can now start VMD and load up the trajectory data.  In a new terminal type: `vmd` 

Three windows will appear: 
 
The Main panel

The Display

The Console

The first file you need to read into VMD is the protein structure file, (1ubq_example.psf in this case). The .psf file contains important information about the system such as which atoms are bonded together, what charge they are, and the mass of each atom type, but does not contain any spacial information. 

From the Main panel: 
File - New molecule - (browse: `1ubq_example.psf`) - load

Next load the coordinates from the pdb file:

File - Load data onto molecule - (browse:  `1ubq_example.pdb`) - load 

Now you should have the model in the display that  can be moved around with the mouse. 

This is the initial starting position of the simulation.   Next load in the trajectory data into VMD:

File - Load data onto molecule - (browse: `1ubq_example_output_01.dcd`) - load

To summarise, load structure, then data, then trajectory.

This data is shows how the atoms in the model moved around during the course of the NAMD simulation.  You can play the trajectory by pressing the bottom right arrow of the Main panel. Use the speed scroll bar to the left of that button to slow it down.

What you are seeing is supposed to represent is the molecular motion of the protein on an extremely small time scale.   The NAMD program calculates how the molecule moves over time given certain parameters such as temperature.  These models and simulations can give insight into how proteins behave and their role in biological function and certain diseases.

From the main panel you can bring up the Representations dialog to play with more rendering types: 

Graphics - Representations   

**Comparison of Job Time from NAMD**

The default pbs script for NAMD is 4 nodes (i.e., 4 cores), which are sourced from anywhere on the cluster. The output file also describes the time that this took, along with other resources used:

```
tail Namd_1ubq_example_output.txt
WallClock: 20.340076  CPUTime: 20.340076  Memory: 279.839844 MB
```

It is worthwhile experimenting with different configurations to determine the best combination of processors (and memory) to suit each task or group of tasks. For example, consider the results from the following (using TORQUE's descriptions):

| Resource Request		| Description					|
|-------------------------------|-----------------------------------------------|
| #PBS -l nodes=4		| 4 cores from anywhere on the cluster		|
| #PBS -l nodes=1:ppn=4		| 4 cores from one specific system unit		|
| #PBS -l nodes=2		| 2 cores from anywhere on the cluster		|
| #PBS -l nodes=8		| 8 cores from anywhere on the cluster		|
| #PBS -l nodes=2:ppn=4		| 8 cores, 4 from two nodes each		|
| #PBS -l nodes=16		| 16 cores from anywhere on the cluster		|
| #PBS -l nodes=1:ppn=16	| 16 cores from one system unit			|

It is worth running each of these jobs in succession and noting the walltime results.

All parallel tasks have some sequential overhead which means that doubling the number of cores does not always equate with a halving of time for completion and jobs that are launched with tighter coupling will usually run faster than those are are distributed, but may have to wait in the queue. 

Overall, when submitting jobs it really is a case of trial and error initially for the researcher until they can discover what is the most optimal fit for the tasks that they have at hand.

# 4.0 Intermediate Linux

## 4.1 Login Files

One of the first commands introduced was how to generate directory listing when a user logged in on the command line i.e., ls. We also learned how to get a more complete directory listing by applying options to a basic command, for example one which is ls -lart (list with long format, including file permissions (l), all files (a), sorted in reverse order (r), by modification time (t).  Start up a terminal window, login to the supercomputer and run a long directory listing: `ls -lart` 

Two of the hidden files are .bash_profile and .bashrc . These are startup files for the Bash shell (Bourne-again shell). The shell is a program that acts as command interpreter between the user and the operating system. Users can interact directly with the shell, or with an application which interacts with the shell as the image portrays (image from opensuse.org). A user submits their commands to the shell, which then either executes them directly or passes them on to other programs. These programs in turn request lower-level services from the kernel. Unlike some operating systems, Linux has a number of different shells available to users some of which we'll briefly explore in this course; the default most of these days is bash. 

The `.bash_profile` file is executed when you login. This is a good place to include configurations for the user.
The `.bashrc` is used for nonlogin shells and typically used for configurations to the bash environment itself. For example if a second-bash process is initiated after a user has already logged in.

When Bash is invoked as an interactive login shell it first reads and executes commands from the file `/etc/profile`, if that file exists. After reading that file, it looks for `~/.bash_profile`, `~/.bash_login`, and `~/.profile`, in that order, and reads and executes commands from the first one that exists and is readable. 

Typically an startup file for an interactive shell will include startup commands, paths and environment variables, aliases and terminal colours. When an interactive shell that is not a login shell is started (for example, a person who has the rights to 'su', substitute user, running a script), Bash reads and executes commands from `~/.bashrc`, if that file exists. 

Usually a `~/.bash_profile` contains a line to ensure that options in `.bashrc` are included with an interactive login; but not the other way around. For example, if one checks `.bash_profile` they should see the line: 

`if  [ -f ~/.bashrc ]; then . ~/.bashrc; fi` 

```
[root@trifid-m train01]# cat .bash_profile 
# .bash_profile 
# This file can be edited by the user to set up their system as they like. 
# Its copied to a users dir when their account is first created. 
# SYSADMIN : don't edit the one in /etc/skel, it gets overwritten, play 
# with the one in /common/skel if necessary. 
# David Bannon, 23/4/03 
# Get the aliases and functions 
if [ -f ~/.bashrc ]; then 
	. ~/.bashrc 
fi 
# User specific environment and startup programs 
module load vpac 
alias d='ls -F --color' 
# Override some of the silly colours Linux gives ls : 
# alias ls=ls --color=never 
#LS_COLORS='di=33' 
# Like to play safe? comment out or override when sure with -f ? 
alias rm='rm -i' 
alias cp='cp -i' 
PATH=$PATH:$HOME/bin 
export PATH 
unset USERNAME 
```

Once you get past the comments (which are always a good idea) there isn't too much in .bash_profile; the most important things are loading a set of default environment variables (module load vpac), two cautious aliases for the rm and cp commands and setting some paths. Any aliases can be added there according to whatever the individual user wants. Some people, who are familiar working alongside MS-DOS machines, will add an alias that "dir='ls'" for example. The following is a snippet from the author's .bash_profile:

```
alias ls='ls -F' 
alias cp='cp -i' 
alias rm='rm -i'
alias mv='mv -i'
alias ln='ln -i'
alias ll='ls -lashrt' 
alias lo='exit' 
alias mount='mount |column -t'
alias now='date +"%Y-%m-%d-%T"'
# --------------------- 
# Undocumented feature which sets the size to "unlimited". 
# http://stackoverflow.com/questions/9457233/unlimited-bash-history 
export HISTFILESIZE= 
export HISTSIZE= 
export HISTTIMEFORMAT="[%F %T] " 
# Change the file location because certain bash sessions truncate .bash_history file upon close. 
# http://superuser.com/questions/575479/bash-history-truncated-to-500-lines-on-each-login 
export HISTFILE=~/.bash_eternal_history 
# Force prompt to write history after every command. 
# http://superuser.com/questions/20900/bash-history-loss 
PROMPT_COMMAND="history -a; $PROMPT_COMMAND" 
```

It should be mentioned that aliases don't have to established in such files; a temporary alias can be estabslished as part of a bash process using the same command structure. An alias can be removed from a process with the `unalias` command.

Apart from some extra aliases, this bash_profile also adds commands to a .bash_eternal_history file, so that there is a record of every command typed, dating back years.  Given that quite often a complex command desired is often similar to a command that has been typed in the past, the eternal history allows for a search for this archive. It will grow over time of course, but as a pure text document, it's going to be a long time before the space it takes up is too much.

The search path is stored in the environment variable PATH; in addition to the existing path .bash_profile adds any binaries the user has created ($HOME/bin). When using a UNIX-like operating system, some commands are built internally to the shell (e.g., cd). Others are external and require the shell to start a new subprocesses (e.g., /bin/ls) with two low-level system calls called fork and exec. The search path is a list of directories that the shell will search through to find a command which matches the user's request. The path is searched in order, so if there are two commands with the same name, the first in the path will be executed.

The default environment variables are for the following:

```
[lev@trifid ~]$ module list 
Currently Loaded Modulefiles: 
1) intel/12.1.3          3) modules               5) gmp/5.0.5             7) mpc/1.0               9) vpac/config 
2) openmpi-intel/1.6.3   4) pgi/12.10             6) mpfr/3.1.1            8) gcc/4.7.2 
```

What about `.bashrc`?

```
[root@trifid-m train01]# cat .bashrc# .bashrc 
# User specific aliases and functions 
# Source global definitions 
if [ -f /etc/bashrc ]; then 
	. /etc/bashrc 
fi 
```

Here there's a another link in the home directory for `.bashrc` for global definitions sourced in `/etc/bashrc`

```
$ less /etc/bashrc 
$ /etc/bashrc 
<output snipped>
...
```

There's also a reference to /etc/profile. What's there?

```
$ less /etc/profile
<output snipped>
```

The main point of this is to illustrate how much of an environment is determined as a user's session is invoked. It also illustrates a hierarchy from general rules and specific rules. As can be expected, where there is a conflict, the specific rule applies, if permissions allow it. For example, a user can set their own `umask` that differs their `.bashrc` from the default from `/etc/bashrc`.

When a login shell exits, Bash reads and executes commands from the file ~/.bash_logout, if it exists. 

```
$ more .bash_logout 
$ ~/.bash_logout 
/usr/bin/clear 
```

This command simply clears the terminal screen. Why do we have this? One reason is so that when a user exits the terminal in a public environment their work isn't left behind for anyone to see. Certainly this is less of an issue these days given that most systems use virtual terminals, but nevertheless anything could be placed in the .bash_logout, according to what the individual wants. It's about users having the opportunity to control their environment, and to script activities for that environment.

The name of the shell, by the way, is a bit of a pun (as are quite a few commands). In part is recognition of the popular early Unix shells (authored by Stephen Bourne in 1977). Over time a number of other shells were developed, some with some excellent features. Bash took up these features to create a superset of the original Bourne shell (they were "bashed together"). Also, indicating the popularity and joy from using this new shell, it is expressed in the full name – the Bourne-again shell.

## 4.2 Editing With Vim

In the early part of this book the editor nano was recommended to write PBS scripts and edit text files. As mentioned at that point, there are other advanced editors available, including vim and Emacs. At this point vim is explored. This is not meant to be complete tutorial on the extensive capabilities of vim but rather a very brief introduction to its core features. If one wishes, they can continue to use nano for the purposes of working with an HPC cluster, but do consider returning to review vim as it is a very efficient and effective editor. It does however have a steep learning curve, which even its most ardent advocates will acknowledge, and as such is not necessarily recommended for beginners. 

The name "Vim" is an acronym for "Vi IMproved", an extended version of the vi editor. As a modal text editor when one starts vim (vim <filename> at the command prompt, the editor starts in command mode. The interface is not based on a menu, but rather on commands. A GUI version (gVim), has menus and toolbars for common commands. There is also a visual mode in command-line vim.

Typing 'i' enters the insert mode, which allows text to be added and edited in the document.  Pressing the Esc key switches vim back to the command mode, with Esc and 'i' back into insert again.  In general in vim there are two types of commands; cursor movements and text modification. 

Vim may initially seem a little cryptic with its commands, and "dual-clutch" system, switching between the different modes, but it really is very powerful. Because the commands are often abstract, learning by doing with vim is far more effective than memorisation alone. It is thoroughly recommended that one goes through the vimtutor a couple of times at least. The following is just a reference to some of the key commands.

**Relative movement**

Relative movement can be prefixed with a count, to tell vim to repeat the motion. 

| Command	| Description								|
|---------------|-----------------------------------------------------------------------|
| h j k l	| Move the cursor to the left, down, up, right, respectively. These also take a count: '8l' moves the cursor 8 letters to the right.						| 
| Return + - 	| Move the cursor down (Return and '+') or up ('-').			| 
| w W b B	| Move forward ('w' and 'W') or back ('b' and 'B') by a word. 'w' and 'b' treat anything non-alphanumeric as a word delimiter; 'W' and 'B' honor only white space. Can be combined with quantity e.g., 2w, move forward two words.							|
| } {		| Move to end of current o r previous paragraph, respectively.		| 
| ) (		| Move to end of current or previous sentence, respectively. 		|

**Absolute movement**

| Command	| Description								|
|---------------|-----------------------------------------------------------------------|
| G 		| Go to (a specified line). E.g., "10G" moves the cursor to line 10.  Without a count, vim goes to the last line of the buffer.						| 
| ^		| Move to first nonblank character on the current line. 		|
| $		| Move to end of current line. 						|
| 0		| Move to beginning of current line. 					|

**Operators**

Many text modification commands are known as operators. They can be prefixed with a count (to repeat the operator), and are suffixed with a motion command. The text between the current position and the final position (after the motion) is called a region. Ensure that you're in 'command mode'.

These are examples of operators: 

| Command	| Description									|
|---------------|-------------------------------------------------------------------------------|
| o O		| Open a line below (o) or above (O) the cursor and change to insert mode.	|
| x		| Delete a character under the cursor.						|
| d		| Delete a line. 'd10G' deletes lines from current line until line 10 (inclusive).  Can be added with motion (e.g., dw, delete to end of a word excluding the character the cursor is under) |
| i		| Enter to insert mode. To return to command mode use <ESC>			|
| a A		| Append text after the cursor (a) or at the end of the line (A).		|
| u, U		| Undo the last command (u), or undo changes on an entire line (U)		|
| Cntrl-R	| Redo; undo the undos.								|
| y		| Yank (or copy) text (y) or a line (yy), can be combined with movement commands (e.g., 2yy to copy two lines).										|
| p		| Put (or paste), put previously deleted text after the cursor.			|
| R		| Replace text; every typed character replaces existing characters.		|
| c		| Change operator; allows you to change from the cursor with motion.  eg. Type  ce  to change from the cursor to the end of the word,  c$  to change to the end of a line.		|
| < >		| indent a region. '<}' indents left all the lines from here until end of  paragraph. '>/xxx' indents right lines from here until the line containing  the pattern 'xxx'. 		|

In some instances, if the motion command repeats the operator character (as in 'dd'), the region is a whole line (e.g., 'dd' deletes the current line. Prefixing it with a count repeats (or makes it apply to more than one), e.g., '10dd' deletes 10 lines. 

**Visual Mode**

The visual mode in vim allows for an easy way to select text for operations. It is invoked with "v", "V", or Ctrl-V in the command mode, marking the character under the text as the start. Use the cursor to the end character and then apply an operator. With Ctrl-V it marks a block of text. 

For example, to change the contents in a column of text, select the column with Ctrl-V. When the the end of the text is reached, type c, which represents "visual block change", then enter the new text, select ESC-ESC, and all the text in the column will be changed. ESC is used to leave the visual selection mode. The y, p, and d (yank, put, and delete for the marked area) commands can be used as well. The case of all text can be changed with the tilde (~) command. 

**Other Commands**

| Command		| Description									|
|-----------------------|-------------------------------------------------------------------------------|
| :/pattern		| Search for pattern and place the cursor at the start of the matched text.			| 
| :%s/foo/bar/gc	|Global search for 'foo' and replace with 'bar' globally (g) and with confirmations (c).	| 
| :?pattern		| Search in the reverse direction. 					       |
| %			| Move the cursor to the matching brace or bracket: {} [] (). 		       |
| . 			| Repeat the last command which has modified the file.			       | 
| :!program		| Execute an external command						       |
| :w filename		| Writes (saves) the current document. If the optional filename is provided, the text is saved in the specified file. 								       |
| :q			| Quits the editor. 							       |
| :e			| Loads the specified file into the editor. 				       |
| :n			| Loads the next file into the editor. Useful when vim was invoked from the command line with multiple file names (e.g., vim -p filename1 filename2 filename3)		       |
| :r filename		| Reads (inserts) the content of the specified file into the current document. | 
| v			|	Go into visual mode to select an area for action.		       |
| :set number		| Turns on line numbers. 						       |

**Vimrc**

Like .bash_profile and .bashrc an equivalent can be created with a .vimrc.  The following is a small and simple example; you will note that " is a comment marker.  Other options  can be found by going to :help options in vim itself.

```
set nocompatible "use vim defaults rather than force compatibility with vi
set incsearch  "Incremental searching; vim will search for text as you enter it
set tabstop=4 "Sets tabs to four characters (default is eight)
set number "Sets line numbers automatically
au BufWritePost   *.sh !chmod +x % "Converts .sh files to executable 
au BufWritePost   *.pl !chmod +x % "Converts .pl files to executable 
map <F7> :tabn <ENTER> 
map <F8> :tabp <ENTER>
```

Of particular note is the commands to automatically turn files that end in .sh or .pl into executables when on writes out from the buffer, and the keyboard bindings for tabbed editing.

**Tabs and Windows**

The map command, for example, turns the keys F7 and F8 to tabn and tabp respectively; this allows a user who is using tabbed vim (invoke with vim -p filename1 filename2 etc) to quickly cycle between the different tabs rather than type tabn, tabp etc. A command can be run across multiple tabbed files with tabdo, for example tabdo %s/foo/bar/g will replace 'foo' with 'bar' across all files.

As an alternative for working with multiple windows and files simultaneously, new windows can be created in vim with the following commands

| Command		| Description									|
|-----------------------|-------------------------------------------------------------------------------|
| :sp filename		| Split the window and create or open a new file.                               |
| ctrl+ws		| Split windows.								|
| ctrl+wv		| Split windows vertically							|
| ctrl+ww		| Switch between windows							|

**Vimtutorial and Vimgolf**

An interactive tutorial is typically installed alongside vim and can be invoked with the command vimtutor. It's worth running through this a few times to gain mastery over the basic commands. 

A lot of the vim attitude is about saving keystrokes and becoming incredibly efficient at making changes to text files.  It is recommended that you visit sites like vimgolf (http://vimgolf.com) to see how some challenges on how major changes to files can be achieved with minimal effort. Whilst some of the examples may seem short and even contrived, consider the same sort of changes being required over files that are tens of thousands of lines – the fact that such editing can be carried out with a handful of keystrokes should illustrate the power of vim.

## 4.3 Editing with Emacs

Emacs is one of the oldest continuous software applications available, first written in 1976 by Richard Stallman, founder of the GNU free software movement. At the time of writing it was up to version 24, with a substantial number of forks and clones developed during its history. 

The big features of Emacs is the extremely high level of built-in commands, customisation, and extensions, so extensive that those explored here only begin to touch the extraordinary diverse world that is Emacs. Indeed, Eric Raymond, notes "[i]t is a common joke, both among fans and detractors of Emacs, to describe it as an operating system masquerading as an editor". 

With extensions, Emacs includes LaTex formatted documents, syntax highlighting for major programming and scripting languages, a calculator, a calender and planner, a text-based adventure, a web-browser, a news-reader and email client, and an ftp client. It provides file difference, merging, and version control, a text-based adventure game, and even a Rogerian psychotherapist. 

Try doing that with Notepad!

This all said, Emacs is not easily to learn for beginners. The level of customisation and the detailed use of meta- and control- characters does serve as a barrier to immediate entry.

This tutorial will provide a usable introduction to Emacs. 

**Starting Emacs**

The default of Emacs installations on contemporary Linux systems assume the use of a graphical-user interface. This is obviously not the case with an HPC system, but for those with a home installation you should be aware that `emacs -nw` from the command-line will launch the program without the GUI. If you wish to make this the default you should add it as an alias to `.bashrc` (e.g., `alias emacs='emacs -nw`). 

Emacs is launched by simply typing 'emacs' on the command line. Commands are invoked by a combination of the Control (Ctrl) key and a character key (`C-<chr>`) or the Meta key (Alt, or Esc) and a character key (`M-<char>`). Of course, if you're using a terminal emulator, as if often the case, the "alt" key will probably be superseded by the emulator itself, so you'll want to use Esc instead. However the Esc key is not a shift key; rather than hold it down, type it distinctly.

**Basic Commands**

To quit emacs use `C-x C-c` – you'll use this a lot as a beginner! Note that with all Emacs commands this represents two sets of keystrokes. The space is not actually typed. 

To "break" from a partially entered command, `C-g`.

If an Emacs session crashed recently, `M-x` recover-session can recover the files that were being edited. 

The menubar can be activated with `M-/`` 

The help files are accessed with `C-h` and the manual with `C-h r`.

**Files, Buffers, and Windows**

Emacs has three main data structures, Files, Buffers, and Windows which are essential to understand. 

A file is the what is the actual file on disk. Strictly, when using Emacs one does not actually edit file. Rather, what happens is the file is copied into a buffer, then edited, and then saved. Buffers can be deleted without deleting the file on disk. 

The buffer is an data space within Emacs for editing a copy of the file. Emacs can handle many buffers simultaneously, the effective limit being the maximum buffer size, determined by integer capacity of the processor and memory (e.g., for 64-bit machines, this maximum buffer size is 2^61 - 2 bytes). A buffer has a name, usually after the file from which it has copied the data. 

A window is the user's view of a buffer. Not all buffers may be visible to the user at once due to the limits of screen size. A user may split the screen into multiple windows. Windows can be created and deleted, without deleting the buffer associated with the window.

Emacs also has a blank line below the mode line to display messages, and for input for prompts from Emacs. This is called the mini-buffer, or echo.

**Exploring and Entering Text**

Cursor keys can be used to mover around the text, along with Page Up and Page Down, if the terminal uses them. However Emacs aficionados will recommend the use of the control key for speed. Common commands include the following; you may notice a pattern in the command logic:

<pre>
C-v (move page down), M-v (move page up)
C-p (move previous line), C-n (move next line), 
C-f (move forward, one character), C-b (move backward, one character)
M-f (move forward, one word), M-b (move backward, one word)
C-a (move to beginning of a line), C-e (move to end of a line)
M-a (move forward, beginning of a sentence)
M-e (move backward, beginning of a sentence)
M-{ (move backward, beginning of a paragraph), M-} (end of paragraph)
M-< (move to the beginning of a text), M-> (move end of a text). 
<backspace>  (delete the character just before the cursor )
C-d (delete the character on the cursor) 
M-<backspace> (cut the word before the cursor)
M-d (cut the word after the cursor )
C-k  (cut from the cursor position to end of line )
M-k  (cut to the end of the current sentence )
C-q (prefix command; use when you want to enter a control key into the buffer  e.g,. C-q ESC inserts an Escape)
</pre>

Like the page-up and page-down keys on a standard keyboard you will discover that Emacs also interprets the Backspace and Delete key as expected.

A selection can be cut (or 'killed' in Emacs lingo) by marking the beginning of the selected text with `C-SPC` (space) and ending it with with standard cursor movements and entering `C-w`.  Text that has been cut can be pasted ('yanked') by moving the cursor to the appropriate location and entering C-y. 

Emacs commands also accept a numeric input for repetition, in the form of `C-u`, the number of times the command is to be repeated, followed bythe command (e.g., `C-u 8 C-n` moves eight lines down the screen.) 

**File Management**

There are only three main file manipulation commands that a user needs to know; how to find a file, how to save a file from a buffer, and how to save all. 

The first command is `C-x C-f`, shorthand for "find-file". At first this command checks prompts for the name of the file. If it is already copied into a buffer it will switch to that buffer. If it is not, it will create a new buffer with the name requested. 

For the second command, to save a buffer to a file file with the buffer name use `C-x C-s`, shorthand for "save-buffer". 

The third command is `C-x s`. This is shorthand for "save-some-buffers" and will cycle through each open buffer and prompt the user for their action (save, don't save, check and maybe save, etc) 

**Buffer Management**

There are four main commands relating to buffer management that a user needs to know. How to switch to a buffer, how to list existing buffers, how to kill a buffer, and how to read a buffer in read-only mode.

To switch to a buffer, user `C-x b`. This will prompt for a buffer name, and switch the buffer of the current window to that buffer. It does not change your existing windows. If you type a new name, it will create a new empty buffer.

To list current active buffers, use `C-x C-b`. This will provide a new window which lists current buffers, name, whether they have been modified, their size, and the file that they are associated with.

To kill a buffer, use `C-x k`. This will prompt for the buffer name, and then remove the data for that buffer from Emacs, with an opportunity to save it. This does not delete any associated files.

The toggle read only mode on a buffer, use `C-x C-q`.

**Window Management**

Emacs has it's own windowing system, consisting of several areas of framed text. The behaviour is similar to a tiling window manager; none of the windows overlap with each other. 

Commonly used window commands include: 

<pre>
C-x 0 delete the current window 
C-x 1 delete all windows except the selected window 
C-x 2 split the current window horizontally 
C-x 3 split the current window vertically 
C-x ^ make selected window taller 
C-x } make selected window wider 
C-x { make selected window narrower
C-x + make all windows the same height
</pre>

A command use is to bring up other documents or menus. For example, with the key sequence `C-h` one usually calls for help files. If this is followed by `k`, it will open a new vertical window, and with `C-f`, it will display the help information for the command `C-f` (i.e., `C-h k C-f`). This new window can be closed with `C-x 1`. 

**Kill and Yank, Search-Replace, Undo**

Emacs is notable for having a very large undo sequence, limited by system resources, rather than application resources. This undo sequence is invoked with `C-_` (control underscore), or with `C-x u` .  However it has a special feature that, by engaging in a simple navigation command (e.g., `C-f`) the undo action is pushed to the top of the stack and therefore the user can undo an undo command.

**Other Features**

Emacs can make it easier to read C and C++  by colour-coding such files, through the `~/.emacs` configuration file, and adding `global-font-lock-mode t`. Programmers also find the feature on being able to run the GNU debugger (GDB) from within Emacs as well. The command `M-x gdb` will start up gdb. If there’s a breakpoint, Emacs automatically pulls up the appropriate source file, which gives a better context than the standard GDB. 

## 4.4 Archiving Files

As you've probably guessed by now there are a number of utilities available to archive and compress files in Linux and often they can be combined. Here we'll have a look at some of the most common such as tar, gz and bz, along with brief mention (and script) of some of the others. 

Let's begin with the file `class.tar.gz` You'll notice the file has a double-barrelled suffix, `.tar.gz`. This is because it was archived with tar and compressed with gz. The former, as the name suggests, was originally designed for tape archives. That program concatenates  one or more files with a header that and preserves file system information such as user and group permissions, dates, and directory structures. The latter (gzip) is any of several software applications used for file compression and decompression, in this case meaning the GNU Project's implementation ("GNU Zip"). 

Typically both tar and gzip are used in conjunction with each other. A group of files is concatenated with tar, and then the (new, single) file is compressed. This is often represented as a `*.tar.gz` file, although it can also appear as a `*.tgz` file. Both `*.tar` or `*.tar.gz` (or `*.tgz`) are often referred to as 'tarballs'.

As an aside, the type of a file can often be determined by the file command.

`file class.tar.gz`

To illustrate the difference between archiving and compression let's uncompress the class.tar.gz file and have a look at its size. First however let's see what is inside it; as it is both an archived and compressed file we need the `t` option (table of contents), the `z` option (for compression), and the `f` option (file). If it was just a tar file we wouldn't need the `z`.

`tar -tzf class.tar.gz`

As you can see, the tar file is quite big compared to the sum of the component files (`mping.c`, `mpi-pong.c`, `msum.c`), whereas the tar.gz file is much smaller. The tar larger file's size is because of the file information system material.

> As an aside, these files are small sample MPI programs.

To extract a tar file the command `tar xvf filename.tar.gz` can be used. The options stand for extract (x), verbose (v), and file (f). The `f` option is another relic of the past - the default is a tape machine! Note that this command works for files that are in a tar or a combined tar and gz. To create a tar archive the command `tar -cvf archive.tar $directory`, where the options stand for create (c), verbose (v) and files (f). Note that there is no `untar` command for extraction. To extract a gz file, use the command illustrated above (`gunzip filename.gz`). To compress a file in the gz format simply use `gzip $directory`).

As mentioned tar and gz are often combined. To create a tar archive and compress it use something like `tar cvzf comressedarchive.tar.gz $directory`, where the 'z' option represents the gz compression. For example to create such an archive of the `class` directory, the following command would be used:

`tar cvfz class.tgz class/`

Perhaps, for backup purposes you might want to archive and compress and entire directory (e.g., a home directory). In that case the command would be:

`tar cvfz homeuser.tar.gz /home/$user`

Note that when directories are archived they are also extracted in the order that they were put in. This can create an annoying "tarbomb", which extracts all the directories within the tarball in the current working directory. To check whether this is the case, run a table of contents check - tar -tzf <<filename>>.tar.(gz) - to see where it will be extracted to. If it is less than ideal, create another directory, move the tarball, and extract and decompress there instead. To recover from a tarbomb, use the command xargs; it takes the input from the standard input (or file) and uses that as the arguments for another command. So if your carefully designed directory has been littered by a thousand files and folders from a badly designed tarball, you can run the following: 

`tar tf tarbomb.tar | xargs rm -rf`

This xargs command takes the output of the tar table of contents and uses that as an input for the rm -rf command. Usual caveats apply with using 'rm' - be very careful that you don't delete something that you actually want to keep! 

Another common compression algorithm that Linux users are likely to encounter with regularity is bzip2. It is particularly notable for the efficiency of the files it compresses, but at a cost of decompression speed. Like gzip, bzip2 is not an archiver; again you have to use tar for that. The commands however are remarkably similar. Drawing from the previous examples just provided you would have commands like the following;

```
tar xvf <<filename.tar.bz2>>
tar -tjf class.tar.gz 
tar cvfj class.tar.bz2 *.class
tar cvfj homeuser.tar.bz2 /home/user
```

## 4.5 Redirection and Tee

Earlier, we learned the basic commands for redirection and piping. To redirect output use the '>' symbol. To redirect input (for example, to feed data to a command) use the '<'. Concatenation is achieved through the use of '>>' symbol. Like other Linux commands, redirects can be used multiple times for useful effects. 

A core principle of UNIX-like operating systems is that the output of one program should be usable as the input to another. In most cases this means that the operating system design shows a preference to plain-text files. This includes process streams as well as data streams. For example run the following set of commands:

```
cd ~
mkdir dir1; mkdir dir2
touch dir1/file1; touch dir1/file2; touch dir1/file3
touch dir2/file3; touch dir2/file4; touch dir2/file5
diff -u <(ls dir1) <(ls dir2) 
```

Will display a diff of files in the root of dir1 and dir2 . It is the results of the ls commands that have been redirected. Note that modern implementations of diff will be able to carry this out automatically with simply `diff dir1 dir2`, or with subdirectories, `diff -r dir1 dir2`. However redirection is required if the diff is being carried out over ssh, for example comparing a locate and remote data directory.

`diff <(ssh user@trifid.vpac.org ls -R /home/lev/data) <(ls -R /home/lev/workdata)`

Redirections require some grounding in theory; the concept of terminal as a file and as standard input and output. We are by now familiar with the concept of ordinary files and directories. In UNIX-like operating systems devices are a type of file as well, and are structured under the /dev directory. For example, a directory listing of /dev will list as files internals like cpu and ram, peripherals like disk and dvd, and terminal connections tty, tty0, tty1 etc. For example simply run ls /dev on your desktop or on the cluster. 

The default behaviour is to accept inputs from the terminal (standard input) and display the results, either output or errors, to the terminal (standard output). With a redirection, input, output or errors can be redirected. In the previous tutorial we did this with a simple redirect to a file. 

`grep 3639992 < quakes.csv > 3639992.txt`

Which is, of course, identical to the command `grep -i 3639992 quakes.csv > 3639992.txt`, but it illustrates the use of multiple redirection. 

In any shell derived from the original Bourne shell (such as bash), redirections can be further modified by placing a number next immediately before the redirector, which affects which stream is being used for redirection. These numbers are 0 for standard input, 1 for standard output and 2 for standard error. 

Standard error is just another output stream. Unlike standard output, it provides error messages rather than results. Like standard output it is typically sent to the terminal by default, but it can be redirected to a file. e.g., run the ifconfig command on tango, then run it again with the error message redirected. As an example, let us try to list a directory that doesn't exist.

```
ls -d /home/train01/seismic
ls: cannot access /home/train01/seismic: No such file or directory`
ls -d /home/train01/seismic 2> error.txt 
cat error.txt 
ls: cannot access /home/train01/seismic: No such file or directory 
```

Redirections of this sort are common, for example, among programmers who wish to capture the errors of compilation to a file for further analysis (e.g., ./configure 2> errors.log)

Standard error can also to be redirected to the same destination that standard output is directed to using `2>&1`; it merges stderr (2) into stdout (1). This has one very useful application on tango - because the environment modules program is written so that the command module avail outputs to error, we cannot run module avail | less with the results that we would expect. 

`module avail | less` 
`module avail 2>&1 | less`

This appending is the equivalent is the equivalent of the following:

`module avail >> modulelist.txt`
`less modulelist.txt`

A pipe is used to connect the standard input of one command with the standard input of another. It has the same effect as redirecting the standard output of a command to a file then using that file as the input to another command. In the introductory tutorial we used it as follows: `who -u | less` . This is the equivalent of: `who -u > whofile.txt` and `less < whofile.txt`, without the need of creating the temporary `whofile.txt` - and on that note, the utility `mktmp` (or `mktmp -d` for directories), is a far better way of generating short term files and directories for temporary storage - they're stored in `/tmp` and discarded when no longer needed.

Pipes are especially good for creating custom commands on the fly for example

`who -u | sort | less`

The tee command copies standard input to standard output and also to any files included in the tee. The 'tee' indicates that it acts like the letter, or like a tee-pipe used in plumbing. When combined with pipes it takes input from a single direction and outputs it two directions.  This is particularly handy if one wishes to see and save information from a command.

For example, the following will give an output file of the command who -u (who.txt) and pipes grep over the who -u command;

`who -u | tee whofile.txt | grep $username`

Another example would be to display a system's IP address and write that to a file at the same time. e.g.,

`/sbin/ifconfig | tee ipaddress.txt | less`

So, in summary:
 
| Redirects and Pipes				| bash command			|
|:----------------------------------------------|:------------------------------|
| Redirect standard output to a file		| command > file		|
| Redirect standard error to a file		| command 2> file		|
| Redirect standard output and standard error to file | command > file 2>&1	|
| Redirect a file as standard input to a command | command < file		|
| Redirect stdout to end of file		| command >> file		|
| Redirect standard and standard error to end of file | command >> file 2>&1 	|
| Pipe standard output to a second command	| command &#124; command2	|
| Pipe standard output and standard error to a second command | command 2>&1 &#124; command2 |

## 4.6 Attributes, Types, Ownership

The command chmod (change mode) changes the file system modes of files and directories. It is normally executed on permissions, but can also include special modes. The command uses either an octal reference or a symbolic reference for notation. To see what permissions currently exist, use the `ls -l` command. Among others there should be a file something like the following;

`[train01@trifid ~] ls -l`    
`-rw-r--r-- 2 lev vpac  379 Jul  1 10:32 quakes.csv`

The file attributes and permissions are the series `-rw-r--r--` . The first character indicates the file type. Usually you will encounter either a `-` for a regular file, a `d` for a directory, and `l` for a symbolic link. Less common file types include `b` for block devices (e.g., hard drives, ram etc), `c` for character devices which stream data one character at a time (e.g., mice, keyboards, virtual terminals). A common place to find this range of file types is in the devices directory. This can be checked with `ls -lart /dev/ | less`.

After the first character the notation should be understood in terms of three groups of three. The first group refers to what the owners can do with the file, the second group what group members can do and the third group what other users can do. The triplet of characters in each group are usually `r` for "readable", `w` for writable" and `x` for executable. Executable also implies conducting an executable action on a directory, thus `x` is usually found for directories as well. If there is a `-` in a particular location, there is no permission. 

Note that there is no inheritance of permissions; just because a directory is set to `x` it doesn't mean the files within it are executable. So in the example given above the regular file `quakes.csv` can be read and written to by user `lev`, and can be read by the group `vpac` and all others.

Occasionally one will encounter a `s` for setuid on the execute field. If the execute bit for the owner is set to `s` the set user ID bit is set causing any user or process that run the executable to have access to system resources as though they are the owner of the file. If the bit is set for the group, the set group ID bit is set and the user running the program is given access based on access permission for the group the file belongs to. 

Finally there is `t`, "save text attribute", or more commonly known as "sticky bit". This allows a user to delete or modify only those files in the directory that they own or have write permission for. A typical example is the `/tmp` directory, which is world-writeable

`[train01@trifid ~] ls -l /tmp`    
`drwxrwxrwt  29 root root 36864 Nov 11 11:42 tmp`

Whilst everyone can read, write, and access the directory, the `t` indicates that only the user that created a file in this directory can delete that file. 

To chmod a file you have to own it. The command is : `chmod [option] [symbolic | octal]` file. For options, the most common is `-R` or `--recursive` which changes files and directories recursively. 

The symbolic or octal option is two ways of setting permissions. For symbolic notation, first establish the user reference, either `u` (user, the owner of the file), `g` (group, members of the file's group), `o` (others, neither the owner or group members), or `a` (all). If a user reference is not specified the operator and mode applies to all.

After this determine the operation that is going to be expressed, either `+` (add the mode), `-` remove the mode, or `=` (equals, mode only equals that expression). Finally, specify the mode permissions as described above, `r` (read), `w` (write), `x` (execute), `s` (setuid, setgid), `t` (sticky). 

One final mode permission is `X` (exclusive execute) which sets execute only if the file or directory already has at least one execute permission (user, group, other). Usually this is applied to directory trees with `-R` and `+` allowing for the addition of execute permissions without setting execute on normal files (such as text files). As an example the first command would set execute on all files for everyone regardless of the file type, to the current directory and all subdirectories, whereas the second would not:

`chmod -R a+rx .`     
`chmod -R a+rX .`

As an example, let's make a file read-only. Again, note that if there is no user reference it applies to all users.

```
[train01@trifid ~] chmod -r quakes.csv 
[train01@trifid ~] ls -l
--w------- 2 lev vpac  379 Jul  1 10:32 quakes.csv
[train01@trifid ~] vim quakes.csv
```

What would happen if we took the execute bit off the directory?

```
[train01@trifid ~] chmod -x class
[train01@trifid ~] cd class 
-bash: cd: class: Permission denied
[train01@trifid ~] ls -l class 
```

You can see how problematic that could be! Perhaps we'd better return that to it's normal state.

```
[train01@trifid ~] chmod +x class
[train01@trifid ~] cd class
```

Multiple chmod commands can be applied to a file or directory with separation of commands with a comma e.g.,

`[train01@trifid ~] chmod -R u+w,go-rw PhD`

This will recourse into the directory PhD, add write access for the user, and deny write access for everybody else.

The other method of using the chmod command is to use octal rather than symbolic notation. In octal notation a three or four digit base-8 value is presented derived from the sum of the component bits, so the equivalent of "r" in symbolic notation adds 4 in octal notation (binary 100), "w" in symbolic notation adds 2 in octal notation (binary 010) and "x" adds 1 in octal notation (binary 001). No permissions adds 0 (binary 000). For special modes the first octal digit is either set to 4 (setuid), 2 (setgid), or 1 (sticky).

The sum of the three (or four components) thus makes up an alternative exact notation for the chmod command. For example, on a website it is not usual to set files as u+rw, g+r, o+r and directories as u+rwx, g+rx, o+rx. This is the equivalent of chmod 0644 filename.html in the first instance and chmod 0755 directory/ in the second.

A summary of the octal mode permissions is expressed in the following table:

| Permissions	| User	| Group	| Others |
|:--------------|-------|-------|--------|
| Read		| 4	| 4	| 4	 |
| Write		| 2	| 2	| 2	 |
| Execute	| 1	| 1	| 1	 |

Usually, only those with superuser (root) access make use of the chown (change owner) command. The general syntax for this is `chown [option] [user:group] [file | directory]`. Usually group is optional on the grounds that users are usually provided ownership. A common use is to provide ownership to web-writeable directories e.g., (`chown -R www-data:www-data /var/www/files`). In contrast regular users can use `chgrp` ("change group") change the group associated with a file and directory with the same syntax, but only to one of which they are a member. 

Finally there is one other relevant command for this section; umask ("user mask") which we encountered in the `.bashrc` for global definitions sourced in `/etc/bashrc` in the section entitled "Login Files". The relevant section had the following:

```
# By default, we want this to get set. 
# Even for non-interactive, non-login shells. 
if [ $UID -gt 99 ] && [ "`id -gn`" = "`id -un`" ]; then 
	umask 002 
else 
	umask 022 
fi 
```

What this command does is sets a file mode creation mask, limiting the permission modes for files and directories created by a process. When a program or script creates a file or directory, it specifies  permissions. The operating system then removes from those the permissions that the file mode creation mask does not allow. Typical umask values are 022 (removing the write permission for the group and others) and 002 (removing the write permission for others). 

## 4.7 Hard and Symbolic Links

The ln command creates a link, associating one file with another. There are two basic types; a hard link (the default) and a symbolic link. The core difference is that a hard link is a specific location of physical data, whereas a symbolic link is an abstract location of another file. Hard links cannot link directories and nor can they cross system boundaries; soft links can do both of these. Hard links always refer to the source, even if moved or deleted, whereas symbolic links are never updated. 

The general syntax for links is:  `ln [option] source destination` 

This most common option is -s, to create a symbolic link. The source is the original file. The destination is the new symbolic link.  Without a symbolic option, a hard link is created. In this case the link and the original are pointing to the same file. To illustrate;

With a hard link: File1 -> Data1 and File2 -> Data1    
With a symbolic link: File2 -> File1 -> Data1

This means that if the original file is deleted with hard links, any new hardlinked files will still be able to access the data. However if the original file for a symbolic link is deleted, it will create a "dead link". The symlink points to the now deleted file, not the data itself! Despite this apparent fragility, the ability for symlinks to traverse file systems is seen as a significant advantage and they are usually more commonly used than hard links.

The above is a bit of a simplification. To be more precise, a Linux file consists of a filename and an inode reference. The reference maps to the actual inode. The inode contains the permissions, and data address. More than one filename can have the same inode reference; thus files can be hardlinked. i.e.,

(Filename1 + Inode#) maps to inode (includes permissions, address for data)    
(Filename2 + Inode#) maps to inode (includes permissions, address for data)

Links are particularly useful if you want to share a file with another user, such as working on a collaborative paper. In addition to the link read and write access should be granted as well, using the `chmod` command just illustrated. 

For example, user `train01` could copy a file, `quakes.csv`. However they also want to share this with `train02`; fortunately they both belong to the same group (vpac) so it is relatively easy to provide those permissions. First we'll create the file, then we'll change the permissions so members of the group can access it, then `train02` will create a link to that file with the filename `shakes.csv`. 

So first on train01; 
`[train01@trifid ~] cp /common/intermediate/quakes.csv .`     
`[train01@trifid ~] chmod 0664 quakes.csv`

Then on train02;
`[train02@trifid ~] ln -s /home/train01/quakes.csv shakes.csv`

(The same process can be conducted with other odd and even training accounts as appropriate; that is train03 and train04, train05 and train06, train07 and train08 etc) 

Now the important think to realise is that /home/train01/quakes.csv and home/train02/shakes.csv are the same. Modifications to one is a modification to the other. Open the file with vim and add the following lines at the beginning of the file: 

`[train01@trifid ~] vim /home/train01/quakes.csv` 

> The `quakes.csv` file is a selection from the Catalogue of GeoNet moment tensor solutions: this includes moment magnitude estimations for all significant New Zealand region earthquakes 

When this is completed on the quakes.csv file add the following at the end of the file.

http://info.geonet.org.nz/display/appdata/Earthquake+Resources

When a file is created a link is associated to it. When a hard link is removed with the rm command you can still access the file from any other links. 

For example, if the link `/home/train02/quakes.csv` is removed, the data will still exist in the `/home/train01/shakes.csv` original. However if you remove the original then the symbolic link  will display as a dead link, because the symbolic link is not directly connected to the data. Symbolic links are particularly useful for associating with directories or across file system on a network. As an example; 

`ln -s /tmp temp`    
`cd temp`    
`ls -l`    
`cd ..`    
`rm temp`   

Note that `temp` is a *file*, not a directory. It is a file with a symbolic link to a directory. Thus, an `rm` rather than `rmdir` is used (of course, if it *was* a directory, it wouldn't be empty *and* if it wasn't a symblolic link, one probably wouldn't want to remove the `/tmp` direcory!

One example use of symbolic links in a HPC cluster environment is storing home directories on an attached storage device with an NFS (network file system) mount from the cluster itself. When users of the cluster "tango" logged into their home directories, they were actually working with symbolic links. When the new cluster with a similar architecture ("trifid") was introduced, users were able to login and access the same files on both systems. When the older cluster was turned off, there was no outage or need for users to transfer their files between the two systems.

## 4.8 File Manipulation Commands

Earlier we introduced some fairly simple file manipulation commands such as copying files (`cp`), moving files (`mv`) and deleting files (`rm`). Now there will give examples of a range of different commands such as `rename`, `split`, `sort`, and `uniq`. The scripting commands, `awk` and `sed`, will be discussed in the next chapter. We shall also provide some examples based around regular expressions which are also explored further in the next chapter.

**Rename**

Rename is a command which has some variations on Linux systems depending on its origin. On RedHat derived systems, the rename command is part of the util-linux-ng package; to change all `*.txt` files to `*.bak`, one would use the command 

`rename .txt .bak *.txt` 

However on Debian derived it is part of the Perl programming language, which would use a regular expression to conduct the same command. 

`rename 's/\.txt$/\.bak'/' *.txt`

**Split and CSplit**

There are a number of commands that manipulate not just the names of files, but the contents as well. For example, the command `split` can be used to split large files into smaller components, such as a large data file that needs to be split into smaller components for editing.  

The general syntax is `split [OPTION]... [INPUT [PREFIX]]`. Options include byte (-b #) or linecount (-l #, default of 1000) for the new files, the input is the filename and the prefix is the output, `PREFIXaa`, `PREFIXab etc`. 

The command `split -d -l100 filename newfilename` will split a file into new files of 100 lines indicated in order by a numeric suffix. e.g., `split -d -l100 quakes.csv newquakes`.

A variation is `csplit` ("context split") which breaks up a file according to context. Whereas split breaks up files according to fixed size or line number, `csplit` breaks up files into irregular sizes according to the expression. The following example looks for the regular expression '-37.' (a latitude) and breaks files up accordingly.

`csplit quakes.csv '/-37./' {*}`

**Cut, Paste, and Join**

Having made their way into general computing parlance, the `cut` and `paste` commands are somewhat different in the Linux command context. The `cut` command copies a secion from each line of a file, based on the arguments parsed to it, whereas `paste` merges lines of files together. The `cut` command can operate on characters, delimiters (tab by default), or fields. For example, the first command establishes the comma, `,`, as a delimiter for the cut and will extract the third field. It would print to standard output but is redirected to `latitude.txt`.  The following command does the same for the fourth field, redirecting to the file, `longitude.txt`. The third command pastes the `latitude.txt` and longitude.txt files together, adding a space a delimiter, and redirects the output to `quakelist.txt`.

`cut -d',' -f3 quakes.csv > latitude.txt`
`cut -d',' -f4 quakes.csv > longitude.txt`
`paste -d " " latitude.txt longitude.txt > quakelist.txt`

A variation on the `paste` command is the `join` command. Like `paste`, `join` will take two files and combine the fields. Unlike `paste` however `join` will only do if there is a common field. The common field however is only included once in the standard output.

**Sort and Uniq**

Again with a descriptive name, sort will organise a text file into an order specified by options and output to a specific file, if desired. The general syntax is `sort [option] [input file] -o [filename]`. Some of the options include -b (ignore beginning spaces), -d (use dictionary order, ignore punctuation), -m (merge two input files into one sorted output, and -r (sort in reverse order). An interesting option for sort is for natural language ordering (e.g., 1, 10, 2, 20); for this case use sort -g filename (generic) or -V (version number).

The `sort` command also have a very useful option for sorting by columns. Delimites can be established with the `-t` option (e.g., `-t,` for comma separated values) and fields with the the `-k` option (e.g., sort by the second field in numeric order in a comma separated file would be `sort -t, -nk2 fiename.csv`)

To filter repeated lines in a text file use `uniq`. The standard syntax is `uniq [options] [input file] [output file]`. A simple example is `uniq repeats.txt unique.txt`. It is sometimes with sort to create a sorted file of unique lines, e.g., `sort repeats.txt | uniq > sortuniq.txt`. The combination of `sort` and `uniq` can be used to remove from the content file in the removals files(e.g., `sort content.txt removals.txt | uniq -u`).

## 4.9 System Information Commands

In the introductory course we did not spend much time on system information commands (an exception was the `who` command). In this intermediate course, we will briefly cover some general commands of this nature, such as `du` (disk usage), `head` and `tail`, `uname` and the information found under the `/proc` directory.

**du and df**

The du command has the standard syntax of du [options] [file]. The default expression is to print to standard output size of a file or directory in kilobytes. Without any arguments du will print all files, entering directories recursively. Common options include -s, which generates a summary of directories and -h which expresses output in "human readable" format (i.e., megabytes, gigabytes etc). To give a summary of an entire directory therefore the command would simply be du -sh, and to express in bytes, just du -sk.

`du -sh *`   
`du -sk *`

The following is a handy use of xargs is to parse a directory list and output the results to a file. The command script below runs a disk usage in summary, sorts in order of size and exports to the file diskuse.txt. The "\n" is to ignore spaces in filenames.

`du -sk * | sort -nr | cut -f2 | xargs -d "\n" du -sh  > diskuse.txt`

The command `df` will generate a report of file system disk space usage. If a filename is added it will generate a report just for the file system that the file is located on.

**head and tail**

The command `head` and `tail` print the first and last ten lines of a file by default. The standard syntax is `[command] [option] [file]`. The `head` command is often useful to determine what sort of file one is looking at, as comments are often contained in that area or to peek at a set of record titles. The `tail` command can be used when compiling programs to see the output in real-time, for example `tail -F compile.log`.

**uname**

A typical command to access system information is `uname` (unix name), with the simple syntax `uname [options]`. The most common command is `uname -a` (all) which provides, in order, kernel name, network node name, kernel release and version, machine hardware name, processor and hardware platform (if known), and operating system. You can test this on tango;

```
[train01@trifid ~]$ uname -a 
Linux tango.vpac.org 2.6.32.23edac #1 SMP Thu Sep 30 12:14:41 EST 2010 x86_64 x86_64 x86_64 GNU/Linux
```

**Proc Directory**

Another useful source for system information is the `/proc` directory. The directory doesn't actually contain 'real' files but runtime system information. Running `ls -l` on `/proc` will display a number of files with a size of 0 bytes; one exception is `/proc/kcore`, which an image of the actual memory in a system. Combined with the simple program `less` a range of information about a system can be accessed from the `/proc` directory. Some examples are given below:

| Command		| Output								|
|:----------------------|:----------------------------------------------------------------------|
| less /proc/cpuinfo	| Model name, MHz, flags and more for all CPUs on a node.		|
| less /proc/filesystems| Filesystems on a node.						|
| less /proc/uptime	| Uptime of a node in seconds.						|
| less /proc/kmsg	| Messages output by the kernel (typically limited by permissions). 	|
| less /proc/loadavg	| The load average of the system for the last 1, 5 and 15 minutes.	|
| less /proc/meminfo	| Information about memory usage, both physical and swap.		|
| less /proc/modules	| Loaded kernel modules.						|
| less /proc/mounts	| Mounted filesystems.							|
| less /proc/net/arp	| Kernel ARP table.							|
| less /proc/partitions	| Table of partitions known to the system.				|

The command `lscpu` will provide information about the processor architecture as well gathered from `/proc/cpuinfo` including the number of CPUs, threads, cores, and sockets. 

## 4.10 Program Manipulation Commands

In the previous course we did not include any program manipulation commands. In this course we'll introduce a few; at, fg, bg, kill and nice. 

**at**

The `at` command is used to schedule commands to be executed once at a specified time; it is distinct from a sysadmin's favourite, `cron`, which is used for recurring executions. The syntax is simply at [options] time. Typically it is piped with an echo statement which includes the command. The following trivial example will print a directory listing to the screen at 1145 on November 29. The output is mailed to the user (i.e., the owner of the training account).

```
[train01@trifid ~]$ echo "ls" | at 1145 nov 29 
job 22 at 2010-11-29 11:45 
```

**fg and bg**

The commands `fg` (foreground) and `bg` (background) are complementary manipulations of processes.  Usually processes (jobs) take next to no time (e.g., `ls`). But other times, like a transfer of files or a compilation of very complex program, can take a great deal of time and resources. On a shared cluster system complex tasks should not be conducted on the login or head node. Instead, the queuing system can be used, typically an interactive job which would provide enough dedicated resources for the task but a short wait time. Processes with a human-notable time period can be suspended with `Cntrl-Z` to return to the terminal and can be resumed execution in the background with the `bg` and the job ID, or they can be resumed to the foreground with `fg`. A job can also be initiated in the background with an ampersand. Each job in the background is given a job number which can be brought back to the foreground with `fg %job-number`. The `jobs` command can list all current jobs. A background job can be killed with `kill %job-number`. 

By way of illustration, the following evaluates a small script that prints the word "igneous"  to the file `rocks.txt` in the background. This can be checked by concatenating the `rocks.txt` file. The script can be run again in the foreground (with "sedimentary") which will block other input until suspended. Running the `jobs` command shows that there is now two jobs running, both of these are echoing terms to the same output file. A third command starts introducing "metamorphic" (which are of course, derived from the other two types). All these jobs can be terminated by the kill command.

```
[train01@trifid ~]$ eval 'for i in {1..100}; do sleep 2; echo "Igneous" >> rocks.txt ; done' & 
[train01@trifid ~]$ jobs 
[train01@trifid ~]$ cat rocks.txt 
[train01@trifid ~]$ fg %1 
Ctrl-Z 
[train01@trifid ~]$ cat rocks.txt 
[train01@trifid ~]$ bg %1 
[train01@trifid ~]$ eval 'for i in {1..100}; do sleep 2; echo "Sedimentary" >> rocks.txt ; done' 
Ctrl-Z 
[train01@trifid ~]$ jobs 
[train01@trifid ~]$ cat rocks.txt 
[train01@trifid ~]$ bg %2
[train01@trifid ~]$ eval 'for i in {1..100}; do sleep 2; echo "Metamorphic" >> rocks.txt ; done' & 
[train01@trifid ~]$ jobs 
[train01@trifid ~]$ kill %1 
[train01@trifid ~]$ kill %2 
[train01@trifid ~]$ kill %3 
[train01@trifid ~]$ cat rocks.txt
```

# 5.0 Regular Expressions, Shells, and Scripting

## 5.1 Regular Expressions with grep and sed

In order to make the best use of these scripting languages knowledge of regular expressions, also known as regex or regexp, is a powerful tool. Scripts and utility commands search strings of text for regular expressions of characters which then can be expressed or manipulated. The main command for searching with regular expressions is `grep`, a "global search for regular expression and print to standard output", encountered earlier in a simple form. The command `sed`, in contrast, is a "stream editor" whose output involves a transformation to the input file. A furthe command, `awk` is explored in the following section. Between them, `grep`, `sed`, and `awk` are extremely powerful and entire books have been written just exploring their capabilities. Here, only a minimal subset of searching, transforming, and reporting is provided.

There are also deprecated utilities called `egrep`, `fgrep`, and `rgrep` that are the same functionality as `grep -E`, `grep -F`, and `grep -r` respectively. The command `grep -E` provides extended regular expressions, whereas `grep -F` interpret as pattern of fixed strings, as opposed to a regular expression as such. With a standard `grep` metacharacters will need to be escaped; this is not the case with `egrep`. As previously illustrated `grep -r` is a recursive grep searching for the specified directory and subdirectories. In GNU implementations of `grep` there is no difference between basic and extended syntaxes. If PCRE (perl-compatible regular expressions) is available on the system, `grep` can be extended further. For example compare `grep +K gattaca.txt` and `grep -E +K gattaca.txt`

A simple example of is the unstructured regular expression "row"; in searching a certain document this could be identified with "brown", "crow", "drown", "microwaves" etc, to use an some examples from the command "grep row /usr/share/dict/words". Whilst simple expressions have a literal character to character match ("a"="a"), regular expressions also have meta-characters, some of which are described below using the file `gattaca.txt`. 

| Metacharacter	| Function			| Example		| What It Matches			|
|:--------------|-------------------------------|-----------------------|---------------------------------------|
| ^		| Beginning-of-line anchor	| ^ATVK			| All lines beginning with ATVK		| 
| $		| End-of-line anchor		| WSGS$			| All lines ending with WSGS		|
| .		| Matches one character		| A.........S		Lines containing an A, followed by nine characters, followed by an S | 
| *		| Matches zero characters 	| ATVK*			| The pattern ATVK plus any additional characters	| 
| +		| Matches one or more times	| +K			| All lines with K			|
| [ ]		| Matches one in the set	| AT[VE]K		| The pattern ATVK or ATEK		|
| [x-y]		| Matches within a range	| [A–Z]TVK		| A through Z followed by TVK		|
| [^ ]		| Matches not in the set	| [^A–Z]		| Any character not in the range between A and Z	|
| \		| Escape a metacharacter	| WSGS\./		| Sequence WSGS, followed by a literal period	|
| {N}		| Matches exactly N times	| T\{1,\}     		| All expressions with 1 T characters	|
| {N,}		| Matches N or more times	| T\{2,\}		| All expressions with 1 or more TT characters	|
| {,M}		| Matches at most M times	| T\{,3\}		| All expressions with with T or TT characters |
| {N,M}		| Matches from N-M times	| T\{1,5\}		| All expressions from T to TTTTT |

Metachatacters can be combined. For example, to search for a sequence of characters from the system dictionary that starts with "brown" and has additional six letters the following command is invoked: 

`grep ^brown......$ /usr/share/dict/words`

This illustrates why grep might be popular among people who do crossword puzzles or play Scrabble(R).

The 'matches one in the set' metacharacter has a number of options.

| Example	| What It Matches		| 
|:--------------|-------------------------------|
| [:digit:] 	| Only the digits 0 to 9	|
| [:alnum:] 	| Any alphanumeric character 0 to 9 OR A to Z or a to z.	|
| [:alpha:] 	| Any alpha character A to Z or a to z.	|
| [:blank:] 	| Space and TAB characters only.	|

Sometimes the metacharacters can be combined in an interesting manner. For example the metacharacters for beginning and end of line anchors can be used with grep to count the number of empty lines in a file. 

`grep -c "^$" filename`

The caret symbol can also be used to call an exception to a class of characters. The following example conducts a search for all words in the dictionary that do not begin with a-z (which should be a null set in most circumstances). Another example would be to invert the search with the -v option, for example, a search for words with no classic vowels.

`grep -i "^[^a-z]" /usr/share/dict/words`
`grep -v "[aeiou]" /usr/share/dict/words`


As mentioned `sed` is a stream-editor, of which the unstated important component is that it is non-interactive. The general form of a script is `Command/RegExp/Replacement/Flags`. The most common command is `s` for `substitute`, and the most common flags are `g` for global replacement thoughout each line and `I` to ignore case.  Some common options are `e` (multiple scripts per command), `-f` (add script file) and `-i` (in-place editing). The following is a basic example of of substitution, which makes up the most common use of the `sed` command.

`sed 's/ATVK/ATEKS/g' gattaca.txt`	

This will simply search for `ATVK` within the `gattaca.txt` file and replace it with `ATEK`. The `s/` indicates that a substitution is desired and the `/g` indicates a global search - otherwise it will only conduct the first substitution on a line where the pattern is found. The command will not make changes to the file itself, but will instead product to standard output. Often, a user will make the changes, check them visually on standard output, then do the "real" test, changing the file with the "-i" ("inline") option.

`sed -i 's/ATVK/ATEKS/g' gattaca.txt`

The following are other examples of substitution with `sed` including deletions, and using regular expression metacharacters.

| Example		| Effect							| 
|:----------------------|---------------------------------------------------------------|
| sed 's/^/     /'	| Insert five whitespaces at the beginning of every line. 	|
| sed '/baz/s/foo/bar/g'| Substitute all instances of 'foo' with 'bar' on lines that start with 'baz' |
| sed '/baz/!s/foo/bar/g' | Substitute all instances of 'foo' with 'bar' except on lines that start with 'baz' |
| sed 's/foo\|bar\|baz/qux/g' | Substitute 'qux' for 'foo' or 'bar' or 'baz'		| 
| sed 's/^[ \t]*//'	| Substitute leading whitespace (spaces, tabs) from front of each line aligns all text flush left 	|
| sed /^$/d		| Delete all blank lines. 					|
| sed s/ *$//		| Delete all spaces at the end of every line. 			| 
| sed 's/^\w*\ *//'	| Remove the first word of each line.				|

Due to competing standards many decades ago, various forms of *nix (Linux, MacOS X+) use a "line-feed" character for new lines, as does XML, whereas MS-Windows use a carriage return and a line feed, whilst MacClassic used the CR. Whilst better text editors, web-browsers etc are capable of recognising this problem and displaying files as expected this is not always the case. Files originating on Unix or Apple Macintosh OS X systems may appear as a single long line on some MS-Windows applications because it lacks the carriage return. When viewing a file originating from a MS-Windows computer on a *nix system, the extra CR may be displayed as ^M at the end of each line or as a second line break. Again, sed can help here by adding a carriage return for MS-Windows files and removing it in reverse. 

`sed -i 's/$/\r/g' filename` 	# *nix to MS-Windows, adds CR. 
`sed -i 's/\r$//g' filename`	# MS-Windows to *nix, removes CR 

Note that when using many variables (e.g., $PWD), not only must the variable be double quoted to ensure substitution, and alternative delimited should be used as any directory path will include the sed delimited, `/`. Sed offers three alternative delimiters in its scripts; `/`, `:`, or `|`. 

The `sed` command is extremely versatile, and over the years a number of common and popular one-line sed commands have been compiled. These can ge found at the following URL, and are included with in the resources direcory of the git repository for this book.

`http://sed.sourceforge.net/sed1line.txt`

## 5.2 Reports with awk

Its name is derived from the surname initial of the designers (Alfred Aho, Peter Weinberger, and Brian Kernighan), `awk` originated in 1977. As a data driven programming language designed for processing text-based data, `awk` can operate on either in files or data streams. Whilst `awk` has an enormous range of capabilities, this book will concentrate on the basic text-manipulation and regular expressions useful for scripting and producing reports. 

`Awk` is particularly good at understanding and manipulating text structured by fields - such as tables of rows and columns. The essential organization of an `awk` program follows the form: `pattern { action }`. This is sometimes structured with `BEGIN` and `END` which specify actions to be taken before any lines are read, and after the last line is read. With it's structured data features, awk can print columns by number: the value `$0` equates to `everything`). By default, `awk` used a space to represent an internal field separator is not specified, which can lead to unexpected results. e.g., 

`$ awk '{print $1}' quakes.csv`

To fix this specify the field separator as a comma e.g., 

```
awk -F"," '{print $3}' quakes.csv
awk -F"," '{print $2}' quakes.csv
awk -F"," '{print $1}' quakes.csv
```

The most common alternative field separators in a structured text file to the space are a comma, a tab and a colon, represented as `-F","`, `-F"\t"` and `-F":"`, respectively. Adding new separators to the standard output print of multiple fields is also common - otherwise AWK will print without any separators.  

`awk -F"," '{print $1  $3}' quakes.csv`
`awk -F"," '{print $1 " " $3}' quakes.csv`

It is quite possible to pipe other commands within as well outside an `awk` script, for example a `sort` or `uniq`. 

`awk -F"," '{print $1 " " $3 | "sort"}' quakes.csv | less`

Note however, because awk takes filenames as arguments in many cases you can avoid the use of pipes and new processes. For example, grep is usually unnecessary. Rather than `grep 2013p049577 /var/log/messages | awk '{ print $1 }'`, for example, one can use `awk '2013p049577 { print $1 }' quakes.csv`.

Often you will want to manipulate or display structured data but without reference to the first row which is typically the header information for the file. In this case use NR (number of records). In the first example we use count the total number of rows after the last line is read. In the second example we display all three columns in reverse order using comma-separated values, but without the first row displayed. The third example illustrates the use of logical or (`||`) and logical and (`&&`).

`awk -F"," 'END {print NR}' quakes.csv`
`awk -F"," 'NR>1{print $3 "," $2 "," $1}' quakes.csv` 
`awk -F"," '(NR <2) || (NR!=6) && (NR<9)' quakes.csv > selection.txt`

A couple of other useful simple awk examples; a sum of instances per column, a sum of a column, a sum of a row.

```
$ cat simple1.txt   
A C C T A G T   
C A A A G T A   
C A T T A C C   
A G T A C A A   
```

`$awk '$7=="A" { ++count } END { print count }' simple1.txt`

```
$ cat simple2.txt   
1 2 3 4 5 6 7 8 9   
2 3 4 5 6 7 8 9 10   
3 4 5 6 7 8 9 11 12   
```

`awk '{sum+=$7} END {print sum}' simple2.txt`

```
$ cat simple3.txt   
1 2 3 4 5   
6 7 8 9 10   
11 12 13 14 15   
```

`$ awk '{ for(i=1; i<=NF;i++) j+=$i; print j; j=0 }' simple3.txt`

The utilities of `awk` are vast; it can act as a search tool, the first example printing the lines which contains "20031211234000" in the second field. It can, like `sed`, conduct substitutions. It can delete entire fields; in the third example, the second column is deleted, leaving just the characters and the year of appearance. It can act like the command uniq; with the fourth example. With selective printing, it can act like head and tail.

`awk -F"," '$2 == "20031211234000"' quakes.csv`
`awk '{gsub(/foo|Foo|/, "Bar")}; 1' filename`
`awk -F"\t" '{ $2 = ""; print }' filename`
`awk 'a != $0; { a = $0 }' filename`
`awk 'NR < 11' filename`

Other useful awk one-liners make use of the arithmetic functions of this programming language. 

`awk '{totalf = totalf + NF }; END {print totalf}' $file`			
`# print the total number of fields in $file.` 
`awk '{sum=0; for (i=1; i<=NF; i++) sum=sum+$i; print sum}' $file`	
`# print the sum of the fields (columns) of every line (row); NF is number of field.`

Like `sed` a popular list of one-line awk commands is available. They are included with the chapter resources on the repository for this book and can be found at the following URL:

`http://www.pement.org/awk/awk1line.txt`

## 5.3 Shells

The core software to any operating system is the kernel, which provides a bridge between applications and the hardware and manages system resources. An operating system's "shell" is that software that provides an interface for users of the operating system to access the kernel, whether for interactive use, customisation or programming. Examples include the *nix-universal Bourne shell (sh) Bourne-Again shell (bash), Z shell (zsh), Korn shell (ksh), extended C shell (tcsh) and the friendly interactive shell (fish). There is even an amusing attempt to develop a shell into a text-based adventure game (Adventure shell, available at `http://nadvsh.sourceforge.net/`).

To check what shells are available on VPAC's Trifid system, for example, the following is a directory listing. Note that `csh` is now a symlink to `tsch` (extended cshell) which was implemented due to a variety of problems with the former (see the document, Csh Programming Considered Harmful" `https://www-uxsup.csx.cam.ac.uk/misc/csh.html`) and that the original shell (`sh`) is now a symlink to `bash` given limitations to the former. The other shell systems listed include korn shell (`ksh`, `ksh93`) and Z shell (`zsh`).

```
$ ls -l /bin/*sh* 
-rwxr-xr-x 1 root root  801512 Jan 22  2009 /bin/bash 
lrwxrwxrwx 1 root root       4 Nov 22 09:24 /bin/csh -> tcsh 
lrwxrwxrwx 1 root root      21 Jun 29  2010 /bin/ksh -> /etc/alternatives/ksh 
-rwxr-xr-x 1 root root 1301960 Sep 11 23:09 /bin/ksh93 
lrwxrwxrwx 1 root root       4 Jun 29  2010 /bin/sh -> bash 
-rwxr-xr-x 1 root root  352904 Nov  4 10:24 /bin/tcsh 
-rwxr-xr-x 1 root root  596208 Sep 22  2009 /bin/zsh 
```

Each shell has different features and often slightly different syntax, which is mostly beyond the scope of this course. The main two are bash or csh-derived. The most significant difference is how to set variables and environment variables. This publication concentrates on scripting used with the bash shell and we'll follow some examples from the standard GNU bash tutorial. This is the GNU standard shell which includes many feastures from Bourne, the original UNIX shell, and from ksh and tcsh. 

| Shell		| Variables	| Environment	|
|:--------------|---------------|---------------|
| bash		| var=val	| export var=val| 
| tcsh 		| set var=val 	| setenv var val|


As explained at the start of this course, every time a user logs in, bash executes `~/.bash_profile`, `~/.bash_login`, or `~/.login` then `~/.bashrc` as start-up files. These are examples of basic shell scripting, rather like the job submission files we've already seen. Indeed, job submission scripts are shell scripts (they invoke a shell) but with directives for the scheduler which are interpreted as comments (and thus ignored) by the shell.

Bash has certain shortcut features;such as using ~ to represent the home directory, the period, "." to represent the current directory, a double period ".." for one level up in the file system hierarchy, and tab-completion of pathnames. The following is a more complete listing worthy of practising.

| Shortcut	| Effect					|
|:--------------|-----------------------------------------------|
| ~ 		| The user's home directory.			|
| .		| The current directory.			|
| ..		| One level up in the file system hierarchy.	|
| TAB		| Autocompletion suggestions.			| 
| ctrl+w	| Remove word behind cursor.			|
| ctrl+u	| Delete everything to beginning of the line	|
| !!		| Repeat last typed command			|
| && 		| Combine commands if the first succeeds (e.g., make && make install)	|
| ||		| Alternative command if the first fails (e.g., make makeile1 || make Makefile) |
| alt+f 	| Go forward to the end of the previous word 	|
| alt+b		| Move cursor back to the beginning of the previous word |
| ctrl+d	| Quick logout.					| 
| ctrl+r	| Recursive search through your history to locate previous commands. |
| ctrl+z	| Stop the current process. 			|

There are different types of commands within the shell. In bash firstly there are "builtin" commands, which are part of the shell itself. This includes commands like `alias`, `bg`, `cd`, `echo`, `fg`, `help`, `history`, `jobs`, `kill`, `logout`, `pwd`, `set`, `source`, `time`, `umask`, etc. These are essentially commands to operate on the shell environment itself, and are detailed in the `man builtins` help page, which can be invoked by any member (e.g., `man cd`). There are also builtin variables, which the following illustrates a selection:

`echo "You are user $UID on $HOSTNAME, your home directory is $HOME and your host, $HOSTNAME, is running $OSTYPE"`

Secondly, there are external commands, many of which are part of the operating system itself. These are typically stored in directories such as `/bin` (command binaries), `/sbin`/ (system binaries). Other external commands are from those additional applications which have been installed on the system which are usually found in `/usr/` and its subdirectories, such as `/usr/local/bin` and `/usr/local/sbin` for non-essential command or system binaries, and those binaries directories in applications in `/usr/local/$application/bin`. 

Just as the `file $filename` command can be used to determine what sort of file is being evaluated, the `type $command` command can be used to determine whether a command is a shell builtin or keyword, or external command, or aliased. Rather than directly calling external commands it is more efficient to use bash builtin commands. As a trivial example, bash has `echo` built in - and there is also a `/bin/echo` and a `/usr/bin/echo`. Whenever possible the builtin should be used instead. Thus `echo "Hello World"` rather than `/bin/echo "Hello World"`.

## 5.4 Shell Scripting with bash

Shell scripting is not as powerful as a complete programming language when cross-platform support is required, or the tasks are resource-intensive, or when complex data structures, or if floating-point operations or complex numbers are needed. In these cases you should use a language like C, Fortran or Java. But for many tasks one will be pleasantly surprised how useful shell scripting can be. Indeed, many file and text manipulation tasks which are complex in a the aforementioned programming languages are simple with shell scripting. Always remember that shells scripting can quickly and readily make use of the entire toolkit of operating system commands that already exist.

The most basic form of scripting simply follows commands in sequence, such as this rather undeveloped backup script, which runs tar and gzip on the home directory. First we use a text editor to create the script (e.g., `vim backup.sh`), add a identifier for bash, the single script line, exit the editor, turn backup.sh into an executable (`chmod +x backup.sh`) and run the command. There should be a file called homeuser.tar.gz when the script is complete. 

```
#!/bin/bash
tar cvfz homeuser.tgz /home/train[01..12]
```

**Variables**

This is, of course, no different to typing the command at the prompt. Not much of a script, although even at this level of simplicity time has been saved if it is used more than once. A simple alteration would be to make use the preset date and time commands to add to the file to provide an archive with a timestamp within the filename as variables and, indeed, make the file itself a variable name. Note the space between "date" and the addition sign! 

Also, note the lack of space between the variable name and the value. A rule of bash variables is that there cannot be whitespace separating the variable name or its value from the assignment (otherwise, how would it know whether the whitespace character was part of the variable or the value?). 

All bash variables must begin with alphanumeric character or underscore character. If the variable starts with an underscore it must have at least one more alphanumeric character or underscore character. Like filenames, variable names in bash are case-sensitive. Unlike filenames, special characters (e.g., `?`, `*`, ` `, etc) cannot be used in bash variable names. They *shouldn't* be used in filenames either! 

```
#!/bin/bash          
BU=homeuser$(date +%Y%m%d).tgz 
tar cvfz $BU /home/train[01..12]
```

Thus, a variable is prefaced by a dollar sign ($) to refer to its value. It can also be assigned with an equals sign, without whitespaces on either side. In bash variables are global by default unless explicitly declared as local in a function (see below). Variable names *should* be illusrative of their function, although for very simple assignment an equally simple illusration - or abbreviation - is enough.

The value of a variable can be checked with via the echo command (`echo $variable`). However, it should *only* be run if one is reasonably sure that the content of the variable is not harmful. Variables only have a scope in the bash process that they are declared in, unless exported. The command `export -p` will print all current exported variable values. The `unset` command will remove variable assignment.

```
$ Ubh="Unbihexium"
$ echo $Ubh 
  Unbihexium
$ bash
$ echo $Ubh 

$ exit
$ echo $Ubh 
  Unbihexium
$ export Ubh="Unbihexium"
$ bash
$ echo $Ubh 
  Unbihexium
$ exit
$ export -p
$ unset Ubh
$ echo $Ubh

```

**Loops**

In addition to variable assignments, bash scripting allows for  loops (for/do, while/do, util/do) and conditionals (if/then/else/fi, case). For example, the first for/do one-line script (which, like all scripts, can be run directly from the bash shell), moves all files in the working directory to lower case; a second example copies all .oga files to .ogg - the format is identical and recommended, but some music players might not recognise it. 

The until/do loop conducts the same action, but with the count in reverse. The next until/do produces the same results as the first, but not the difference in the conditional test. The main difference between while/do and until/do is that the while/do loop repeats the code block while the conditional is true whilst the until/do loop repeats the block whilst the expression is false. In the first script, brace expansion is used to refer to file names, and the conversion from mp3 to ogg.

`for item in *.mp3 ; do ffmpeg -i "${item}" "${file/%mp3/ogg}" ; done`
`for item in *.jpeg ; do convert "$item" "${item%.*}.png" ; done`

Note the use of command substitution by using $(command); sometimes you will find the use of backticks instead (e.g., `for item in * ; do mv $item \`echo $file | tr "A-Z" "a-z"\` ; done);` this is *not* recommended. The use of backticks (a) not a POSIX standard, (b) can be difficult to read with deep escapes and (c) can be *very* dangerous if mistaken for strong quotes.

Early in this book it was recommended that spaces should be avoided in filenames. Part of this is due to poorly designed scripts that make use of the `ls` command. In a nutshell, `ls` can't differentiate in a script what is a filename and what is a space. It is, of course, unnecessary. Worse still, if any of the directories have files the process will generate the files inside the directories as well.

`touch "a file with lots of spaces in the name"`
`for item in $(ls *); do echo ${item}; done`
`for item in *; do echo ${item}; done`

The following are examples of loops with conditional tests. Also note the use of bash's integer arithmetic, and especially the use of spacing and bracketing. 

`x=1; while [ $x -le 5 ]; do echo "While-do count up $x"; x=$(( $x + 1 )); done`
`x=5; until [ $x -le 0 ]; do echo "Until-do count down $x"; x=$(( $x - 1 )); done`
`x=1; until [ $x = 6 ]; do echo "Until-do count up $x"; x=$(( $x + 1 )); done`

Even short, single line, scripts like these can be turned into permanent bashscripts if they are used regularly enough. It is good practise, for example, to convert them to executables and save them in a local `bin` directory (`/home/<username>/bin`) or similar in the user's PATH. For example, for a script `lowercase.sh`. 

```
#!/bin/bash
# Will change every file in the existing directory to lower-case.
# Warning! Warning! Will overwrite *existing* files with the same lower-case name!
for item
do 
	mv $item $(echo $item | tr "A-Z" "a-z")
done
exit
```

The until/do loop can serve as a trigger for events. In the following script, access to a system is tested with ping every few minutes until a connection is made whereupon it opens an SSH session. 

```
#! /bin/bash 
read -p "Enter Hostname:" nethost 
echo $nethost 
until ping -c 1 $nethost 
do 
        sleep 180; 
done 
ssh $nethost 
```

**Conditionals**

Conditions may be expressed in different structures depending on the test of the conditionals. A single test of conditions and commands can be expressed through an if/then/fi structure. A single test with an alternative set of commands is expressed if/then/else/fi. Finally, a switch-like structure can be constructed through a series of elif statements in a if/then/elif/elif/.../else/fi structure. 

1. if..then..fi statement (Simple) 
2. if..then..else..fi statement (Optional) 
3. if..elif..else..fi statement (Ladder) 
4. if..then..else..if..then..fi..fi..(Nested) 
          
There are several conditional expressions that could be used to test with the files. The following are few common examples; 

| Conditional 		| Truth Test			|
|:----------------------|-------------------------------|
| [ -e filepath ]	| Returns true if file exists. 	|
| [$var lt value ] [ gt ] [ eq ] | Returns true if less than, greater than, or equal, respectively |
| [ -f filepath ] 	| Returns true if filepath is actually a file. |
| [ -x filepath ]	| Returns true if file exists and executable.  | 
| [ -S filepath ]	| Returns true if file exists and its a socket file. 	|
| [ expr1 -a expr2 ]	| Returns true if both the expression is true. |
| [ expr1 -o expr2 ]	| Returns true if either of the expression1 or 2 is true. |

There are also a number of special characters in bash scripting. Quoting disables these characters for the content within the quotes. Both single and double quotes can be used, and single quotes can be used to incorporate double quotes. Again, "backtick" quotation marks can be used for command substitution within the script for historical reasons but should be avoided. Special characters include `;` for command separators, `{}` for command blocks, `|` for a pipe, `< > &` as redirection symbols, `$` for variables, and `#` for comments. Compare the following:

`echo 'The "Sedimentary" and the "Igneuous" argue about contributions to metamorphism'`
`echo "There are $(ls | wc -l) files in $(pwd)"`
`echo 'There are $(ls | wc -l) files in $(pwd)'`

The following simple example tests a conditional on whether a specified file exists at the location stated.

```
#! /bin/bash 
file=$1 
if [ -e $file ] 
then 
	echo -e "File $file exists" 
else 
	echo -e "File $file doesn't exists" 
fi 
```

Conditional with brace expansion can be used to search for multiple directories. For example, in the search for a specific image (bunny.jpg) which the user has unfortunately forgotten which directory it is in.

```
#! /bin/bash 
mypicture=bunny.jpg
for file in /home/Pictures/{pets,family,unsorted}/"$the_file"; do 
   if [[ -e $file ]]; then
      printf '%s found in %s:\n' "$the_file" "${file%/*}"
   fi
done
```

The following example was used by Mike Kuiper; a directory held a large number of data files which he wished to convert into .tga files using vmd. The conditional statement stepped through all files with *.plot.dat, creating a new file them with a *.tmp and then running the command. If the *.tmp already existed it skipped that file and went to the next one.

```
#!/bin/bash 
 for item in *.plot.dat; do 
	if [ -f $item.tmp ]; then 
	  : 
 	else 
          	touch $item.tmp 
 	"/usr/local/vmd/1.8.7-gcc/lib/tachyon_LINUXAMD64" -aasamples 2 -rescale_lights 0.38 -add_skylight 1.0 -res 1280 720 $i -format TARGA -o $file.tga 
	fi; 
 done 
```

Conditionals can also be interrupted and resumed using the 'break' and 'continue' statements. The break command terminates the loop (breaks out of it), while continue causes a jump to the next iteration (repetition) of the loop, skipping all the remaining commands in that particular loop cycle. Both can optionally take a parameter. The following is a well-known example of break and continue;

```
#!/bin/bash 
LIMIT=19  # Upper limit 
echo 
echo "Printing Numbers 1 through 20 (but not 3 and 11)." 
count=0 
while [ "$count" -le "$LIMIT" ] 
do 
 count=$(($count+1)) 

 if [ "$count" -eq 3 ] || [ "$count" -eq 11 ]  # Excludes 3 and 11. 
 then 
   continue      # Skip rest of this particular loop iteration. 
 fi 
 echo -n "$count "   # This will not execute for 3 and 11. 
done 
echo;
exit 0
```

The following is the same loop, but substituting 'break' for 'continue'.

```
#!/bin/bash
LIMIT=19  # Upper limit 
echo "Printing Numbers 1 through 20 (but breaks loop at 3)." 
count=0
while [ "$count" -le "$LIMIT" ]
do
 count=$(($count+1))
 if [ "$count" -gt 2 ]
 then
   break  # Skip entire rest of loop.
 fi
 echo -n "$count "
done
echo;
exit 0
```

Earlier examples were given of common extraction and archiving programs available in Linux. There are plenty of others with a similar syntax and which can be explored as needed. The following is a "handy extract program", a small shell script that, when made executable, requires that one simply type `extract.sh filename`  and, for a variety of archive/compression methods used, it will extract the files. Unfortunately the original author is unknown; it has been used as an example in VPAC courses since at least 2008.

What `extract.sh` does is test whether a variable is a file and, if it is, runs a case a sort of select option, over various commands that can extract the file. If it cannot extract the file it states so (the final case switch). If it was not a file in the first place, it states so. It is far better to use `case` statements, as in this example, rather than the additional processing required for a ladder of if/else/elseif statements.

```
#!/bin/bash
# Handy Extract Program 
    if [[ -f $1 ]]; then 
        case $1 in 
            *.tar.bz2) tar xvjf $1 ;; 
            *.tar.gz) tar xvzf $1 ;; 
            *.bz2) bunzip2 $1 ;; 
            *.rar) unrar x $1 ;; 
            *.gz) gunzip $1 ;; 
            *.tar) tar xvf $1 ;; 
            *.tbz2) tar xvjf $1 ;; 
            *.tgz) tar xvzf $1 ;; 
            *.zip) unzip $1 ;; 
            *.Z) uncompress $1 ;; 
            *.7z) 7z x $1 ;; 
            *) echo "'$1' cannot be extracted via >extract<" ;; 
        esac 
    else 
    echo "'$1' is not a valid file!" 
    fi 
```

Finally, the select command with conditionals can be used to create simple menus for users which prompts them for their input. Tow examples are given here, one which provides a terse dictionary selection based on the choice, and another which simulates a multi-choices exam.

```
#!/bin/bash 
OPTIONS="Sedimentary Igneous Metamorphic Quit" 
select opt in $OPTIONS; do 
	if [ "$opt" = "Quit" ]; then 
		echo done 
	exit 
	elif [ "$opt" = "Sedimentary" ]; then 
	echo "Sedimentary rocks are formed by sedminentation of particles at or near the Earth's surface and within bodies of water." 
	elif [ "$opt" = "Igneous" ]; then 
	echo "Igneous rock forms through the cooling and solidification of magma or lava." 
	elif [ "$opt" = "Metamorphic" ]; then 
	echo "Metamorphic rocks are formed by subjecting any rock type -sedimentary rock, igneous rock or another older metamorphic rock - to different temperature and pressure conditions than those in which the original rock was formed." 
	else 
	echo "Select again; 1, 2, 3 or 4" 
	fi 
done 
exit
```

```
#!/bin/bash
echo "Which of the following rocks is igneous?"
select ANSWER in granite sandstone slate
do
	if [ "$ANSWER" == "" ]; then
	echo -e "You need to enter an answer\n"
		continue
	elif [ "$ANSWER" != granite ]; then
	echo -e "Sorry. Incorrect\n"
	echo "1. Incorrect" >> rockexam.txt
		break
	elif [ "$ANSWER" == granite ]; then
	echo -e "Congratulations! That is the correct answer\n"
	echo "No. 1 - Correct" >> rockexam.txt
		break
	fi
done
exit
```

**Arrays**

An array can be thought of as a extended variable which contains multiple values of multiple types. An array takes the form of `name[index]=value`, where 'name' is the name of the array, 'index' refers to the array index value, an expression or value which resolves to an integer from 0 and greater, and 'value' equals the assignment. Use of arrays is good coding practise, as it can be used to group associated variables together into a set, rather than having them scattered throughout the script.

A very simple example would be a list of nodes in a cluster's partion, all of which in this example would be of the same string type. The elements of an array can be specified individually, but it is easier to state them using the `declare` statement; the `-a` option specifies an indexed array and `-A` for an associative array. The entire array can be specified with `@` or `*`, and the length of an array name with the special parameter `$#`; without an index it represents the first element of the array. 

```
#!/bin/bash
# An example of an array in bash
ashley[0]='ashley00.edward.unimelb.edu.au'
ashley[1]='ashley01.edward.unimelb.edu.au'
ashley[2]='ashley02.edward.unimelb.edu.au'
ashley[3]='ashley03.edward.unimelb.edu.au'
ashley[4]='ashley04.edward.unimelb.edu.au'
echo ${ashley[1]}
```

```
#!/bin/bash
# An better example of an array in bash
declare -a ashley=(ashley00.edward.unimelb.edu.au ashley01.edward.unimelb.edu.au ashley02.edward.unimelb.edu.au ashley03.edward.unimelb.edu.au ashley04.edward.unimelb.edu.au);
echo ${ashley[1]}
echo $(ashley[@]}
echo ${#ashley[4]} 
```

The value can be extracted from an array with an index for the number of consective array elements with `[@]:index:increment}` e.g., `echo ${ashley[@]:1:2}`, will extract 2 elements starting from index 1. Always remember that indices start at 0. To extract characters from an array element, specifiy the index, the offset and the length. For example, `echo ${ashley[1]:0:8}` will result in `ashley01`. 

Elements can be appended to an array by evoking the entire array as a variable with new elements; for example `ashley=("${ashley[@]}" "ashley05.edward.unimelb.edu.au", "ashley06.edward.unimelb.edu.au")`, followed by `echo ${ashley[6]}` will result in `ashley06.edward.unimelb.edu.au`.
Elements can be removed with the `unset` command; for example `unset ashley[6]` will clear the previously last element, whereas `unset ashley` would delete the entire array.

**Functions**

Functions are used to group code sections as a subroutine in a logical manner or for recursion. A function takes the form of `function name { codeblock }`. Parameters may be parsed to the function, either with the script or as variables when the script is run. For example, the `hellofunction.sh` script:

```
#!/bin/bash
# Enter two names when invoking script
# Define your function here
# Firstname and Surname are first two parameters.
Hello () {
   echo "Hello World ${1} ${2}"
   return $(bc -l <<< ${#1}+${#2})
}
# Capture value returned by last command
echo The name has this many characters $?
exit
```

An interesting example of a function in use is the `/etc/profile` file which typically includes a `pathmunge` function which differentiates between the root user and other users, adding particular directories to the path of the former.

It is good practise to get into the habit of using functions to modularise a shell script (see "Functions" under the following section, "Better Bash Scripting"). Certainly if a script is short and only does one main action it is not entirely necessary. But as soon as a level of complexity is reached, it helps to break up a bash script into multiple functions - and to invoke those functions through a `main()` function. For example:

```
#!/bin/bash
subroutineA {
    codeblock
}
subroutineB() {
    codeblock
}
main() {
    subroutineA
    subroutineB
}
main
exit 0
```

## 5.5 Better Bash Scripting

> A Big Ball of Mud is a haphazardly structured, sprawling, sloppy, duct-tape-and-baling-wire, spaghetti-code jungle. These systems show unmistakable signs of unregulated growth, and repeated, expedient repair. Information is shared promiscuously among distant elements of the system, often to the point where nearly all the important information becomes global or duplicated. The overall structure of the system may never have been well defined. If it was, it may have eroded beyond recognition. Programmers with a shred of architectural sensibility shun these quagmires. Only those who are unconcerned about architecture, and, perhaps, are comfortable with the inertia of the day-to-day chore of patching the holes in these failing dikes, are content to work on such systems.    
- Brian Foote and Joseph Yoder, "Big Ball of Mud", *Fourth Conference on Patterns Languages of Programs (PLoP '97/EuroPLoP '97)*, Monticello, Illinois, September 1997

**Using Variables**

The simplest script is simply one that runs a list of system commands. At least this saves the time of retyping the sequence each time it is used, and reduces the possibility of error. For example, the following script was recommended to calculate the disk use in a directory. It's a good script, very handy, but how often would you want to type it? Instead, type enter it once, make it executable (e.g., `chmod +x diskuse.sh`) and keep it. You will recall of course, that a script starts with an invocation of the shell, followed by commands.

```
#!/bin/bash
du -sk * | sort -nr | cut -f2 | xargs -d "\n" du -sh  > diskuse.txt
```

The script runs a disk usage in summary, sorts in order of size, extracting the second field, parses the values in delimited form to run as disk usage summary in human form, and then exports to the file `diskuse.txt`. The `\n` is to ignore spaces in filenames.

Whilst sometimes making the script a little more complex, variables are usually better than hard-coded values. There are two potential variables in this script, the wildcard `*` and the exported filename `diskuse.txt`. In the former case, the wildcard can be kept as it allows a certain portibility of the script - it can run in any directory it is invoked from. For the latter case however, the date command can be used so that a history of diskuse can be created which can be reviewed for changes. It is good practise to alert the user when the script is completed and, although it is often necessary, it is also good practise to cleanly finish any script with with an `exit 0` statement.

```
#!/bin/bash   
DU=diskuse$(date +%Y%m%d).txt   
du -sk * | sort -nr | cut -f2 | xargs -d "\n" du -sh  > $DU   
echo "Disk summary completed and sorted."   
exit 0
```

As a matter of useful stylistic convention global variables should be written in upper-case, and local variables in lower case, if the script makes use of functions to differentiate between variable scope. In shorter scripts this may not be necessary. As a general principle global variables should kept to a minimum and in longer scripts, the should be constants which can be enforced with the `readonly` statement. For example, to state the name of the script throughtthe script itself use `readonly PROGNAME=$(basename $0)`.

**Using Conditionals**

Another example is a script with conditionals as well as variables. A common conditional, and sadly often forgotten, is whether or not a script has the requiste files for input and output specified. If an input file is not specified a script that performs an action on the file will simple go idle and never complete. If an output file is hardcoded, then the person running the script runs the risk of unknowingly overwriting a file with the same name, which could be a disaster.

The following script searches through any specified text file for text before and after the ubiquitous email "@" symbol and outputs these as a csv file through use of grep, sed, and sort (for neatness). If the input or the output file are not specified, it exits after echoing the error.

```
#!/bin/bash   
# Search for email addresses in file, extract, turn into csv with designated file name   
INPUT=${1}   
OUTPUT=${2}   
{   
if [ !$1 -o !$2 ]; then   
    echo "Input file not found, or output file not specified. Exiting script."   
    exit 0   
fi   
}   
grep --only-matching -E '[.[:alnum:]]+@[.[:alnum:]]+' $INPUT > $OUTPUT   
sed -i 's/$/,/g' $OUTPUT   
sort -u $OUTPUT -o $OUTPUT   
sed -i '{:q;N;s/\n/ /g;t q}' $OUTPUT   
echo "Data file extracted to" $OUTPUT   
exit 0   
```

Note that in the loop the single brackets can be used to test expressions i.e., `if [[ expression1 || expression2 ]]; then codeblock; fi`, a double-bracket conditional allows for compound commands and regular expression matching, e.g.,  `if [[ string =~ regex ]]; then codeblock; fi`

Test this script with `hidden.txt` in the chapter resources directory as the input text and `found.csv` as the output text. The `hidden.txt` file is mostly nonsense text with the occasional email address included. The output will include a final comma on the last line but this is potentially useful if one wants to run the script with several input files and append to the same output file (simply change the single redirection in the grep statement to an double appended redirection.

The output will show a weakness of the script. It will gather any string with the '@' symbol in it, regardless of whether it's a well-formed email address or not. So it's not *quite* suitable for screen-scraping usenet for email address to turn into a spammers list; but it's getting close.

**Reads for User Input**

The `read` command simply reads a line from standard input. By applying the -n option is can read in a number of characters, rather than a whole line, so `-n1` is "read a single character". The use of the `-r` option reads the input as raw input, so that the backslash key (for example) doesn't act like a a newline escape character, and the `-p` option displays the prompt. Plus, a `-t` timeout in seconds option can also added. Combined, can be used in the effect of "press any key to continue", with a limited timeframe.


Add the following to findemails.sh at the end of the file.

```
read -t5 -n1 -r -p "Press any key too see the list, sorted and with unique record..."    
if [ $? -eq 0 ]; then   
            echo A key was pressed.   
    else   
                echo No key was pressed.   
                exit 0   
    fi   
less $OUTPUT | \   
# Output file, piped through sort and uniq.    
sort | uniq   
exit 0   
```

**Using Functions for Debugging**

Functions aid readability and modularisation of scripts, in many ways creating an organised table of contents. The subroutines themselves are descriptive, providing the principle of code reusability. Sourcing a library of related functions will save a great deal of time when writing a script. A recommended example from The Linux Documentation Project is to have an `/etc/functions` directory and to include a `. /etc/functions` line at the start of scripts that use those functions.

A bash script can be started in debug mode with `bash -x scriptname.sh`. Debugging is activated with the command `set -x` in the script and deactivated afterwards with `set +x`. Debugging each subroutine is a lot easier with `set -x` at the start of a function and `set +x` at the end of the function. 

Redirections can also be added to a function call, furthering and debugging and analysis (e.g., `myfunction () { code; } > log`). In addition it very convenient to use a HEREDOC with a function to be called when necessary (e.g., `cat <<- EOF ... EOF`).

Functions also have the advantage of providing variable scope, which should be used whenever possible to enforce a stronger sense of namespace. A variable within a function can be declared with with `local varname=value` within the function and is not accessible outside it. Unlike a number of other programming languages, a Bash variable declared inside a function is local only if declared as such.

**Metacharacters**

Scripts essentially consist of commands, keywords, and meta-characters. Meta-characters have meaning beyond their literal meaning (a meta-meaning, if you like). 

Comments are the most common special meaning. Any text following a # (with the exception of #!, which invokes a directive) is read as a comment and will not be executed. Comments may begin at the beginning of a line, following whitespace, following the end of a command, and even be embedded within a piped command (as above in section 3). A comment ends at the end of the line, and as a result a command may not follow a comment on the same line. A quoted or an escaped # in an echo statement does not begin a comment.

Another meta-characters includes the command seperator, a semicolon, which is used to permit two or more commands on the same line. This is already shown by the the various tests in the script (e.g., `if [ !$1 -o !$2 ]; then and if [ $? -eq 0 ]; then`). Note the space after the semicolon. In contrast a double semicolon (`;;`) represents a terminator in a case option, which was encountered in the extract script in the Intermediate course.

```
..
case $1 in 
            *.tar.bz2)   tar xvjf $1     ;; 
            *.tar.gz)    tar xvzf $1     ;; 
            *.bz2)       bunzip2 $1      ;; 
..
..
esac
```

In contrast, the colon acts as a null command. Whilst this obviously has a variety of uses (e.g., an alternative to the touch command, a really practical advantage of this is that comes with a true exit status, and as such it can be used as placeholder in if/then tests. An as prior illustrated example;

```
for file in *.plot.dat; do     
	if [ -f $file.tmp ]; then     
	  : # do nothing and exit if-then    
 	else    
          	touch $file.tmp    
```

The use of the null command as a test at the beginning of a loop will cause it to run endlessley (e.g., `while : do ... done`) as the test always evaluates as true. Note that the colon is also used as a field separator in /etc/passwd and in the $PATH variable. 

A dot (`.`) has multiple special character uses. As a command it sources a filename, importing the code into a script, rather like the `#include` directive in a C program. This is very useful in situations when multiple scripts use a common data file, for example. As part of a directory hierarchy, the `.` represents the current working directory (e.g., `cp -r /path/to/directory/  .`  and of course, `..` for the parent directory). A third use for the dot is in regular expressions, matching one character per dot. A final use is multiple dots in sequence in a loop. e.g.,

```
for a in {1..10}   
do   
  echo -n "$a "   
done   
```

Like the dot, the comma operator has multiple uses. Usually it is used to link multiple arithmetic calculations. This is typically used in for loops, with a C-like syntax. e.g.,

```
for ((a=1, b=1; a <= LIMIT ; a++, b++))   
do  # The comma concatenates operations.   
  echo -n "$a-$b "   
done   
```

Enclosing a referenced value in double quotes (" ... ") does not interfere with variable substitution. This is called partial quoting, sometimes referred to as "weak quoting." Using single quotes (' ... ') causes the variable name to be used literally, and no substitution will take place. This is full quoting, sometimes referred to as 'strong quoting.'  It can also be used to combine strings.

```
for file in /{,usr/}bin/*sh    
do    
  if [ -x "$file" ]   
  then   
        echo $file    
  fi   
done   
```

For example, a strict single quoted directory listing of ls with a wildcard will only provide files that are expressed by the symbol (which isn't a very good file name at all, and *not* recommended!). Compare `ls *` with `ls '*'`. This example will also worth with double quote and indeed, double-quotes are generally preferable as they prevent reinterpretation of all special characters except `$`, `/``, and `\` . These are usually the symbols which are wanted in their interpreted mode. Related to quoting is the use of the backslash (`\`) used to escape single characters. Do not confuse it with the forward slash (`/`) has multiple uses as both the separator in pathnames (e.g., (`/home/train01`), but also a the division operator.

In some scripts backticks are used for command substitution, where the output of a command can be assigned to a variable. Whilst this is not a POSIX standard, it does exist for historical reasons. Nesting commands with backticks also requires escape characters; the deeper the nesting the more escape characters required, which is difficult to read. The preferred and POSIX standard method is to use the dollar sign and parentheses. e.g., echo `"Hello, $(whoami)"`. 

Overall, metacharacters are a very important tool to one's Linux knowledge, providing the ability to extend a utility, application, or set of shell commands. However, their meta-character meaning is contextual, and awareness and knowledge of that context is required to use them properly. 

# 6.0 Alternative Job Submission Options

## 6.1 Job Scripts with Shell Scripting

Because job submission script call a shell when launched any shell commands can can also be used in a such a cript. Every single Linux command, every item of information learned about scripting, about file manipulation, system information, regular expressions, report generation and so forth can be used in a job script. This allows for some very powerful and complex job submissions.

The following example is relatively simple in comparison, but certainly more advanced than the job submission scripts offered earlier in the book. It is a molecular dynamics drug docking experiment, MD3-Aspirin to A2 phospholipase.  It uses 1OXR phospholipase structure as a target, 4 aspirin molecules (parameterized at swissparam) added to a solvated 64x64x64A system. The program used NAMD and can be visualised with VMD.

In addition, to aspirin, the 1oxr system  also contains a calcium ion in the crystallographically determined binding position plus 0.15M NaCl. The system is originally optimized and equilibrated at 310K for 0.2 nano seconds under NPT conditions, before switching to NVT ensemble for 10 sequential loops of 10ns each.  The aim of this experiment is to collect enough MD data to see if the aspirin molecules can associate into the crystallographically determined binding pocket. 

The first step requires RMSD fitting of the simulation trajectory so that the protein structure is relative to the original starting position. Next we require to vol-map the density of the ligand molecule, (aspirin in this case), using vmd!

The fact that this script is written for NAMD/VMD and TORQUE is for illustrative purposes only. It can just as easily be applied to any other application or submission system. Working through the script one can see that there is the use of variables, redirection, loops, copy, move, and remove commands, command substitution, and so forth. 

```
#!/bin/bash   
## pbs launching script  December 2010    
## -to run multiple sequential namd jobs after an initial minimization step     
##    
#PBS -l nodes=8    
#PBS -l walltime=24:0:0    
## #PBS -A  <account>    
### - job basename ---------------------------------------------------------    
jobname="_A2_aspirin_short_example_01_"    
### ------------------------------------------------------------------------    
date=$(date +%F);     
date2=$(date +%F-%H.%M);     
cd $PBS_O_WORKDIR     
set CONV_RSH = ssh     
qstat -f $PBS_JOBID >JobLog/$date2$jobname.qstat.txt;    
module load namd     
### --------------------------------------------------------------------------     
## optimize the original molecule     
mpiexec namd2  aspirin_opt_short.conf >OutputText/opt.$jobname.$date2.out 2>Errors/opt.$jobname.$date2.err;     
mv *.dcd OutputFiles/     
cp *.coor *.vel *.xsc *.xst RestartFiles/     
## mv generic_optimmization output to generic_restart files:     
mv generic_optimization.restart.coor generic_restartfile.restart.coor     
mv generic_optimization.restart.vel  generic_restartfile.restart.vel     
mv generic_optimization.restart.xsc  generic_restartfile.restart.xsc     
### start a loop ------------------------------------------------------------     
### aiming for 1 ns a round     
for loop in {1..5}     
do     
basename="$date2$jobname$loop"    
## run namd job:     
mpiexec namd2 aspirin_rs_short.conf >OutputText/$basename.out 2>Errors/$basename.err;     
## rename output and move data into folders     
cp generic_restartfile.dcd   OutputFiles/$basename.dcd;     
cp generic_restartfile.coor  RestartFiles/$basename.restart.coor;     
cp generic_restartfile.vel   RestartFiles/$basename.restart.vel;     
cp generic_restartfile.xsc   RestartFiles/$basename.restart.xsc;     
cp generic_restartfile.xst   RestartFiles/$basename.xst;     
done     
### --------------------------------------------------------------------------     
## cleanup     
mv FFTW* OutputText/;     
rm *.BAK *.old *.coor *.vel *.xsc *.xst;     
mv pbs_*.e* JobLog/;     
mv pbs_*.o* JobLog/;     
```

## 6.2 Autogeneration PBS Scripts with sed and loops

This example is from Joshua Christie at the University of Sydney who generated it after attending the VPAC course after the establishment of the "Artemis" cluster and is used with permission. It establishes a base Rfilename, runs a loop with sed for file name alteration and echoes the output to individual job scripts which are then submitted.

```
#!/bin/bash
# set parameter values to be explored
n_array=( 50 500 )
k_array=( 0.001 0.01 0.1 )
fit_array=( 1 2 3)
Rfilename=/home/jchr1495/BPI_scripts/B_n50_k1_fit1_bot25.R 
for var1 in "${n_array[@]}"
do    
# the value of bot depends on the value of var1 (n)
bot_array=( $((var1/2)) $((var1/10)) $((var1/25)) )

for var2 in "${k_array[@]}"
do
	for var3 in "${fit_array[@]}"	   		
	do   
		for var4 in "${bot_array[@]}"	   		
		do
#find line setting parameter value and replace it with new parameter value
		sed -i "s/^n <-.*/n <- $var1/" $Rfilename
		sed -i "s/^k <-.*/k <- $var2/" $Rfilename
		sed -i "s/^fit_func <-.*/fit_func <- $var3/" $Rfilename
		sed -i "s/^bot <-.*/bot <- $var4/" $Rfilename
		var5=$(printf "%.0f" $(echo "scale=5;$var2*1000" | bc)) 
#so that k is an integer for use in R file name

# produce new R file (so that I can check for errors if required)
		newRfile=B_n${var1}_k${var5}_fit${var3}_bot${var4}.R
		cp $Rfilename /home/jchr1495/BPI_scripts/$newRfile
		job_name=n${var1}k${var5}f${var3}b${var4}
# create PBS script 
		FILE=/home/jchr1495/BPI_scripts/$job_name.sh
		echo "#PBS -q compute" > $FILE
		echo "#PBS -l ncpus=24" >> $FILE
		echo "#PBS -l walltime=48:00:00" >> $FILE
		echo "#PBS -l pmem=2GB" >> $FILE
		echo "#PBS -N $job_name" >> $FILE
		echo "module load R/3.1.2" >> $FILE
		echo "cd /home/jchr1495/BPI_scripts/" >> $FILE
		echo "R CMD BATCH $newRfile" >> $FILE
		chmod +x $job_name.sh
		#submit job
		qsub $job_name.sh
		done
	done
done
done 
```


## 6.3 Autogenerating PBS Scripts with a Heredoc

A heredoc (also known as a here-string or here document) is a file or input literal, a section of source code that is treated as a separate file with specified delimiters. In various Unix shells the `<<` with a delimiter name will treat subsequent code until the identifier as reached as a separate file. With the addition of a minus sign, leading tabs are ignored which aid formatting.

```
bash-4.2$  tr a-z A-Z << END_TEXT   
> igneous   
> sedimentary   
> metamorphic   
\> END_TEXT   
IGNEOUS   
SEDIMENTARY   
METAMORPHIC   
```

A here string is syntactically similar, consisting of `<<<`, and effects input redirection from a word (a sequence treated as a unit by the shell, in this context generally a string literal). A string with spaces will require quoting. Note that there is no delimiter on a separate line.

```tr a-z A-Z <<< 'igneous sedimentary metamorphic'```

Variables can also be parsed.

```
bash-4.2$ rocks='igneous sedimentary metamorphic'    
bash-4.2$ tr a-z A-Z <<< $rocks    
IGNEOUS SEDIMENTARY METAMORPHIC    
```

It is often used to invoke the bc calculator language. e.g.,

```bc -l <<< 2,736^9/22```

Heredocs can also be used however to create job submission scripts. The following example creates one hundred identical PBS scripts. The script itself is trivial of course, but the generation process is rapid and with the use of variables can allows for some quick association with data files.

```
#!/bin/bash    
for a in {1..99}    
do    
cat <<- EOF > job${a}    
#!/bin/bash   
#PBS -N ${a}   
#PBS -j oe   
#PBS -o err_log${a}   
#PBS -l nodes=1:ppn=1   
#echo $(pwd) >> results.txt   
EOF   
done   
```

## 6.4 PBS Job Arrays, Dependencies, and Interactive Jobs

### Job Arrays

Multiple job submission based on the same script is possible through job arrays. It is effectively  using a single job script to make multiple requests of the same resources. Where there is similarity in the task or dataset and there is no dependencies between the individual jobs, an array is a very effective tool.

With TORQUE job arrays are submitted through the `-t` (tasks) option to `qsub`, or by using `#PBS -t` in your batch script. This option takes a comma-separated list consisting of either a single job ID number, or a pair of numbers separated by a dash. Each of these jobs created will use the same script and will be running in a nearly identical environment. In PBSPro the method is very similar except a `-J` (jobs) is used to specify the array. In SLURM the request for an array can be added with the `--array` option (e.g., `#SBATCH –array=1-20`) or as part of the submission process.

Job arrays can be sent with a varying range and step number. The following table illustrates the differences in according to scheduler:

|TORQUE		| PBSPro	| SLURM			| Description			|
|:--------------|---------------|-----------------------|-------------------------------|
|`#PBS -t 1-10` |`#PBS -J 1-10`	| #sbatch --array=1-10	| Submit job array by ID 1 to 10|
|`#PBS -t 1,3,5,7,9` | `#PBS -J 1-10:2` | `#sbatch –array=1-10:2` | Submit job array by ID 1, 3, 5, 7, 9|

The `qdel`, `qhold`, and `qrls` commands from TORQUE and PBS can operate on array - either the entire array or a range of that array, just as the equivalent job control commands in SLURM would operate, as the jobs receive both a JobID and an ArrayTaskID (e.g., `scancel`, `suspend`, `resume`).  Any job in the array may be accessed normally by using that job's ID, just as you would with any other job. Each job is considered independent in terms of launch and walltime. Job deletion or cancellation can occur, for example, if one of the jobs in the array has an error or corruption in the input file. The rest of the jobs can continue running. 

|TORQUE		| PBSPro	| SLURM			| Description			|
|:--------------|---------------|-----------------------|-------------------------------|
| qdel ID[3]	| qdel ID[3]	| scancel ID_3		| Cancel third element of the job array specified by job ID. |

In the Octave array example below, the input files are names from the PBS array identifiers. The Octave script produces a small set of random numbers, each of which are appended to the same output file. Examples are provided for TORQUE, PBSPro, and SLURM, with the latter in comment order.

```
#!/bin/bash    
#PBS -N octave-array    
## PBS -N octave-array
### SBATCH --job-name="octave-array"   

#PBS -l nodes=1   
## PBS -l ncpus=1   
### SBATCH ntasks=1   

#PBS -l walltime=00:01:00     
## PBS -l walltime=00:01:00       
### SBATCH -t=00:01:00   

#PBS -t 1-10    
## PBS -J 1-10   
### SBATCH --array=1-10   

cd $PBS\_O_WORKDIR    
## Identical for PBSPro   
### Not needed in SLURM

module load octave/3.8.2    
# Identical for PBSPro and SLURM

octave file-${PBS_ARRAYID}.oct    
## octave file-${PBS_ARRAY_INDEX}.oct   
### octave file-${SLURM_ARRAY_TASK_ID}.oct   
```

In all cases the GNU Octave files, octave-1.oct through to octave-10.oct are identical:

```
M=rand(10,10);    
k=svd(M);    
save -append demo-result.txt k;   
```

### Job Dependencies

It is not unusual for a user to make the launch of one job dependent on the successful completion of another job. The most common example is when a user wishes to make the output of one job the input of a second job. They might launch both jobs simultaneously, but they do not want the second job to run before the first job has completed successfully. In other words, they want a conditional dependency on the job.

PBS allows a several conditional directives to be placed on a job which are tested prior to the job being intiatied, which are summarised as after, afterok, afternotok, before, beforeok, and beforenotok (e.g., `PBS -W depend=afterok:xxxxx`). Multiple jobs can be listed as dependencies with colon separated values (e.g., `#PBS -W depend=before:jobid0:jobid1`).

| Directive	| Description 									|
|:--------------|-------------------------------------------------------------------------------|
| after		| This job may start after specified jobs started 				|
| afterok 	| This job may start after specified jobs have completed without errors		|	
| afternotok 	| This job may start after specified jobs have completed with errors 		|
| afterany 	| This job may start after specified jobs have completed with or without errors |
| before 	| This job may start before specified jobs have started 			|
| beforeok 	| This job may start before specified jobs have completes without errors 	|
| beforenotok 	| This job may start before specified jobs have completes with errors 		|
| beforeany 	| This job may start before specified jobs have completes with or without errors|

There are two alternatives on how submit jobs with dependencies. The first is to set the job id as a variable (e.g., `#PBS -W x=depend:afterok:myfirstjob`). The second is to set the job id as a variable as part of a job submission (e.g., `qsub -W depend=afterany:$FIRST myjob5.pbs`). 

The following example is for TORQUE for mysecondjob.pbs. It differs from myfirstjob.pbs insofar that it has the dependency line that it cannot run until the myfirstjob.pbs has completed successfully. 

```
#!/bin/bash    
#PBS -N mysecondjob    
#PBS -l walltime=000:02:00   
#PBS -l nodes=1:ppn=1    
#PBS -W x=depend:afterok:myfirstjob    
cd $PBS\_O\_WORKDIR    
echo $(hostname ) $PBS_JOBNAME running $PBS_JOBID >> hostname.txt     
sleep 60   
```

With PBSPro and SLURM this method would not work, as it requires the jobID rather than the name variable to be sent as the dependency. Using the job name can be very problematic as different jobs submissions might have been set with the same name by the same user! On the other hand setting a jobID can be difficult to include in a script, but it can be included in the command line submission e.g.,

`qsub -W depend=afterok:<<jobid>> mysecondjob.pbs`

With SLURM the equivalent would be:

`sbatch --dependency=afterok:<<jobid>> mysecondjob`

Another method for PBSPro and SLURM would be to add these commands into a script. This also works for TORQUE.

```
#!/bin/bash 
FIRST=$(qsub myjob4.pbs)    
echo $FIRST    
SECOND=$(qsub -W depend=afterany:$FIRST myjob5.pbs)    
echo $SECOND    
THIRD=$(qsub -W depend=afterany:$SECOND myjob6.pbs)    
echo $THIRD    
```

With Slurm the logic is identical, even if the syntax is slightly different. When a Slurm job is submitted the job ID is parsed at a different word in sequence:

```
#!/bin/bash   
FIRST=$(sbatch myjob4.slurm)   
echo $FIRST   
SUB1=$(echo ${FIRST##* })   
SECOND=$(sbatch --dependency=afterany:$SUB1 myjob5.slurm)   
echo $SECOND
SUB2=$(echo ${SECOND##* })   
THIRD=$(sbatch --dependency=afterany:$SUB2 myjob6.slurm)   
echo $THIRD   
```

### Interactive Jobs
	
There are times when a user wishes to launch an interactive, real-time job. This is typically used for debugging purposes, as real-time modifications can be quite slow. However, it can be used for real time single-processor or multi-processor tasks. Resource requests however should be minimal. If they are not, the user could be waiting quite some time for their interactive job to launch. The following examples are using TORQUE

```
[lev@trifid gmxdemo]$ qsub -l walltime=1:0:0,nodes=1:ppn=2 -I    
[lev@trifid ~]$ qsub -l walltime=1:0:0,nodes=1:ppn=2 -I    
qsub: waiting for job 529253.trifid-m.hpc.vpac.org to start    
qsub: job 529253.trifid-m.hpc.vpac.org ready    
[lev@trifid105 ~]$ cd $PBS\_O\_WORKDIR    
[lev@trifid105 gmxdemo]$ pwd    
/nfs/user2/lev/intermediate/gromacs/gmxdemo   
[lev@trifid105 gmxdemo]$ module load gromacs   
[lev@trifid105 gmxdemo]$ ./demo    
```

The only difference in PBSPro would be the initial submission:

`qsub -l walltime=1:0:0,select=1:ncpus=2 -I`

For SLURM a number of institutions have an sinteractive wrapper installed. This would take the following form for the same expressions:

`sinteractive --time=00:00:00 --nodes=1 --ntasks=2`

Take the opportunity to review the demo script for Gromacs; one will note ample use of the heredoc method to present text information and prompts to the user. It makes use of a variety of Gromacs commands and configuration statements that would usually be part of a normal submission script or called from external files, but are presented in a step-by-step fashion. 

Some important aspects for interactive jobs is that the resource requests are made at the point of submission (e.g., the walltime, the number of  processors) along with the `-I` submission flag to indicate that it is interactive. In addition, once the user has been logged into the compute node, they are required to add the usual functional commands that they would have otherwise added into their job script, such as loading the modules that they want to use and changing to the working directory where the job was launched from.

One can use graphical windowing forwarding to the login node and then launch an interactive job also with X forwarding and with the usual PBS requirements. An initial connection can be made with secure mode X-windows forwarding and a further connection through the usual method. Thus, starting from the desktop.

```
bash-4.2$ ssh -Y lev@trifid.vpac.org   
[lev@trifid ~]$ qsub -l nodes=1:ppn=2,walltime=0:10:00 -X -I   
qsub: waiting for job 223936.trifid-m.hpc.vpac.org to start   
qsub: job 223936.trifid-m.hpc.vpac.org ready   
[lev@trifid137 ~]$ cd $PBS\_O\_WORKDIR   
[lev@trifid137 ~]$ module load ansys   
[lev@trifid137 ~]$ cfx5solve   
```

Then you could run the Oscillating Plate ANSYS example without using the compute resources on the head node, but rather using the dedicated resources that have been set aside by the job submission process.

When submitting a job to a partition that is reserved for a particular group, use the partition and -A (account) option, common to PBS and SLURM. For example using SLURM;

```
[lev@spartan ~]$ sinteractive -p water -A punim0006   
srun: job 211916 queued and waiting for resources   
srun: job 211916 has been allocated resources   
[lev@spartan-water01 ~]$ 
```

# 7.0 Command Summary and References

## 7.1 Linux Commands

When a user logs in on a Linux or other UNIX-like system on the command line, they start in their home directory:  `/home/<username>`

In that directory they will have the necessary privileges to create new folders, files and edit existing ones. There are a set of basic commands which every Linux command-line user must know. All commands come with options expressed as: `<command>  -<option[s]>` 

Wildcard characters can be used to substitute for any other characters in a string. The asterisk (`*`) substitutes as a wildcard character for any zero or more characters, and the question mark (?) usually substitutes as a wildcard character for any one character. 

Linux also have very useful 'pipes' and redirect commands. To pipe one command through another use the `|` symbol. Input and output is usually from the screen. To redirect output use the `>` symbol. To redirect input (for example, to feed data to a command) use the `<`. Concatenation is achieved through the use of '>>' symbol. Examples of these pipes and redirects are included in the command summary that follows.

### Basic Linux Commands and Options

`at` 
"at"; Schedule commands to be executed once at a specified time.   
Examples:  
`echo "ls" | at 1145 nov 29`   
Echo a directory listing at 11.45 on November 29.   
													
`bg`, `fg` 
"background, foreground"; put a job into the background or foreground of output.   
Examples:  
`bg %1`   	
Put job in background where output can be run without interrupting standard input.   
`fg %1`   	
Brings job back into the foreground.   

`cat`
Concatenate files and print to standard output. Don't put cat in a pipe! It wastes keystrokes and adds processes (e.g., `cat | wc -l filename`)   
Examples:   
`cat textfile1.txt textfile2.txt textfile3.txt > textfileall.txt`   
Concatenates files   
`cat > textfilenew.txt`   
`Let's type in some data!`   
`Cntrl-D`   
Creates a new textfile from entered text.   
`cat -nA textfileall.txt`   
Display line numbers and special non-printing characters.   

`cd`   
"Change directory"; Change working directory from directory to another.    
Examples:    
`cd <directory>` 	
Move to the directory if it is a sub-directory of the current directory, or use;   
`cd /path/to/directory`   
`cd ~`   
Returns to the `/home/<username>` directory. Very handy when you're lost!    
`cd .`   
Changes to the current directory; this initially doesn't seem very useful but it's handy to remember that the '.' represents the current directory.
													
`cp <source> <target>`	 				
"Copy"; makes a copy of file or directory from one place to another. Requires two arguments, one is the source file/directory (or multiple instances), and the other is target file/directory. 
Examples:    
`cp filename1 filename2 filename3 directory/`    			
Copies filename1 filename2 filename3 in the current directory to the sub directory) 
`cp -a directory1 directory2`   		
Copies directory1 in archive mode; includes all files, keeps timestamps and ownership, does not follow symbolic links. Equivalent of; 
`cp -dpr directory1 directory2`   		

`chmod`   	
"change mode"; Alters permissions and modes. Can be expressed in symbolic or octal form.   
Examples: 
`chmod -R a+rx *`   
Give all read and execute access to files in the current directory and sub-directories.
`chmod 0644 filename.html`   
Gives read/write access to the user, read access to the group and others.
`chmod 0755 directory/`   
Gives read/write/execute access to the user, read and execute to the group and others.

`cut` 
Copies a secion from each line of a file, based on the arguments parsed to it (e.g., characters, delimiters etc) and prints to standard output.
Example:
`cut -f 1-2,4-5 data.dat`
Prints to standard output fields 1-2, 4-5, of tab-separated data from data.dat

`date`    
Print (or set for privileged users) the system date and time   

`du`   
"Disk Usage"; Estimation of file space usage of working directory and sub-directories., default in kilobytes.    
Examples:    
`du -sh *`   
Disk usage of working directory and sub-directories, in summary and human-readable form.   

`env`
"Environment"; when invoked without arguments provides the current environments. Can also be used to temporarily change or ignore an existing environment.

`file`   
Determine file type (e.g., text, executable, archive)   
Examples:   
`file class.tar.gz`

`find <path> <expression>`				
"Find";  finds a file in the directory tree starting at the given pathname according to name, type, size etc., depending on the options stated.    
Examples:    
`find directory/ -name "*.txt"` 	
Finds and displays all files with the "*.txt" in the directory and all over sub-directories. 
`find ~ -mmin -10`		
Find (and print to standard output) all files in the home directory that have been modified in the last ten minutes.

`grep <pattern> <file>`   	
Originally "global search for regular expression and print" g/re/p in the editor ed).  Searches and prints specified text from a list of files or standard input. The command understands regular expressions.   
Examples:    
`grep string directory/*` 			
Finds and prints lines that contain the string in the directory.   
`grep -i root < /etc/passwd`	  
Searches for root (regardless of case) with the file `/etc/password` redirected as the command. Functionally similar to: `grep -i root /etc/password`, but illustrating input redirection.   
`grep '\<c...h\>' /usr/share/dict/words`   	
Find an prints all words that start with 'c' end in 'h' and have five letters. Handy for crosswords.   

`head <filename>`   
Print the first ten lines of a file.  See also tail.   
Examples:   
`head -n15 quakes.csv`   
Print the first fifteen lines of quakes.csv (default is 10).   

`hostname`   
Print (or set for privileged users) the system hostname.   

`join`
Combine files with a common field and print to standard output; common field is printed once.

`less <filename>`	 
Prints a file to one screen at a time with cursor movement and searching. Quit using 'q'. A replacement for 'more'.   

`ln`   
"link"; Creates pseudonyms (links) to files.   
Examples:    
`ln file1 file2`   
Creates a "hard link" from file1 to file2. Refers to the specific location of the physical data.   
`ln -s file1 file2`   
Creates a "soft link" from file1 to file2. Refers a symbolic path.   
													
`ls` 		
"List"; lists contents for particular directory, the current directory by default.    
Examples:    
`ls -ltr`				 
List with long format, including file permissions, reverse  order, by modification time.   
`ls -sa`				
List with file size in blocks and specify all files, including hidden files (those that start with a '.' including profile files).    
`ls -ltr > list.txt`		
List with long format, including file permissions, reverse  order, by modification time and redirect output to the `list.txt` file.   
`ls -ltr >> list.txt`		
List with long format, including file permissions, reverse  order, by modification time and adds to the end of the exiting list.txt file.   

`lsb_release`   
"Linux Standard Base release"; Information on the specific Linux distribution.   
Examples:    
`lsb_release -a`   
Print release, codename, description, and version.   

`paste`
Merges lines of corresponding lines of each file, separated by tabs, to standard output. Delimiters maybe specified.
Example:
`paste file1.lst file2.lst`
Prints to standard output file1.lstand file2.lst separate by tabs.
												 
`pwd`		 
"Print working directory";  prints the directory where you're currently in.   	
													
`mkdir` 	
"Make directory"; create new directory to hold files or  sub-directories., if they do not already exist.    
Examples;   
`mkdir <directory>`						 
Creates a directory in the existing home directory.   
`mkdir -p ./subdir1/subdir2/subdir3` 	
Creates sub-directories. 1, 2, 3 as a single branch from the current directory. The 'p' option stands for 'parents' i.e., create parent directories if they do not exist)   
`mkdir subdir1 subdir2 subdir3`			
Creates the sub-directories. 1, 2 and 3 as separate branches the current working directory.   
													
`man <command>`		
The manual command provides online access to  the system's reference pages. It displays the reference pages for the commands and also system calls.   
Example:   
`man -a intro`		
Display, in succession, all of the available intro manual pages contained within the manual.  It is possible to quit between successive displays or skip any of them.   
												
`mv <source> <target>`	   
"Move"; moves files or directories from one place to another, this has the effect of moving rather than copying the file.  It can also be used to rename a file, by moving the file to the same directory, but giving it different name.    
Examples:    
`mv file directory/newfilename` 			
Renames and moves to a new directory.    
`mv -u file directory/file`		
'Update'; move the file to directory/file only if the source file is newer.   

`ps`		 		
"Process Status"; gives a snapshot of running processes. Useful to check the load status of the current system, cpu and memory use.    
Example:   
`ps -ejH` 			
Lists all current processes and subprocesses as a tree.   
												
`rm <target>`		
"Remove";  deletes files from the system. It can be used to remove the directory no matter it is empty or not. 
Examples: 
`rm` directory/filename	 		
Removes the file filename from the subdirectory directory.  
`rm -rf` directory		
Remove the entire directory, sub-directories. and files (with recursion and force). Note that there is no 'undelete' when using the command line on Linux. Use this command with caution!
												 
`rmdir` 		
"Remove directory"; remove empty directory. If there are files or directories existing under the directory, the command will fail. 
Example: 
`rmdir` <directory>					 
Removes the directory if it is a subdirectory and there are no files in it, or use `cd /path/to/directory`.
`rmdir -p subdir1/subdir2/subdir3`		
Removes the directory and its ancestors; above has the same effect as;    
`rmdir subdir1/subdir2/subdir3 subdir1/subdir2 subdir1`.   

`sed`   
"stream editor"; performs manipulations on a stream of input text.    
Examples:    
`sed -i 's/foo/bar/g' file.txt`   
Replaces all instances of 'foo' with 'bar' in the file.txt   

`sort`   
"sort"; sort prints the lines of its input in the argument list in sorted order.    
Examples:    
`sort -r messyfile.txt`   
Will output messyfile according to reverse alphabetical order.   
`ls -s | sort -n`   
Will output current working directory according to file size.  
													
`split`   
Splits a file into equal-sized segments. The variation `csplit` breaks up the file according to context and over differing iterations.
Example:   
`split longfile shortfile`  
Will split longfile into shortfileaa, shortfileab, shortfileac etc with each shortfilexx being 1000 lines.   
`csplit longfile '/REGEXP/' {$iterations}`
Will split longfile into one or more files depending on the regular expression and the number of iterations requested. The value `{*}` is without limit.

`tar`
"Tape archive"; Copies and restores files from an archive medium.    
Examples:    
`tar cvfz homeuser.tar.gz /home/user/training01/`   
Create a tar archive of /home/user/training01, be verbose and forceful, and compress with the gz compression.    
`tar xvf homeuser.tar.gz`   
Extracts a "tarball" of homeuser.tar.gz into the active directory.   
													
`tail filename`   
Display the last ten lines of a file.   
Example:   
`tail -F door.sta`    
The -f option (follow) allows for a continuous display to output; useful for a file that's being generated that you wish to observe.   
								
`tee`   
Read from standard input and write to standard output and to a file as a parameter.   
Example.   
`ls | tee files.txt`   
Shows a directory listing to standard output and to `files.txt`.   

`tree`   
Tree; list contents of directories in a tree-like format.   
Examples:     
`tree /home/train01 | less`   
Shows directories, sub-directories., and files of the train01 home directory, piped through `less`.  

`uname`   
"UNIX name"; prints system information.   
Examples:    
`uname -a`   
Provides, in order, kernel name, network node name, kernel release and version, machine hardware name, processor and hardware platform, and operating system.   

`w`   
The command 'w' acts like a combination of who, uptime and ps -a. It displays  information  about the users currently on the machine, and their processes.  The header shows, the  current  time, how  long  the  system  has been running, how many users are currently logged on, and the system load averages for the past 1, 5, and 15  minutes.   
													
`who`   
Show who is currently logged into the system.   
Examples:   
`who -u | less`
Show who is logged on, how long they've been idle and piped through the less command.   
													
`whoami`   
Prints the effective user ID.   
Examples:   
`who | tee who.out | grep mike`		
The output of who is saved to the file who.out which is searched for the  user mike.   
													
`uptime`   
Prints how long the system has been running, how many users are logged in and recent system load averages.   

`xargs`
"Execute arguments"; executes command lines from standard input.  
Examples:    
`find . -name "*.txt" | xargs grep foo`   
Finds all files with the suffix .txt and searches them for the phrase “foo”   
																				
## 7.3 File System

The  general layout of a Linux system is called the Filesystem Hierarchy Standard (FHS), defining the main directories and their contents in most Linux-based computer operating systems.

| Directory	| Description			 		|
|:--------------|-----------------------------------------------|
| `/` 		| Root directory of the entire file system. 	|
| `/bin`	| Essential command binaries for all users. 	|
| `/boot`	| Boot loader files. 				|
| `/dev`	| Devices.					| 
| `/etc`	| Host-specific system-wide configuration files.|
| `/home` 	| Users' home directories and personal settings.|
| `/lib`	| Libraries essential for the binaries in `/bin` and `/sbin`. |
| `/media`	| Mount points for removable media such as CD-ROMs. |
| `/mnt`	| Temporarily mounted filesystems (e.g., for dual boot systems). |
| `/opt`	| Optional application software packages. 	|
| `/proc`	| Virtual filesystem documenting kernel and process status as text files. |
| `/root`	| Home directory for the root user. 		|
| `/sbin`	| Essential system binaries (e.g., init, route, ifup). |
| `/srv`	| Site-specific data which is served by the system. |
| `/tmp`	| Temporary files (see also `/var/tmp`).	| 
| `/usr`	| Secondary hierarchy for user data; contains the majority of utilities, applications, libraries and the like.  |
| `/var`	| Variable files, such as logs, spool files, and temporary e-mail files. |

## 7.4 Queuing Commands

| TORQUE/PBSPro	| SLURM		| Description							|
|:--------------|---------------|---------------------------------------------------------------|
| `qstat`	| `squeue -a`	| Information about queues and jobs, piped through less.	|
| `showq`	| `showq`	| Information about active, eligible, blocked, and/or recently completed jobs, piped through less. This command is not available in PBSPro and is available as a wrapper application in SLURM.			|
| `showq -u [username]` | `squeue -u` | Showq with a constraint, in this case, user. Also not available in PBSPro. |
| `qstat -q`	| `sinfo -a`	| List all queues.						|
| `qstat -Q`	| `sinfo -a`	| Queue limits.							|
| `qstat -a`	| `squeue -A <account>` | List all jobs in alternative format.			|
| `qstat -au` 	| `squeue -A <account>`	| List all jobs of a particular user, e.g., qstat -au mike	|
| `qstat -s`	| `squeue -a`	| All jobs with status comments					|
| `qstat -r`	| `squeue -t R`	| All running jobs						|
| `qstat -f <jobid>` | `squeue -j <jobid>` | Information concerning a particular job.		|
| `qsub <pbsscript>` | `sbatch <jobname>`  | Submits job script					|
| `qsub -I sinteractive ` | salloc -p <partition>` | Submit an interactive batch job.		|
| `qdel <jobid>` | scacnel <jobid>` | Deletes a job. SLURM allows one to delete all jobs belonging to a user with the -u option.	|

## 7.5 References

Adaptive Computing, *TORQUE Resource Manager Administrator Guide 4.2.10*, 2015

Altair Engineering, *PBS Professional 12.0 Reference Guide*, 2013

Carl Albing, et. al., *bash Cookbook*, O'Reilly, 2007

Amy Apon, Standley Ahalt, Vijay Dantuluri, et. al., *High Performance Computing Instrumentation and Research Productivity in U.S. Universities*, Journal of Information Technology Impact, Vol 10, No 2, pp87-98, 2010

Mendel Cooper, *Advanced Bash-Scripting Guide v10*, The Linux Documentation Project, 2014

MJA Eugster, J Knaus, et al., *Hands-on tutorial for parallel computing with R*, Computational Statistics, Jun 2011, Vol 26, pp 219-239

Machtelt Garrels, *Bash Guide for Beginners v1.11*, The Linux Documentation Project, 2008

Yiannis Georgiou, *Resource Management with Linux Control Groups in HPC Clusters*, Proceedings of the 6th Linux Collaboration Summit, 2012

Georg Hager, Gerhard Wellein, *Introduction to High Perfomance Computing for Scientists and Engineers*, CRC Press, 2011

Martin Hilbert, Priscila López. *The World’s Technological Capacity to Store, Communicate, and Compute Information*, Science Vol. 332 no. 6025 1 April 2011, pp. 60-65

Brian W. Kernighan, Rob Pike. *The Unix Programming Environment*, Prentice-Hall, 1984

Lev Lafayette. *Software Tools Compared To User Education in High Performance Computing*. Proceedings of The Higher Education Agenda conference, Gold Coast, May, 2015 

Lev Lafayette. *Skill Improvements versus Interface Designs for eResearchers*. Proceedings of eResearch New Zealand, 25th March, 2015

Gordon E. Moore, *Cramming more components onto integrated circuits*, Electronics, April 19, 1965, p114-117.

Henry Neeman, *Supercomputing in Plain English*, University of Oklahoma, 2015

Paul Sheer, *Linux: Rute User's Tutorial and Exposition*, Prentice-Hall, 2002

Greg Wilson, *High Performance Computing Considered Harmful*, 22nd International Symposium on High Performance Computing Systems and Applications, 2008

**Images**
													
Cray-1-deutsches-museum" by Clemens Pfeiffer. Licensed under CC BY 2.5 via Commons - https://commons.wikimedia.org/wiki/File:Cray-1-deutsches-museum.jpg#/media/File:Cray-1-deutsches-museum.jpg   

"Structure of the BRAF protein" by Emw (Wikipedia User). Creative Commons Attribution-Share Alike 3.0 Unported license. https://commons.wikimedia.org/wiki/File:Protein_BRAF_PDB_1uwh.png 
