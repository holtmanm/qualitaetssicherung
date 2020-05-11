FROM continuumio/anaconda3
RUN conda config --add channels conda-forge

RUN conda create -n qualitaetsmanagment python=3.7
RUN echo "conda activate qualitaetsmanagment" > ~/.bashrc
RUN conda install conda
RUN conda update -n base -c defaults conda

RUN conda install -c matplotlib seaborn anaconda sympy "ipywidgets=7.5" nodejs>=10 jupyterlab=2 plotly xeus-python ptvsd
RUN conda update nodejs
RUN jupyter labextension install jupyterlab-plotly
RUN jupyter labextension install @jupyterlab/debugger
RUN jupyter labextension install @ryantam626/jupyterlab_code_formatter
RUN pip install jupyterlab_code_formatter
RUN pip install black
RUN jupyter serverextension enable --py jupyterlab_code_formatter
RUN pip install --pre jupyter-lsp
RUN conda list ipython
RUN jupyter lab --version
RUN conda install -c conda-forge python-language-server r-languageserver
RUN jupyter labextension install @krassowski/jupyterlab-lsp

RUN mkdir local

ENTRYPOINT bash -c "source activate qualitaetsmanagment && cd local && jupyter lab --ip 0.0.0.0 --no-browser --allow-root --NotebookApp.token='' --NotebookApp.password=''"
