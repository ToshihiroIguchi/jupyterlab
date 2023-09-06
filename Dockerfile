#https://qiita.com/kojiue/items/f04443fcf1e0b4ddb31b

FROM python:3.9-slim-buster

RUN pip install --upgrade --no-cache-dir pip && \
  pip install --upgrade --no-cache-dir \
  jupyterlab \
  pymatgen

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--LabApp.token=''"]
