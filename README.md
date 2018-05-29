![](images/MetaROOT.png=250x250)
# MetaROOT (Regulated Output and Ontology Tool)
Using MetaMapLite to standardize metadata terminology and make sequencing metadata machine readable!

# What is Metadata?
Metadata is data about data. It is the descriptive information (like identity, time, location, etc.) that explains the nature and details of information. When thoroughly collected with standardized ontology, metadata enables you to understand, use, and share your own data now and in the future, and helps other researchers discover, access, use, repurpose, and cite your data in the long-term. It also facilitates long-term archival preservation of the data.

# What is the problem?
Most biomedical metadata is collected in a heavily variable manner, and is not standardized and translatable to other research studies or even future work from the same group. In the era of big data, this has become a quintessential issue to getting the greatest use and understanding out of the wealth of data being collected. Though harmonizing metadata can sometimes be done post-hoc, it would be significantly more efficient to collect metadata according to standard ontology in the field that would ensure data completeness and translation.

# Why should we solve it?
Though many fields are beginning to develop standards for what metadata to collect across different data types, this area still needs a lot of work and tools to help make it easier for scientists and researchers to know what metadata variables to collect and how to collect them. Improving and standardizing metadata collection could revolutionize the the knowledge gained from the paucity of metadata being produced. 

# What is MetaROOT?


# Software Workflow Diagram

# File Structure Diagram
Case 1-- Disease
File a: biosample_diseases.mmi   (MetaMap Lite output which was filtered by only disease )
tx|MMI|score|preferredName|CUI#|[semantic type]|matched term-locatiion-0-"Imput term"-NNP-0|0/length of the input term|Mesh code
tx|MMI|32.03|Turner Syndrome|C0041408|[dsyn]|"Turner Syndrome"-text-0-"TURNER SYNDROME"-NNP-0|0/15|C12.706.316.309.872,C12.706.316.795.750,C13.351.875.253.309.872,C13.351.875.253.795.750,C14.240.400.980,C14.280.400.980,C16.131.240.400.970,C16.131.260.830.835.750,C16.131.939.316.309.872,C16.131.939.316.795.750,C16.320.180.830.835.750,C19.391.119.309.872,C19.391.119.795.750
Detailed documents for metamap output field:
https://metamap.nlm.nih.gov/Docs/MMI_Output.pdf
Score threshold:10
Score – MetaMap Indexing (MMI) score with a maximum score of 1000.00.  The higher the score, the greater the relevance of the UMLS concept according to the MMI algorithm.  The MMI results are presented in highest to lowest relevance order. score info https://metamap.nlm.nih.gov/MetaMapLite.shtml
File b extracted only colored items in file a
preferredName|CUI#|[semantic type]|Input term

File c : meta_code.txt (only for disease)
DISO|Disorders|T#|semantic group [semantic type]

DISO|Disorders|T020|Acquired Abnormality [acab]
DISO|Disorders|T190|Anatomical Abnormality [anab]
DISO|Disorders|T049|Cell or Molecular Dysfunction [comd]
DISO|Disorders|T019|Congenital Abnormality [cgab]
DISO|Disorders|T047|Disease or Syndrome [dsyn]
DISO|Disorders|T050|Experimental Model of Disease [emod]
DISO|Disorders|T037|Injury or Poisoning [inpo]
DISO|Disorders|T048|Mental or Behavioral Dysfunction [mobd]
DISO|Disorders|T191|Neoplastic Process [neop]
DISO|Disorders|T046|Pathologic Function [patf]

1. Output using file b and c 
preferredName|CUI#|[semantic type]|Input term| semantic group 


2. Use this output file to convert input term in bioSample attribu te in disease section to preferred term ("NORMALIZE")

