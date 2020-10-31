.class public Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;
.super Ljava/lang/Object;
.source "Library.java"


# static fields
.field private static final JSON_LIBRARY_CHECKSUM:Ljava/lang/String; = "md5"

.field private static final JSON_ZIP_CHECKSUM:Ljava/lang/String; = "zip"

.field private static final JSON_ZIP_NAME:Ljava/lang/String; = "name"


# instance fields
.field private libraryCheckSum:Ljava/lang/String;

.field private libraryName:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private zipCheckSum:Ljava/lang/String;

.field private zipName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    :try_start_4
    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->zipName:Ljava/lang/String;

    const-string v1, "md5"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->libraryCheckSum:Ljava/lang/String;

    const-string v1, "zip"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->zipCheckSum:Ljava/lang/String;

    iget-object v1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->zipName:Ljava/lang/String;

    if-nez v1, :cond_23

    iput-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->libraryName:Ljava/lang/String;

    return-void

    :cond_23
    iget-object v1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->zipName:Ljava/lang/String;

    invoke-direct {p0, p2, v1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->getUrlBy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->url:Ljava/lang/String;

    iget-object v1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->zipName:Ljava/lang/String;

    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_37

    move-object v2, v0

    goto :goto_3e

    :cond_37
    iget-object v2, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->zipName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_3e
    iput-object v2, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->libraryName:Ljava/lang/String;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_40} :catch_41

    goto :goto_4d

    :catch_41
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    iput-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->zipName:Ljava/lang/String;

    iput-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->libraryName:Ljava/lang/String;

    iput-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->libraryCheckSum:Ljava/lang/String;

    iput-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->zipCheckSum:Ljava/lang/String;

    :goto_4d
    return-void
.end method

.method private getUrlBy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-nez p1, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getLibraryCheckSum()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->libraryCheckSum:Ljava/lang/String;

    return-object v0
.end method

.method public getLibraryName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->libraryName:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getZipCheckSum()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->zipCheckSum:Ljava/lang/String;

    return-object v0
.end method

.method public getZipName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;->zipName:Ljava/lang/String;

    return-object v0
.end method
