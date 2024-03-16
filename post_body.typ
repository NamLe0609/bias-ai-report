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