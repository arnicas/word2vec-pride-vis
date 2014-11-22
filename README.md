word2vec-pride-vis
==================

A hack to replace Pride &amp; Predjudice text with closest word2vec model word, and visualize results.

To use this, you need Python packages gensim, pattern.py.  Local tsne.py is provided here.

IPython notebook viewer link: http://nbviewer.ipython.org/github/arnicas/word2vec-pride-vis/blob/master/Python-Word2Vec-PrideProcessor.ipynb

If you want to run this and modify any part (different parts of speech, etc), the web part needs these updates:
* Right-click and save the graph png into your data directory
* Change the path in the css file for the #graph background to point to that png file
* Make sure the dimensions of the graph match the dimensions in XLIM, YLIM in the web.html script part
* Change the path to the coords file in the web.html script part
* Start a server and load your web page (eg., python -m SimpleHTTPServer 8000)

Live version: http://www.ghostweather.com/files/word2vecpride/
Blog post with more details about what this is: 
