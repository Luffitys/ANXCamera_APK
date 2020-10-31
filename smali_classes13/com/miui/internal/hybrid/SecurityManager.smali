.class public Lcom/miui/internal/hybrid/SecurityManager;
.super Ljava/lang/Object;
.source "SecurityManager.java"


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
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/internal/hybrid/SecurityManager;->mConfig:Lcom/miui/internal/hybrid/Config;

    if-eqz p1, :cond_21

    invoke-virtual {p1}, Lcom/miui/internal/hybrid/Config;->getSecurity()Lcom/miui/internal/hybrid/Security;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {p1}, Lcom/miui/internal/hybrid/Config;->getSecurity()Lcom/miui/internal/hybrid/Security;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/Security;->getTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/internal/hybrid/SecurityManager;->mExpiredTime:J

    invoke-virtual {p1}, Lcom/miui/internal/hybrid/Config;->getSecurity()Lcom/miui/internal/hybrid/Security;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/Security;->getSignature()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/hybrid/SecurityManager;->mSign:Ljava/lang/String;

    :cond_21
    sget-object v0, Lcom/miui/internal/hybrid/SecurityManager;->sPublicKey:Ljava/lang/String;

    if-nez v0, :cond_2b

    invoke-direct {p0, p2}, Lcom/miui/internal/hybrid/SecurityManager;->getPublicKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/hybrid/SecurityManager;->sPublicKey:Ljava/lang/String;

    :cond_2b
    return-void
.end method

.method private getHybridBaseFolder(Landroid/content/Context;)Ljava/io/File;
    .registers 5

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "miuisdk"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getPublicKey(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/miui/internal/hybrid/SecurityManager;->getHybridBaseFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "hybrid_key.pem"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_d
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1a

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v3

    goto :goto_29

    :cond_1a
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "keys/hybrid_key.pem"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    move-object v2, v3

    :goto_29
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v3

    invoke-direct {p0, v1}, Lcom/miui/internal/hybrid/SecurityManager;->readPublicKey(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v3
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_38} :catch_44
    .catchall {:try_start_d .. :try_end_38} :catchall_42

    nop

    :try_start_39
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_41

    :catch_3d
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :goto_41
    return-object v3

    :catchall_42
    move-exception v2

    goto :goto_4d

    :catch_44
    move-exception v2

    :try_start_45
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "cannot read hybrid key."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4d
    .catchall {:try_start_45 .. :try_end_4d} :catchall_42

    :goto_4d
    if-eqz v1, :cond_57

    :try_start_4f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    goto :goto_57

    :catch_53
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_57
    :goto_57
    throw v2
.end method

.method private isValidSignature(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p2, :cond_10

    sget-object v0, Lcom/miui/internal/hybrid/SecurityManager;->sPublicKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/internal/hybrid/SignUtils;->getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/miui/internal/hybrid/SignUtils;->verify(Ljava/lang/String;Ljava/security/PublicKey;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private readPublicKey(Ljava/io/BufferedReader;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :cond_6
    :goto_6
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    if-eqz v2, :cond_2b

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "-----"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    goto :goto_6

    :cond_22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_2b
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public isExpired()Z
    .registers 5

    iget-wide v0, p0, Lcom/miui/internal/hybrid/SecurityManager;->mExpiredTime:J

    const-wide/16 v2, 0x0

    cmp-long v2, v2, v0

    if-gez v2, :cond_12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public isValidSignature()Z
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/hybrid/SecurityManager;->mValidSignature:Ljava/lang/Boolean;

    if-nez v0, :cond_1f

    :try_start_4
    iget-object v0, p0, Lcom/miui/internal/hybrid/SecurityManager;->mConfig:Lcom/miui/internal/hybrid/Config;

    invoke-static {v0}, Lcom/miui/internal/hybrid/ConfigUtils;->getRawConfig(Lcom/miui/internal/hybrid/Config;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/hybrid/SecurityManager;->mSign:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/miui/internal/hybrid/SecurityManager;->isValidSignature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/hybrid/SecurityManager;->mValidSignature:Ljava/lang/Boolean;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_16} :catch_17

    goto :goto_1f

    :catch_17
    move-exception v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/hybrid/SecurityManager;->mValidSignature:Ljava/lang/Boolean;

    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/miui/internal/hybrid/SecurityManager;->mValidSignature:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
