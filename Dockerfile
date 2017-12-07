FROM murata99/docker-statistics-image

RUN apt-get update && \
    apt-get -y install python-pip && \
    pip install --upgrade pip && \
    apt-get -y install ipython ipython-notebook && \
    pip install jupyter

RUN julia -e 'Pkg.add("IJulia")'

EXPOSE 8888
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--allow-root"]
