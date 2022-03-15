# 데이터 만들기

a <- c('홍길동','짱구','철수','영희','맹구')
b <- c(170, 156,187, 160, 180)
c <- c(60, 70, 80, 55, 70)

data1 <- data.frame(name = a, height = b, weight = c)
data1
View(data1)

# 파일 불러오기
# 파일 확장자 : txt, csv, xls, xlsx, xlm, json...

# txt 불러오기
# read.table('path', header=TRUE|FALSE(기본값), skip=n, 
#             nrow=-1, sep='분리문자(기본값=tab)')
txt_data <- read.table('Part02_Data/file/sample.txt',
                       header=TRUE)
View(txt_data)

txt_data2 <- read.table('Part02_Data/file/sample2.txt')
View(txt_data2)

column_name <- c('ID','AGE','SCORE','CLASS')
txt_data2 <- read.table('Part02_Data/file/sample2.txt',
                        col.names = column_name)
View(txt_data2)

txt_data2 <- read.table('Part02_Data/file/sample2.txt',
                        col.names = column_name,
                        row.names = 'ID', sep='\t')
View(txt_data2)
# sample txt파일은 탭으로 구분되어서 sep 설정 필요X

# csv 불러오기
csv_data<-read.csv('Part02_Data/file/sample.csv')
View(csv_data)

# Excel 불러오기
# install.packages('readxl')
library(readxl)
excel_data<-read_excel('Part02_Data/file/sample.xlsx')
View(excel_data)

# JSON : 데이터 전달 목적으로 만들어진 파일 형식
# install.packages('jsonlite')
library(jsonlite)
json_data<-fromJSON('Part02_Data/file/market_classification_1.json')
str(json_data)
json_data2<-fromJSON('Part02_Data/file/market_classification_2.json')
str(json_data2)

# Etc.
# install.packages('rvest')
library(rvest)
url<-'https://ko.wikipedia.org/wiki/2018%EB%85%84_FIFA_%EC%9B%94%EB%93%9C%EC%BB%B5_%EC%84%A0%EC%88%98_%EB%AA%85%EB%8B%A8#%EB%8C%80%ED%95%9C%EB%AF%BC%EA%B5%AD'
webpage<-xml2::read_html(url)
table<-rvest::html_nodes(x=webpage,xpath='//*[@id="mw-content-text"]/div[1]/table[1]/tbody/tr/td/table')
soccer<-rvest::html_table(table)
