.class public Lmiui/maml/data/WebServiceBinder$Variable;
.super Lmiui/maml/data/VariableBinder$Variable;
.source "WebServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/WebServiceBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Variable"
.end annotation


# instance fields
.field private mCache:Z

.field private mInnerPath:Ljava/lang/String;

.field public mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lmiui/maml/data/VariableBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V

    const-string v0, "xpath"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder$Variable;->mPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "path"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder$Variable;->mPath:Ljava/lang/String;

    :cond_19
    const-string v0, "innerPath"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder$Variable;->mInnerPath:Ljava/lang/String;

    const-string v0, "cache"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/data/WebServiceBinder$Variable;->mCache:Z

    return-void
.end method

.method static synthetic access$100(Lmiui/maml/data/WebServiceBinder$Variable;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Lmiui/maml/data/WebServiceBinder$Variable;->hasCache(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private final getCacheName()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmiui/maml/data/WebServiceBinder$Variable;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hasCache(Ljava/lang/String;)Z
    .registers 3

    iget-boolean v0, p0, Lmiui/maml/data/WebServiceBinder$Variable;->mCache:Z

    if-eqz v0, :cond_c

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method


# virtual methods
.method public loadCache(Ljava/lang/String;)V
    .registers 8

    const-string v0, "WebServiceBinder"

    iget v1, p0, Lmiui/maml/data/WebServiceBinder$Variable;->mType:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_46

    invoke-direct {p0, p1}, Lmiui/maml/data/WebServiceBinder$Variable;->hasCache(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_46

    :cond_e
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_10
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {p0}, Lmiui/maml/data/WebServiceBinder$Variable;->getCacheName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v3

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_23
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_23} :catch_31
    .catch Ljava/lang/OutOfMemoryError; {:try_start_10 .. :try_end_23} :catch_27
    .catchall {:try_start_10 .. :try_end_23} :catchall_25

    move-object v2, v0

    goto :goto_3a

    :catchall_25
    move-exception v0

    goto :goto_42

    :catch_27
    move-exception v3

    :try_start_28
    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    goto :goto_3a

    :catch_31
    move-exception v3

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_28 .. :try_end_39} :catchall_25

    nop

    :goto_3a
    invoke-static {v1}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    nop

    invoke-virtual {p0, v2}, Lmiui/maml/data/WebServiceBinder$Variable;->set(Ljava/lang/Object;)V

    return-void

    :goto_42
    invoke-static {v1}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v0

    :cond_46
    :goto_46
    return-void
.end method

.method public saveCache(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 13

    const-string v0, "WebServiceBinder"

    invoke-direct {p0, p2}, Lmiui/maml/data/WebServiceBinder$Variable;->hasCache(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6c

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_19

    const/16 v2, 0x1ed

    const/4 v3, -0x1

    invoke-static {v1, v2, v3, v3}, Lmiui/os/FileUtils;->mkdirs(Ljava/io/File;III)Z

    :cond_19
    :try_start_19
    new-instance v2, Ljava/io/File;

    invoke-direct {p0}, Lmiui/maml/data/WebServiceBinder$Variable;->getCacheName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    if-eqz p1, :cond_6c

    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_2d} :catch_61
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_2d} :catch_55
    .catch Ljava/lang/OutOfMemoryError; {:try_start_19 .. :try_end_2d} :catch_49

    const/high16 v5, 0x10000

    const/high16 v6, 0x10000

    :try_start_31
    new-array v7, v6, [B

    const/4 v8, -0x1

    :goto_34
    invoke-virtual {p1, v7, v4, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v9

    move v8, v9

    if-lez v9, :cond_3f

    invoke-virtual {v3, v7, v4, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3e
    .catchall {:try_start_31 .. :try_end_3e} :catchall_43

    goto :goto_34

    :cond_3f
    :try_start_3f
    invoke-static {v3}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto :goto_6c

    :catchall_43
    move-exception v4

    invoke-static {v3}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    nop

    throw v4
    :try_end_49
    .catch Ljava/io/FileNotFoundException; {:try_start_3f .. :try_end_49} :catch_61
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_49} :catch_55
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3f .. :try_end_49} :catch_49

    :catch_49
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_6c

    :catch_55
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6c

    :catch_61
    move-exception v2

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_6c
    :goto_6c
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .registers 16

    invoke-virtual {p0}, Lmiui/maml/data/WebServiceBinder$Variable;->isArray()Z

    move-result v0

    if-eqz v0, :cond_8f

    instance-of v0, p1, Lorg/json/JSONArray;

    if-eqz v0, :cond_8f

    move-object v0, p1

    check-cast v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lmiui/maml/data/WebServiceBinder$Variable;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v1}, Lmiui/maml/data/IndexedVariable;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/data/WebServiceBinder$Variable;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v2}, Lmiui/maml/data/IndexedVariable;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lmiui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    instance-of v5, v2, [D

    if-eqz v5, :cond_29

    move-object v5, v2

    check-cast v5, [D

    array-length v3, v5

    const/4 v4, 0x1

    goto :goto_31

    :cond_29
    instance-of v5, v2, [Ljava/lang/String;

    if-eqz v5, :cond_31

    move-object v5, v2

    check-cast v5, [Ljava/lang/String;

    array-length v3, v5

    :cond_31
    :goto_31
    const/4 v5, 0x0

    :goto_32
    if-ge v5, v3, :cond_8e

    const/4 v6, 0x0

    :try_start_35
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v5, v7, :cond_40

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7
    :try_end_3f
    .catch Lorg/json/JSONException; {:try_start_35 .. :try_end_3f} :catch_41

    move-object v6, v7

    :cond_40
    goto :goto_42

    :catch_41
    move-exception v7

    :goto_42
    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    if-eqz v6, :cond_7e

    sget-object v10, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq v6, v10, :cond_6e

    instance-of v10, v6, Lorg/json/JSONObject;

    if-eqz v10, :cond_6e

    new-instance v10, Lmiui/maml/util/JSONPath;

    move-object v11, v6

    check-cast v11, Lorg/json/JSONObject;

    invoke-direct {v10, v11}, Lmiui/maml/util/JSONPath;-><init>(Lorg/json/JSONObject;)V

    iget-object v11, p0, Lmiui/maml/data/WebServiceBinder$Variable;->mInnerPath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lmiui/maml/util/JSONPath;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    instance-of v12, v11, Ljava/lang/String;

    if-eqz v12, :cond_6d

    move-object v9, v11

    check-cast v9, Ljava/lang/String;

    if-eqz v4, :cond_6d

    :try_start_66
    invoke-static {v9}, Lmiui/maml/util/Utils;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12
    :try_end_6a
    .catch Ljava/lang/NumberFormatException; {:try_start_66 .. :try_end_6a} :catch_6c

    move-wide v7, v12

    goto :goto_6d

    :catch_6c
    move-exception v12

    :cond_6d
    :goto_6d
    goto :goto_7e

    :cond_6e
    instance-of v10, v6, Ljava/lang/String;

    if-eqz v10, :cond_6d

    move-object v9, v6

    check-cast v9, Ljava/lang/String;

    if-eqz v4, :cond_7e

    :try_start_77
    invoke-static {v9}, Lmiui/maml/util/Utils;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10
    :try_end_7b
    .catch Ljava/lang/NumberFormatException; {:try_start_77 .. :try_end_7b} :catch_7d

    move-wide v7, v10

    goto :goto_7e

    :catch_7d
    move-exception v10

    :cond_7e
    :goto_7e
    if-eqz v4, :cond_86

    iget-object v10, p0, Lmiui/maml/data/WebServiceBinder$Variable;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v10, v5, v7, v8}, Lmiui/maml/data/IndexedVariable;->setArr(ID)Z

    goto :goto_8b

    :cond_86
    iget-object v10, p0, Lmiui/maml/data/WebServiceBinder$Variable;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v10, v5, v9}, Lmiui/maml/data/IndexedVariable;->setArr(ILjava/lang/Object;)Z

    :goto_8b
    add-int/lit8 v5, v5, 0x1

    goto :goto_32

    :cond_8e
    goto :goto_92

    :cond_8f
    invoke-super {p0, p1}, Lmiui/maml/data/VariableBinder$Variable;->set(Ljava/lang/Object;)V

    :goto_92
    return-void
.end method
