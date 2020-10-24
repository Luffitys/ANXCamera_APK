.class public Lcom/miui/internal/hybrid/SecurityManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final KEY_FILE_NAME:Ljava/lang/String; = "hybrid_key.pem"

.field private static sPublicKey:Ljava/lang/String;


# instance fields
.field private mConfig:Lcom/miui/internal/hybrid/Config;

.field private mExpiredTime:J

.field private mSign:Ljava/lang/String;

.field private mValidSignature:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/miui/internal/hybrid/Config;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/internal/hybrid/SecurityManager;->mConfig:Lcom/miui/internal/hybrid/Config;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/internal/hybrid/Config;->getSecurity()Lcom/miui/internal/hybrid/Security;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/internal/hybrid/Config;->getSecurity()Lcom/miui/internal/hybrid/Security;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/Security;->getTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/internal/hybrid/SecurityManager;->mExpiredTime:J

    invoke-virtual {p1}, Lcom/miui/internal/hybrid/Config;->getSecurity()Lcom/miui/internal/hybrid/Security;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/internal/hybrid/Security;->getSignature()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/hybrid/SecurityManager;->mSign:Ljava/lang/String;

    :cond_0
    sget-object p1, Lcom/miui/internal/hybrid/SecurityManager;->sPublicKey:Ljava/lang/String;

    if-nez p1, :cond_1

    invoke-direct {p0, p2}, Lcom/miui/internal/hybrid/SecurityManager;->getPublicKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/miui/internal/hybrid/SecurityManager;->sPublicKey:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private getHybridBaseFolder(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    new-instance p0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string v0, "miuisdk"

    invoke-direct {p0, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method private getPublicKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/miui/internal/hybrid/SecurityManager;->getHybridBaseFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "hybrid_key.pem"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v0, "keys/hybrid_key.pem"

    invoke-virtual {p1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    :goto_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, v0}, Lcom/miui/internal/hybrid/SecurityManager;->readPublicKey(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-object p0

    :catchall_0
    move-exception p0

    move-object v1, v0

    goto :goto_3

    :catch_1
    move-object v1, v0

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_2
    :goto_2
    :try_start_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "cannot read hybrid key."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_4
    throw p0
.end method

.method private isValidSignature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-eqz p2, :cond_0

    sget-object p0, Lcom/miui/internal/hybrid/SecurityManager;->sPublicKey:Ljava/lang/String;

    invoke-static {p0}, Lcom/miui/internal/hybrid/SignUtils;->getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object p0

    invoke-static {p1, p0, p2}, Lcom/miui/internal/hybrid/SignUtils;->verify(Ljava/lang/String;Ljava/security/PublicKey;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private readPublicKey(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "-----"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public isExpired()Z
    .locals 4

    iget-wide v0, p0, Lcom/miui/internal/hybrid/SecurityManager;->mExpiredTime:J

    const-wide/16 v2, 0x0

    cmp-long p0, v2, v0

    if-gez p0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isValidSignature()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/hybrid/SecurityManager;->mValidSignature:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/internal/hybrid/SecurityManager;->mConfig:Lcom/miui/internal/hybrid/Config;

    invoke-static {v0}, Lcom/miui/internal/hybrid/ConfigUtils;->getRawConfig(Lcom/miui/internal/hybrid/Config;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/hybrid/SecurityManager;->mSign:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/miui/internal/hybrid/SecurityManager;->isValidSignature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/hybrid/SecurityManager;->mValidSignature:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/miui/internal/hybrid/SecurityManager;->mValidSignature:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/miui/internal/hybrid/SecurityManager;->mValidSignature:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
