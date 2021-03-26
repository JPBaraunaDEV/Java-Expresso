#!/bin/bash

#
#@Autor:João Pedro Baraúna (JPBaraunaDEV)
#@Data: 25/03/2021
#@Descrição: Script com o objetivo de automatizar a instalação e configuração do ambiente de desenvolvimento Java no Ubuntu (20.04)
#

## Prevenindo-se de possiveis travas do APT ##

sudo rm /var/cache/apt/archives/lock;
sudo rm /var/lib/dpkg/lock-frontend;

## Atualizando o repositorio ##

sudo apt-get update -y && sudo apt-get upgrade -y &&

## Instalando o Java JDK (LTS) ##

sudo apt-get install default-jdk -y &&

## Instala o pacote unzip caso não tenha##

sudo apt-get install unzip -y &&

## Instalando o Maven ##

sudo mkdir /opt/maven &&

sudo wget https://downloads.apache.org/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.zip -P /opt/maven &&

sudo unzip -d /opt/maven /opt/maven/apache-maven-3.6.3-bin.zip &&

export PATH=/opt/maven/apache-maven-3.6.3/bin:$PATH &&

mvn -N io.takari:maven:wrapper &&

## Instalando o Gradle ##

sudo mkdir /opt/gradle &&

VERSION=6.8.3 &&

sudo wget https://services.gradle.org/distributions/gradle-${VERSION}-bin.zip -P /tmp &&

sudo unzip -d /opt/gradle /tmp/gradle-${VERSION}-bin.zip &&

export PATH=$PATH:/opt/gradle/gradle-${VERSION}/bin &&

gradle wrapper &&

## Instalando o Intellij IDEA Community ##

sudo snap install intellij-idea-community --classic &&

## Dando uma atualizada pós instalação ##

sudo apt-get update && sudo apt-get dist-upgrade -y && sudo apt-get autoclean -y && sudo apt-get autoremove -y &&

## Fim do Script ##

echo "Instalações Concluídas !"
