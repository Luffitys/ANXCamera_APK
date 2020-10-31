.class Lmiui/maml/MamlConfigSettings$ConfigFileHelper;
.super Ljava/lang/Object;
.source "MamlConfigSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/MamlConfigSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfigFileHelper"
.end annotation


# instance fields
.field protected mAppContext:Landroid/content/Context;

.field protected mConfigFile:Lmiui/maml/util/ConfigFile;

.field private mPath:Ljava/lang/String;

.field private mZipFile:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->mPath:Ljava/lang/String;

    iput-object p2, p0, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->mAppContext:Landroid/content/Context;

    if-eqz p1, :cond_17

    :try_start_9
    new-instance v0, Ljava/util/zip/ZipFile;

    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->mZipFile:Ljava/util/zip/ZipFile;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_12} :catch_13

    goto :goto_17

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_17
    :goto_17
    new-instance v0, Lmiui/maml/util/ConfigFile;

    invoke-direct {v0}, Lmiui/maml/util/ConfigFile;-><init>()V

    iput-object v0, p0, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->mConfigFile:Lmiui/maml/util/ConfigFile;

    invoke-virtual {p0}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->getConfigPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/maml/util/ConfigFile;->load(Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->mZipFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_c

    :try_start_4
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_c
    :goto_c
    return-void
.end method

.method public containsFile(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->mZipFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public getConfigFile()Lmiui/maml/util/ConfigFile;
    .registers 2

    iget-object v0, p0, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->mConfigFile:Lmiui/maml/util/ConfigFile;

    return-object v0
.end method

.method public getConfigFileStream(Ljava/util/Locale;)Ljava/io/InputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "config.xml"

    if-eqz p1, :cond_23

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->getFileStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_14

    return-object v0

    :cond_14
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->getFileStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_23

    return-object v0

    :cond_23
    invoke-virtual {p0, v1}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->getFileStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method

.method public getConfigPath()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".config"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getFileStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->mZipFile:Ljava/util/zip/ZipFile;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    invoke-virtual {v0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-nez v0, :cond_d

    return-object v1

    :cond_d
    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method

.method public save()V
    .registers 3

    iget-object v0, p0, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->mConfigFile:Lmiui/maml/util/ConfigFile;

    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lmiui/maml/util/ConfigFile;->save(Landroid/content/Context;)Z

    return-void
.end method
