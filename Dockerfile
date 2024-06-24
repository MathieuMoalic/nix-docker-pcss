FROM docker.io/python:3.11.9-bookworm

RUN apt-get update 

RUN curl -sSL https://raw.githubusercontent.com/MathieuMoalic/amumax/main/install.sh | sh -s -- /usr/local/bin
RUN curl -sSL https://code-server.dev/install.sh | sh
RUN curl -sSL https://starship.rs/install.sh | sh -s -- -y

RUN pip install pyzfn ipykernel numba numpy pandas matplotlib seaborn scikit-learn jupyterlab tqdm scipy
RUN apt-get install -y zsh zoxide exa bat ripgrep fd-find fzf rclone tealdeer
RUN tldr --update
COPY .config /root/.config
ENV ZDOTDIR=/root/.config/zsh
ENV USER=zfn

CMD zsh