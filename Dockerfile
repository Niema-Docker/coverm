# Minimal Docker image for CoverM using Micromamba base
FROM mambaorg/micromamba:debian13-slim

# install CoverM
RUN micromamba create -y -n coverm -c defaults -c conda-forge -c bioconda coverm==0.8.0 && \
    micromamba clean --all --yes
ENV ENV_NAME=coverm
