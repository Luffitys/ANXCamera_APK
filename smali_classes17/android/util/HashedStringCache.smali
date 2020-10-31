.class public Landroid/util/HashedStringCache;
.super Ljava/lang/Object;
.source "HashedStringCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/HashedStringCache$HashResult;
    }
.end annotation


# static fields
.field private static final DAYS_TO_MILLIS:J = 0x5265c00L

.field private static final DEBUG:Z = false

.field private static final HASH_CACHE_SIZE:I = 0x64

.field private static final HASH_LENGTH:I = 0x8

.field static final HASH_SALT:Ljava/lang/String; = "_hash_salt"

.field static final HASH_SALT_DATE:Ljava/lang/String; = "_hash_salt_date"

.field static final HASH_SALT_GEN:Ljava/lang/String; = "_hash_salt_gen"

.field private static final MAX_SALT_DAYS:I = 0x64

.field private static final TAG:Ljava/lang/String; = "HashedStringCache"

.field private static final UTF_8:Ljava/nio/charset/Charset;

.field private static sHashedStringCache:Landroid/util/HashedStringCache;


# instance fields
.field private final mDigester:Ljava/security/MessageDigest;

.field private final mHashes:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreferenceLock:Ljava/lang/Object;

.field private mSalt:[B

.field private mSaltGen:I

.field private final mSecureRandom:Ljava/security/SecureRandom;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Landroid/util/HashedStringCache;->sHashedStringCache:Landroid/util/HashedStringCache;

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Landroid/util/HashedStringCache;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/util/HashedStringCache;->mPreferenceLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Landroid/util/HashedStringCache;->mHashes:Landroid/util/LruCache;

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Landroid/util/HashedStringCache;->mSecureRandom:Ljava/security/SecureRandom;

    :try_start_1a
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Landroid/util/HashedStringCache;->mDigester:Ljava/security/MessageDigest;
    :try_end_22
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1a .. :try_end_22} :catch_24

    nop

    return-void

    :catch_24
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private checkNeedsNewSalt(Ljava/lang/String;IJ)Z
    .registers 18

    move v0, p2

    const-wide/16 v1, 0x0

    cmp-long v3, p3, v1

    const/4 v4, 0x1

    if-eqz v3, :cond_28

    const/4 v3, -0x1

    if-ge v0, v3, :cond_c

    goto :goto_28

    :cond_c
    const/16 v3, 0x64

    if-le v0, v3, :cond_12

    const/16 v0, 0x64

    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v7, v5, p3

    int-to-long v9, v0

    const-wide/32 v11, 0x5265c00

    mul-long/2addr v9, v11

    cmp-long v3, v7, v9

    if-gez v3, :cond_27

    cmp-long v1, v7, v1

    if-gez v1, :cond_26

    goto :goto_27

    :cond_26
    const/4 v4, 0x0

    :cond_27
    :goto_27
    return v4

    :cond_28
    :goto_28
    return v4
.end method

.method private getHashSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 7

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    sget-object v2, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/os/Environment;->getDataUserCePackageDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "shared_prefs"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "hashed_cache.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance()Landroid/util/HashedStringCache;
    .registers 1

    sget-object v0, Landroid/util/HashedStringCache;->sHashedStringCache:Landroid/util/HashedStringCache;

    if-nez v0, :cond_b

    new-instance v0, Landroid/util/HashedStringCache;

    invoke-direct {v0}, Landroid/util/HashedStringCache;-><init>()V

    sput-object v0, Landroid/util/HashedStringCache;->sHashedStringCache:Landroid/util/HashedStringCache;

    :cond_b
    sget-object v0, Landroid/util/HashedStringCache;->sHashedStringCache:Landroid/util/HashedStringCache;

    return-object v0
.end method

