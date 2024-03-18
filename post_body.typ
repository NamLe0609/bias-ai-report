The values used in @ethical-impact-assessment-hospital are from both traditional @VSD-paper and AI-specific  @Mapping-VSD sources. 

The values acquired so far have been through conceptual investigations, which are prone to researcher bias and tend to misrepresent the stakeholders' values @VSD-book. Therefore, one should view these values as a starting point to build upon, and not as the final representation. 

After closer examination of the stakeholders' understandings, contexts, and experiences through empirical investigations @Human-computer-handbook, we can update the previously acquired values to be more representative. This process can be done using traditional methods such as interviews, surveys, or questionnaires, or more VSD-specific methods such as participatory design and envisioning cards @VSD-book.

// This iterative process of updating values in the design process can be clearly seen in the "Room with a View" case study @VSD-paper, wherein conducting empirical investigations helped the designers not only enhance their original values, but also bring forth new ones.



= Recommendations & Considerations

Choosing a dataset is the most important part of the process, especially in avoiding bias. The dataset should be representative, but most facial emotion recognition datasets simply are not. This can be seen in @racial-composition, @gender-composition, and @source-composition.

#figure(
  image("racial-composition-dataset.png", width: 100%),
  caption: [Racial composition in common facial emotion recognition datasets with "White" being the majority class @Dataset-analysis-paper.],
) <racial-composition>

#figure(
  image("gender-composition-dataset.png", width: 100%),
  caption: [Gender composition in common facial emotion recognition datasets with "Male" being the majority class @Dataset-analysis-paper.],
) <gender-composition>

#figure(
  image("source-distribution.png", width: 100%),
  caption: [Source distribution of facial emotion datasets. North/South America, Asia and Europe make up 87.5% of all frequencies @Dataset-analysis-paper.],
) <source-composition>

To deal with this issue, we can either choose the least biased dataset from the available ones, or aggregate multiple datasets to create a more representative one. We chose the latter despite its difficulty since thats the best way to ensure that the model is unbiased. An algorithm in @Dataset-analysis-paper will be used to measure the bias in our new dataset.