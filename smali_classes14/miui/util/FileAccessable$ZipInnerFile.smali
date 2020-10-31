.class public Lmiui/util/FileAccessable$ZipInnerFile;
.super Lmiui/util/FileAccessable$AbstractFileAccessable;
.source "FileAccessable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/FileAccessable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZipInnerFile"
.end annotation


# instance fields
.field mEntryName:Ljava/lang/String;

.field mExists:Z

.field mIsFolder:Z

.field mZipFile:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>(Ljava/util/zip/ZipFile;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lmiui/util/FileAccessable$AbstractFileAccessable;-><init>()V

    invoke-direct {p0, p1, p2}, Lmiui/util/FileAccessable$ZipInnerFile;->init(Ljava/util/zip/ZipFile;Ljava/lang/String;)V

    return-void
.end method

.method private init(Ljava/util/zip/ZipFile;Ljava/lang/String;)V
    .registers 9

    iput-object p1, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mZipFile:Ljava/util/zip/ZipFile;

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_16

    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_17

    :cond_16
    move-object v1, p2

    :goto_17
    iput-object v1, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mEntryName:Ljava/lang/String;

    iget-object v1, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mZipFile:Ljava/util/zip/ZipFile;

    if-nez v1, :cond_1e

    return-void

    :cond_1e
    invoke-virtual {p1, p2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-nez v1, :cond_5b

    move-object v3, p2

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_3a
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    :goto_3e
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_5a

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_59

    iput-boolean v2, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mExists:Z

    iput-boolean v2, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mIsFolder:Z

    goto :goto_5a

    :cond_59
    goto :goto_3e

    :cond_5a
    :goto_5a
    goto :goto_63

    :cond_5b
    iput-boolean v2, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mExists:Z

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v0

    iput-boolean v0, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mIsFolder:Z

    :goto_63
    return-void
.end method

.method private static objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    if-nez p0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public createByExtension(Ljava/lang/String;)Lmiui/util/FileAccessable;
    .registers 6

    new-instance v0, Lmiui/util/FileAccessable$ZipInnerFile;

    iget-object v1, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mZipFile:Ljava/util/zip/ZipFile;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mEntryName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmiui/util/FileAccessable$ZipInnerFile;-><init>(Ljava/util/zip/ZipFile;Ljava/lang/String;)V

    return-object v0
.end method

.method public createBySubpath(Ljava/lang/String;)Lmiui/util/FileAccessable;
    .registers 6

    new-instance v0, Lmiui/util/FileAccessable$ZipInnerFile;

    iget-object v1, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mZipFile:Ljava/util/zip/ZipFile;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mEntryName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmiui/util/FileAccessable$ZipInnerFile;-><init>(Ljava/util/zip/ZipFile;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_23

    instance-of v1, p1, Lmiui/util/FileAccessable$ZipInnerFile;

    if-nez v1, :cond_8

    goto :goto_23

    :cond_8
    move-object v1, p1

    check-cast v1, Lmiui/util/FileAccessable$ZipInnerFile;

    iget-object v2, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mZipFile:Ljava/util/zip/ZipFile;

    iget-object v3, v1, Lmiui/util/FileAccessable$ZipInnerFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-static {v2, v3}, Lmiui/util/FileAccessable$ZipInnerFile;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    return v0

    :cond_16
    iget-object v2, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mEntryName:Ljava/lang/String;

    iget-object v3, v1, Lmiui/util/FileAccessable$ZipInnerFile;->mEntryName:Ljava/lang/String;

    invoke-static {v2, v3}, Lmiui/util/FileAccessable$ZipInnerFile;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    return v0

    :cond_21
    const/4 v0, 0x1

    return v0

    :cond_23
    :goto_23
    return v0
.end method

.method public exists()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mExists:Z

    return v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 4

    iget-boolean v0, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mExists:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mIsFolder:Z

    if-eqz v0, :cond_a

    goto :goto_1e

    :cond_a
    iget-object v0, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mZipFile:Ljava/util/zip/ZipFile;

    iget-object v2, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mEntryName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    :try_start_12
    iget-object v2, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v2, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_18} :catch_19

    return-object v1

    :catch_19
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    return-object v1

    :cond_1e
    :goto_1e
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mEntryName:Ljava/lang/String;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    iget-object v1, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mEntryName:Ljava/lang/String;

    if-gez v0, :cond_d

    goto :goto_17

    :cond_d
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_17
    return-object v1
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mZipFile:Ljava/util/zip/ZipFile;

    if-nez v0, :cond_b

    iget-object v0, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mEntryName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    :cond_b
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mEntryName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isFile()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mIsFolder:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public list()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/util/FileAccessable;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mExists:Z

    if-eqz v0, :cond_91

    iget-boolean v0, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mIsFolder:Z

    if-nez v0, :cond_a

    goto/16 :goto_91

    :cond_a
    iget-object v0, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    :goto_1a
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_90

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mEntryName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-le v6, v7, :cond_8f

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8f

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v8, -0x1

    if-eq v4, v8, :cond_7c

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_7c
    invoke-virtual {v2, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8f

    new-instance v8, Lmiui/util/FileAccessable$ZipInnerFile;

    iget-object v9, p0, Lmiui/util/FileAccessable$ZipInnerFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-direct {v8, v9, v7}, Lmiui/util/FileAccessable$ZipInnerFile;-><init>(Ljava/util/zip/ZipFile;Ljava/lang/String;)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_8f
    goto :goto_1a

    :cond_90
    return-object v1

    :cond_91
    :goto_91
    const/4 v0, 0x0

    return-object v0
.end method
