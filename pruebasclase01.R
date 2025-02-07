x=1
y<-90
x=-100:100
x
y<-(5+2*x)
y
plot(x,y,type = "l",main = "Function", col="blue")
for(i in 1:100)
  {print(i)}

names=c("Edgar","Milton","David","Manuel")
for(i in 1:4){
  print(names[i])
}

for (i in names){
  print(i)
}

datos=cbind(names,1:4)

### para hacer data frame

datos=as.data.frame(datos)
datos

names(datos)[2]="Lista"
datos$Lista=as.numeric(datos$Lista)
datos

summary(datos$Lista)

datos$calificacion=c(100,70,71,100)
datos

datos=rbind(datos,c("Mario",5,82))
datos

### para seleccionar las personas que tengan calif distinta de 100
datos$calificacion!=100
datos$names[datos$calificacion!=100]
nuevabase=datos[datos$calificacion!=100,]
nuevabase
View(nuevabase)

datos$primero=ifelse(datos$calificacion==100,1,0)
datos
table(datos$calificacion,datos$primero)

datos$calificacion=as.numeric(datos$calificacion)
datos$calificacion<100
max(datos$calificacion)

regresion=lm(datos$calificacion~1)
summary(regresion)

regresion2=lm(calificacion~1,data=datos)
summary(regresion2)
