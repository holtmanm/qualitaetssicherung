# Installation Jupyter Notebook und Tipps

## Installation Anaconda
Jupyter Notebook ist standardmäßig bei Anaconda Python mit dabei. 
https://docs.anaconda.com/anaconda/install/

## Einrichten des Environments für Qualitätsmanagment
### Bibs
Nützliche Bibs für Stochastik in Python.
Berechnung:
SymPy: Symbolisches Rechnen (https://www.sympy.org/en/index.html)
Wird im ersten Übungsblatt Notebook verwendet um die Normalverteilung zu integieren und Gleichungssysteme zu lösen
Numpy: Sampling und Matrixrechnung um Schleifen zu verhindern (https://docs.scipy.org/doc/numpy/user/basics.html)
Wird im ersten Übungsblatt Notebook zum Sampling verwendet.
Scipy: Integrale, Mathematische Funktionen, Naturkonstanten, ...
Wird im ersten Übungsblatt Notebook zur numerischen Integration verwendet. 
Pandas: Datensätze einfach manipulieren, Excel/CSV einfach als Dataframe einzulesen (https://pandas.pydata.org/docs/index.html)
Dask: Ähnlich wie Pandas nur für noch größere Datensätze (https://dask.org/)

Visualisierung:
Matplotlib: Plots (https://matplotlib.org/3.1.1/gallery/index.html)
Wird im ersten Übungsblatt Notebook zum einzeichnen der Integrationsgrenzen verwendet.
Seaborn: Statische Plots basierend auf matplotlib (berechnet und zeichnet z.b. automatisch statisch relevante Daten ein wie Varianz usw. ein, https://seaborn.pydata.org/examples)/index.html)
Wird im ersten Übungsblatt Notebook zum plotten der Verteilung und des Boxplots verwendet.
ggplot: R-Plots in Python (http://ggplot.yhathq.com/)
Plotly: Für interaktive Plots im jupyter notebook (https://plotly.com/python/)

Jupyter Lab:
Nützliche Extensions (Installation von manchen siehe unten)
https://github.com/mauhai/awesome-jupyterlab

### Einrichten eines Enviroments für Qualitätsmanagment

 - Öffnen einer anaconda prompt (Startmenü Windows)
 - conda create -n qualitaetsmanagment # Erstellen des Environments
 - conda activate qualitaetsmanagment  # Aktivieren des Environments
 - conda install conda # Installation von Python mit Standardbibs wie pip und Zertifikatdiensten
 - conda install -c conda-forge matplotlib # Installation matplotlib und numpy
 - conda install -c anaconda seaborn # Installation seaborn, pandas, scipy
 - conda install -c anaconda sympy
 - conda install ipywidgets
 - conda install -c conda-forge jupyterlab # Installation jupyter lab
 - conda install plotly plotly # Installation plotly  
 - jupyter labextension install @jupyterlab/plotly-extension # Installation Jupyter Lab extention zum Rendern der Plotly Plots
 ### Optional (Installation Extensions) 
 Immer noch in anaconda prompt mit aktivierten Environment
#### Lab Extensions:
 Variableninspektor (https://github.com/lckr/jupyterlab-variableInspector):
 - jupyter labextension install @lckr/jupyterlab_variableinspector 

Debugger (https://github.com/jupyterlab/debugger):
 - conda install xeus-python -c conda-forge
 - pip install ptvsd
 - jupyter labextension install @jupyterlab/debugger
 Benutzung:
 ![xpython-step](https://user-images.githubusercontent.com/591645/80113902-2bc8a080-8583-11ea-8a8c-c7c0932107ae.gif)
 Jupyterlab_code_formatter (https://github.com/ryantam626/jupyterlab_code_formatter)
 - jupyter labextension install @ryantam626/jupyterlab_code_formatter
 - pip install jupyterlab_code_formatter
 - pip install black
 - jupyter serverextension enable --py jupyterlab_code_formatter
 
 Jupyter lsp (https://github.com/krassowski/jupyterlab-lsp#installation)
 - pip install jupyter-lsp
 - conda install -c conda-forge nodejs
 - jupyter labextension install @krassowski/jupyterlab-lsp
 - conda install -c conda-forge python-language-server r-languageserver
 

Oder:
https://code.visualstudio.com/docs/python/jupyter-support
Oder:
https://www.jetbrains.com/help/pycharm/jupyter-notebook-support.html

## Starten eines Jupyter Servers
- Öffnen einer anaconda prompt (Startmenü Windows)
- cd path/to/folder e.g. cd C:\dev\qualitaetsmanagment\blatt1
- conda activate qualitaetsmanagment 
- jupyter lab . # Starten des Jupyter lab servers
Es sollte sich nun ein Browser-Tab mit dem Jupyter Server öffnen
Zum schließen:
Strg+c im Anaconda Prompt