.method private populateSaltValues(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 14

    iget-object v0, p0, Landroid/util/HashedStringCache;->mPreferenceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0, p1}, Landroid/util/HashedStringCache;->getHashSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Landroid/util/HashedStringCache;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_hash_salt_date"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-direct {p0, p2, p3, v1, v2}, Landroid/util/HashedStringCache;->checkNeedsNewSalt(Ljava/lang/String;IJ)Z

    move-result v3

    if-eqz v3, :cond_2b

    iget-object v4, p0, Landroid/util/HashedStringCache;->mHashes:Landroid/util/LruCache;

    invoke-virtual {v4}, Landroid/util/LruCache;->evictAll()V

    :cond_2b
    iget-object v4, p0, Landroid/util/HashedStringCache;->mSalt:[B

    if-eqz v4, :cond_31

    if-eqz v3, :cond_d2

    :cond_31
    iget-object v4, p0, Landroid/util/HashedStringCache;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_hash_salt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/util/HashedStringCache;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_hash_salt_gen"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Landroid/util/HashedStringCache;->mSaltGen:I

    if-eqz v4, :cond_67

    if-eqz v3, :cond_ca

    :cond_67
    iget v5, p0, Landroid/util/HashedStringCache;->mSaltGen:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/util/HashedStringCache;->mSaltGen:I

    const/16 v5, 0x10

    new-array v5, v5, [B

    iget-object v6, p0, Landroid/util/HashedStringCache;->mSecureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v6, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    iget-object v6, p0, Landroid/util/HashedStringCache;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_hash_salt"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_hash_salt_gen"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Landroid/util/HashedStringCache;->mSaltGen:I

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_hash_salt_date"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_ca
    sget-object v5, Landroid/util/HashedStringCache;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    iput-object v5, p0, Landroid/util/HashedStringCache;->mSalt:[B

    :cond_d2
    monitor-exit v0

    return-void

    :catchall_d4
    move-exception v1

    monitor-exit v0
    :try_end_d6
    .catchall {:try_start_3 .. :try_end_d6} :catchall_d4

    throw v1
.end method


# virtual methods
.method public hashString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/util/HashedStringCache$HashResult;
    .registers 10

    const/4 v0, -0x1

    if-eq p4, v0, :cond_5e

    if-eqz p1, :cond_5e

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5e

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_5e

    :cond_12
    invoke-direct {p0, p1, p2, p4}, Landroid/util/HashedStringCache;->populateSaltValues(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, p0, Landroid/util/HashedStringCache;->mHashes:Landroid/util/LruCache;

    invoke-virtual {v0, p3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_27

    new-instance v1, Landroid/util/HashedStringCache$HashResult;

    iget v2, p0, Landroid/util/HashedStringCache;->mSaltGen:I

    invoke-direct {v1, p0, v0, v2}, Landroid/util/HashedStringCache$HashResult;-><init>(Landroid/util/HashedStringCache;Ljava/lang/String;I)V

    return-object v1

    :cond_27
    iget-object v1, p0, Landroid/util/HashedStringCache;->mDigester:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    iget-object v1, p0, Landroid/util/HashedStringCache;->mDigester:Ljava/security/MessageDigest;

    iget-object v2, p0, Landroid/util/HashedStringCache;->mSalt:[B

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    iget-object v1, p0, Landroid/util/HashedStringCache;->mDigester:Ljava/security/MessageDigest;

    sget-object v2, Landroid/util/HashedStringCache;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    iget-object v1, p0, Landroid/util/HashedStringCache;->mDigester:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    const/16 v2, 0x8

    array-length v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-static {v1, v3, v2, v4}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Landroid/util/HashedStringCache;->mHashes:Landroid/util/LruCache;

    invoke-virtual {v3, p3, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/util/HashedStringCache$HashResult;

    iget v4, p0, Landroid/util/HashedStringCache;->mSaltGen:I

    invoke-direct {v3, p0, v0, v4}, Landroid/util/HashedStringCache$HashResult;-><init>(Landroid/util/HashedStringCache;Ljava/lang/String;I)V

    return-object v3

    :cond_5e
    :goto_5e
    const/4 v0, 0x0

    return-object v0
.end method
