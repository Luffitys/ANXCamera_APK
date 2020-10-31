.class public Landroid/security/KeyStore;
.super Ljava/lang/Object;
.source "KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/KeyStore$CertificateChainPromise;,
        Landroid/security/KeyStore$KeyAttestationCallbackResult;,
        Landroid/security/KeyStore$KeystoreResultPromise;,
        Landroid/security/KeyStore$OperationPromise;,
        Landroid/security/KeyStore$ExportKeyPromise;,
        Landroid/security/KeyStore$KeyCharacteristicsPromise;,
        Landroid/security/KeyStore$KeyCharacteristicsCallbackResult;,
        Landroid/security/KeyStore$State;
    }
.end annotation


# static fields
.field public static final CANNOT_ATTEST_IDS:I = -0x42

.field public static final CONFIRMATIONUI_ABORTED:I = 0x2

.field public static final CONFIRMATIONUI_CANCELED:I = 0x1

.field public static final CONFIRMATIONUI_IGNORED:I = 0x4

.field public static final CONFIRMATIONUI_OK:I = 0x0

.field public static final CONFIRMATIONUI_OPERATION_PENDING:I = 0x3

.field public static final CONFIRMATIONUI_SYSTEM_ERROR:I = 0x5

.field public static final CONFIRMATIONUI_UIERROR:I = 0x10000

.field public static final CONFIRMATIONUI_UIERROR_MALFORMED_UTF8_ENCODING:I = 0x10003

.field public static final CONFIRMATIONUI_UIERROR_MESSAGE_TOO_LONG:I = 0x10002

.field public static final CONFIRMATIONUI_UIERROR_MISSING_GLYPH:I = 0x10001

.field public static final CONFIRMATIONUI_UNEXPECTED:I = 0x7

.field public static final CONFIRMATIONUI_UNIMPLEMENTED:I = 0x6

.field public static final FLAG_CRITICAL_TO_DEVICE_ENCRYPTION:I = 0x8

.field public static final FLAG_ENCRYPTED:I = 0x1

.field public static final FLAG_NONE:I = 0x0

.field public static final FLAG_SOFTWARE:I = 0x2

.field public static final FLAG_STRONGBOX:I = 0x10

.field public static final HARDWARE_TYPE_UNAVAILABLE:I = -0x44

.field public static final KEY_ALREADY_EXISTS:I = 0x10

.field public static final KEY_NOT_FOUND:I = 0x7

.field public static final KEY_PERMANENTLY_INVALIDATED:I = 0x11

.field public static final LOCKED:I = 0x2

.field public static final NO_ERROR:I = 0x1

.field public static final OP_AUTH_NEEDED:I = 0xf

.field public static final PERMISSION_DENIED:I = 0x6

.field public static final PROTOCOL_ERROR:I = 0x5

.field public static final SYSTEM_ERROR:I = 0x4

.field private static final TAG:Ljava/lang/String; = "KeyStore"

.field public static final UID_SELF:I = -0x1

.field public static final UNDEFINED_ACTION:I = 0x9

.field public static final UNINITIALIZED:I = 0x3

.field public static final VALUE_CORRUPTED:I = 0x8

.field public static final WRONG_PASSWORD:I = 0xa


# instance fields
.field private final mBinder:Landroid/security/keystore/IKeystoreService;

.field private final mContext:Landroid/content/Context;

.field private mError:I

.field private mToken:Landroid/os/IBinder;


# direct methods
.method private constructor <init>(Landroid/security/keystore/IKeystoreService;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/security/KeyStore;->mError:I

    iput-object p1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-static {}, Landroid/security/KeyStore;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/security/KeyStore;->mContext:Landroid/content/Context;

    return-void
.end method

.method private generateKeyInternal(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BIILandroid/security/keymaster/KeyCharacteristics;)I
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    move-object v1, p0

    new-instance v0, Landroid/security/KeyStore$KeyCharacteristicsPromise;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/security/KeyStore$KeyCharacteristicsPromise;-><init>(Landroid/security/KeyStore;Landroid/security/KeyStore$1;)V

    move-object v2, v0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    :try_start_b
    iget-object v0, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v2, v12}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v3, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    move-object v4, v2

    move-object v5, p1

    move-object v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-interface/range {v3 .. v9}, Landroid/security/keystore/IKeystoreService;->generateKey(Landroid/security/keystore/IKeystoreKeyCharacteristicsCallback;Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BII)I

    move-result v0
    :try_end_23
    .catchall {:try_start_b .. :try_end_23} :catchall_9d

    move v10, v0

    const-string v0, "KeyStore"

    const/4 v3, 0x1

    if-eq v10, v3, :cond_48

    :try_start_29
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateKeyInternal failed on request "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_29 .. :try_end_3d} :catchall_9d

    nop

    iget-object v0, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v2, v12}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return v10

    :cond_48
    :try_start_48
    invoke-virtual {v2}, Landroid/security/KeyStore$KeyCharacteristicsPromise;->getFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    invoke-static {v4}, Landroid/security/KeyStore;->interruptedPreservingGet(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/security/KeyStore$KeyCharacteristicsCallbackResult;
    :try_end_52
    .catchall {:try_start_48 .. :try_end_52} :catchall_9d

    iget-object v5, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v5}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v5, v2, v12}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    nop

    invoke-virtual {v4}, Landroid/security/KeyStore$KeyCharacteristicsCallbackResult;->getKeystoreResponse()Landroid/security/keystore/KeystoreResponse;

    move-result-object v5

    invoke-virtual {v5}, Landroid/security/keystore/KeystoreResponse;->getErrorCode()I

    move-result v5

    if-eq v5, v3, :cond_7b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generateKeyInternal failed on response "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_7b
    invoke-virtual {v4}, Landroid/security/KeyStore$KeyCharacteristicsCallbackResult;->getKeyCharacteristics()Landroid/security/keymaster/KeyCharacteristics;

    move-result-object v6

    if-nez v6, :cond_97

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "generateKeyInternal got empty key characteristics "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    return v0

    :cond_97
    move-object/from16 v7, p6

    invoke-virtual {v7, v6}, Landroid/security/keymaster/KeyCharacteristics;->shallowCopyFrom(Landroid/security/keymaster/KeyCharacteristics;)V

    return v3

    :catchall_9d
    move-exception v0

    move-object/from16 v7, p6

    iget-object v3, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v3}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3, v2, v12}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    throw v0
.end method

.method private getAlgorithmFromPKCS8([B)Ljava/lang/String;
    .registers 7

    :try_start_0
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lsun/security/x509/AlgorithmId;

    new-instance v4, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v4, v2}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lsun/security/x509/AlgorithmId;-><init>(Lsun/security/util/ObjectIdentifier;)V

    invoke-virtual {v3}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v3
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2c} :catch_2d

    return-object v3

    :catch_2d
    move-exception v0

    const-string v1, "KeyStore"

    const-string v2, "getAlgorithmFromPKCS8 Failed to parse key data"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .registers 3

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to obtain application Context from ActivityThread"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getInstance()Landroid/security/KeyStore;
    .registers 2

    nop

    const-string v0, "android.security.keystore"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/security/keystore/IKeystoreService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/keystore/IKeystoreService;

    move-result-object v0

    new-instance v1, Landroid/security/KeyStore;

    invoke-direct {v1, v0}, Landroid/security/KeyStore;-><init>(Landroid/security/keystore/IKeystoreService;)V

    return-object v1
.end method

.method public static getKeyStoreException(I)Landroid/security/KeyStoreException;
    .registers 3

    if-lez p0, :cond_72

    const/4 v0, 0x1

    if-eq p0, v0, :cond_6a

    const/4 v0, 0x2

    if-eq p0, v0, :cond_62

    const/4 v0, 0x3

    if-eq p0, v0, :cond_5a

    const/4 v0, 0x4

    if-eq p0, v0, :cond_52

    const/4 v0, 0x6

    if-eq p0, v0, :cond_4a

    const/4 v0, 0x7

    if-eq p0, v0, :cond_42

    const/16 v0, 0x8

    if-eq p0, v0, :cond_3a

    const/16 v0, 0xf

    if-eq p0, v0, :cond_32

    const/16 v0, 0x11

    if-eq p0, v0, :cond_2a

    new-instance v0, Landroid/security/KeyStoreException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_2a
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Key permanently invalidated"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_32
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Operation requires authorization"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_3a
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Key blob corrupted"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_42
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Key not found"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_4a
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Permission denied"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_52
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "System error"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_5a
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Keystore not initialized"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_62
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "User authentication required"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_6a
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "OK"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_72
    const/16 v0, -0x10

    if-eq p0, v0, :cond_80

    new-instance v0, Landroid/security/KeyStoreException;

    invoke-static {p0}, Landroid/security/keymaster/KeymasterDefs;->getErrorMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_80
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Invalid user authentication validity duration"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method private declared-synchronized getToken()Landroid/os/IBinder;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/security/KeyStore;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/security/KeyStore;->mToken:Landroid/os/IBinder;

    :cond_c
    iget-object v0, p0, Landroid/security/KeyStore;->mToken:Landroid/os/IBinder;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private importKeyInternal(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    move-object v1, p0

    new-instance v0, Landroid/security/KeyStore$KeyCharacteristicsPromise;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/security/KeyStore$KeyCharacteristicsPromise;-><init>(Landroid/security/KeyStore;Landroid/security/KeyStore$1;)V

    move-object v2, v0

    iget-object v0, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v11, 0x0

    invoke-interface {v0, v2, v11}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    :try_start_12
    iget-object v3, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    move-object v4, v2

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-interface/range {v3 .. v10}, Landroid/security/keystore/IKeystoreService;->importKey(Landroid/security/keystore/IKeystoreKeyCharacteristicsCallback;Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BII)I

    move-result v0
    :try_end_22
    .catchall {:try_start_12 .. :try_end_22} :catchall_71

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2f

    iget-object v3, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v3}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3, v2, v11}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return v0

    :cond_2f
    :try_start_2f
    invoke-virtual {v2}, Landroid/security/KeyStore$KeyCharacteristicsPromise;->getFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    invoke-static {v4}, Landroid/security/KeyStore;->interruptedPreservingGet(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/security/KeyStore$KeyCharacteristicsCallbackResult;

    invoke-virtual {v4}, Landroid/security/KeyStore$KeyCharacteristicsCallbackResult;->getKeystoreResponse()Landroid/security/keystore/KeystoreResponse;

    move-result-object v5

    invoke-virtual {v5}, Landroid/security/keystore/KeystoreResponse;->getErrorCode()I

    move-result v5
    :try_end_41
    .catchall {:try_start_2f .. :try_end_41} :catchall_71

    move v0, v5

    if-eq v0, v3, :cond_4e

    iget-object v3, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v3}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3, v2, v11}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return v0

    :cond_4e
    :try_start_4e
    invoke-virtual {v4}, Landroid/security/KeyStore$KeyCharacteristicsCallbackResult;->getKeyCharacteristics()Landroid/security/keymaster/KeyCharacteristics;

    move-result-object v5
    :try_end_52
    .catchall {:try_start_4e .. :try_end_52} :catchall_71

    if-nez v5, :cond_5f

    const/4 v3, 0x4

    iget-object v6, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v6}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {v6, v2, v11}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return v3

    :cond_5f
    move-object/from16 v6, p7

    :try_start_61
    invoke-virtual {v6, v5}, Landroid/security/keymaster/KeyCharacteristics;->shallowCopyFrom(Landroid/security/keymaster/KeyCharacteristics;)V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_6f

    nop

    iget-object v7, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v7}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-interface {v7, v2, v11}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return v3

    :catchall_6f
    move-exception v0

    goto :goto_74

    :catchall_71
    move-exception v0

    move-object/from16 v6, p7

    :goto_74
    iget-object v3, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v3}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3, v2, v11}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    throw v0
.end method

.method private importWrappedKeyInternal(Ljava/lang/String;[BLjava/lang/String;[BLandroid/security/keymaster/KeymasterArguments;JJLandroid/security/keymaster/KeyCharacteristics;)I
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    move-object v1, p0

    new-instance v0, Landroid/security/KeyStore$KeyCharacteristicsPromise;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/security/KeyStore$KeyCharacteristicsPromise;-><init>(Landroid/security/KeyStore;Landroid/security/KeyStore$1;)V

    move-object v2, v0

    iget-object v0, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v14, 0x0

    invoke-interface {v0, v2, v14}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    :try_start_12
    iget-object v3, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    move-object v4, v2

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    invoke-interface/range {v3 .. v13}, Landroid/security/keystore/IKeystoreService;->importWrappedKey(Landroid/security/keystore/IKeystoreKeyCharacteristicsCallback;Ljava/lang/String;[BLjava/lang/String;[BLandroid/security/keymaster/KeymasterArguments;JJ)I

    move-result v0
    :try_end_27
    .catchall {:try_start_12 .. :try_end_27} :catchall_76

    const/4 v3, 0x1

    if-eq v0, v3, :cond_34

    iget-object v3, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v3}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3, v2, v14}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return v0

    :cond_34
    :try_start_34
    invoke-virtual {v2}, Landroid/security/KeyStore$KeyCharacteristicsPromise;->getFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    invoke-static {v4}, Landroid/security/KeyStore;->interruptedPreservingGet(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/security/KeyStore$KeyCharacteristicsCallbackResult;

    invoke-virtual {v4}, Landroid/security/KeyStore$KeyCharacteristicsCallbackResult;->getKeystoreResponse()Landroid/security/keystore/KeystoreResponse;

    move-result-object v5

    invoke-virtual {v5}, Landroid/security/keystore/KeystoreResponse;->getErrorCode()I

    move-result v5
    :try_end_46
    .catchall {:try_start_34 .. :try_end_46} :catchall_76

    move v0, v5

    if-eq v0, v3, :cond_53

    iget-object v3, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v3}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3, v2, v14}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return v0

    :cond_53
    :try_start_53
    invoke-virtual {v4}, Landroid/security/KeyStore$KeyCharacteristicsCallbackResult;->getKeyCharacteristics()Landroid/security/keymaster/KeyCharacteristics;

    move-result-object v5
    :try_end_57
    .catchall {:try_start_53 .. :try_end_57} :catchall_76

    if-nez v5, :cond_64

    const/4 v3, 0x4

    iget-object v6, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v6}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {v6, v2, v14}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return v3

    :cond_64
    move-object/from16 v6, p10

    :try_start_66
    invoke-virtual {v6, v5}, Landroid/security/keymaster/KeyCharacteristics;->shallowCopyFrom(Landroid/security/keymaster/KeyCharacteristics;)V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_74

    nop

    iget-object v7, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v7}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-interface {v7, v2, v14}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return v3

    :catchall_74
    move-exception v0

    goto :goto_79

    :catchall_76
    move-exception v0

    move-object/from16 v6, p10

    :goto_79
    iget-object v3, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v3}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3, v2, v14}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    throw v0
.end method

.method private static interruptedPreservingGet(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletableFuture<",
            "TR;>;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    :try_start_1
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v0, :cond_e

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_e} :catch_f

    :cond_e
    return-object v1

    :catch_f
    move-exception v1

    const/4 v0, 0x1

    goto :goto_1
.end method

.method private makeLegacyArguments(Ljava/lang/String;)Landroid/security/keymaster/KeymasterArguments;
    .registers 11

    new-instance v0, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v0}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    nop

    invoke-static {p1}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterAsymmetricKeyAlgorithm(Ljava/lang/String;)I

    move-result v1

    const v2, 0x10000002

    invoke-virtual {v0, v2, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    const v1, 0x20000001

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    const/4 v5, 0x1

    invoke-virtual {v0, v1, v5}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    const v1, 0x20000006

    invoke-virtual {v0, v1, v5}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    const-string v6, "RSA"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x5

    const/4 v8, 0x4

    if-eqz v6, :cond_3f

    invoke-virtual {v0, v1, v2}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    invoke-virtual {v0, v1, v8}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    invoke-virtual {v0, v1, v7}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    invoke-virtual {v0, v1, v3}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    :cond_3f
    const v1, 0x20000005

    invoke-virtual {v0, v1, v4}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    invoke-virtual {v0, v1, v5}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    invoke-virtual {v0, v1, v2}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    invoke-virtual {v0, v1, v3}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    invoke-virtual {v0, v1, v8}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    invoke-virtual {v0, v1, v7}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    const v1, 0x700001f7

    invoke-virtual {v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    const v1, 0x60000191

    new-instance v2, Ljava/util/Date;

    const-wide v3, 0x7fffffffffffffffL

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1, v2}, Landroid/security/keymaster/KeymasterArguments;->addDate(ILjava/util/Date;)V

    const v1, 0x60000192

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1, v2}, Landroid/security/keymaster/KeymasterArguments;->addDate(ILjava/util/Date;)V

    const v1, 0x60000190

    new-instance v2, Ljava/util/Date;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1, v2}, Landroid/security/keymaster/KeymasterArguments;->addDate(ILjava/util/Date;)V

    return-object v0
.end method


# virtual methods
.method public abort(Landroid/os/IBinder;)I
    .registers 8

    const-string v0, "KeyStore"

    new-instance v1, Landroid/security/KeyStore$KeystoreResultPromise;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/security/KeyStore$KeystoreResultPromise;-><init>(Landroid/security/KeyStore;Landroid/security/KeyStore$1;)V

    const/4 v2, 0x4

    const/4 v3, 0x0

    :try_start_a
    iget-object v4, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v4}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v4, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v4, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v4, v1, p1}, Landroid/security/keystore/IKeystoreService;->abort(Landroid/security/keystore/IKeystoreResponseCallback;Landroid/os/IBinder;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_34

    invoke-virtual {v1}, Landroid/security/KeyStore$KeystoreResultPromise;->getFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v5

    invoke-static {v5}, Landroid/security/KeyStore;->interruptedPreservingGet(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/security/keystore/KeystoreResponse;

    invoke-virtual {v5}, Landroid/security/keystore/KeystoreResponse;->getErrorCode()I

    move-result v0
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_2a} :catch_52
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_a .. :try_end_2a} :catch_41
    .catchall {:try_start_a .. :try_end_2a} :catchall_3f

    iget-object v2, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v2}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return v0

    :cond_34
    nop

    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return v4

    :catchall_3f
    move-exception v0

    goto :goto_63

    :catch_41
    move-exception v4

    :try_start_42
    const-string v5, "Abort completed with exception"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_47
    .catchall {:try_start_42 .. :try_end_47} :catchall_3f

    nop

    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return v2

    :catch_52
    move-exception v4

    :try_start_53
    const-string v5, "Cannot connect to keystore"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_58
    .catchall {:try_start_53 .. :try_end_58} :catchall_3f

    nop

    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return v2

    :goto_63
    iget-object v2, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v2}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    throw v0
.end method

.method public addAuthToken([B)I
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0, p1}, Landroid/security/keystore/IKeystoreService;->addAuthToken([B)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x4

    return v1
.end method

.method public addRngEntropy([BI)Z
    .registers 9

    const-string v0, "KeyStore"

    new-instance v1, Landroid/security/KeyStore$KeystoreResultPromise;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/security/KeyStore$KeystoreResultPromise;-><init>(Landroid/security/KeyStore;Landroid/security/KeyStore$1;)V

    const/4 v2, 0x0

    :try_start_9
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v3}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v3, v1, p1, p2}, Landroid/security/keystore/IKeystoreService;->addRngEntropy(Landroid/security/keystore/IKeystoreResponseCallback;[BI)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_37

    invoke-virtual {v1}, Landroid/security/KeyStore$KeystoreResultPromise;->getFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v5

    invoke-static {v5}, Landroid/security/KeyStore;->interruptedPreservingGet(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/security/keystore/KeystoreResponse;

    invoke-virtual {v5}, Landroid/security/keystore/KeystoreResponse;->getErrorCode()I

    move-result v0
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_29} :catch_55
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_9 .. :try_end_29} :catch_44
    .catchall {:try_start_9 .. :try_end_29} :catchall_42

    if-ne v0, v4, :cond_2c

    goto :goto_2d

    :cond_2c
    move v4, v2

    :goto_2d
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return v4

    :cond_37
    nop

    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return v2

    :catchall_42
    move-exception v0

    goto :goto_66

    :catch_44
    move-exception v3

    :try_start_45
    const-string v4, "AddRngEntropy completed with exception"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4a
    .catchall {:try_start_45 .. :try_end_4a} :catchall_42

    nop

    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return v2

    :catch_55
    move-exception v3

    :try_start_56
    const-string v4, "Cannot connect to keystore"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5b
    .catchall {:try_start_56 .. :try_end_5b} :catchall_42

    nop

    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return v2

    :goto_66
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v3}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    throw v0
.end method

.method public attestDeviceIds(Landroid/security/keymaster/KeymasterArguments;Landroid/security/keymaster/KeymasterCertificateChain;)I
    .registers 11

    const-string v0, "KeyStore"

    new-instance v1, Landroid/security/KeyStore$CertificateChainPromise;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/security/KeyStore$CertificateChainPromise;-><init>(Landroid/security/KeyStore;Landroid/security/KeyStore$1;)V

    const/4 v2, 0x4

    const/4 v3, 0x0

    :try_start_a
    iget-object v4, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v4}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v4, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    if-nez p1, :cond_1b

    new-instance v4, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v4}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    move-object p1, v4

    :cond_1b
    if-nez p2, :cond_23

    new-instance v4, Landroid/security/keymaster/KeymasterCertificateChain;

    invoke-direct {v4}, Landroid/security/keymaster/KeymasterCertificateChain;-><init>()V

    move-object p2, v4

    :cond_23
    iget-object v4, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v4, v1, p1}, Landroid/security/keystore/IKeystoreService;->attestDeviceIds(Landroid/security/keystore/IKeystoreCertificateChainCallback;Landroid/security/keymaster/KeymasterArguments;)I

    move-result v4
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_29} :catch_70
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_a .. :try_end_29} :catch_5f
    .catchall {:try_start_a .. :try_end_29} :catchall_5d

    const/4 v5, 0x1

    if-eq v4, v5, :cond_36

    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return v4

    :cond_36
    :try_start_36
    invoke-virtual {v1}, Landroid/security/KeyStore$CertificateChainPromise;->getFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v6

    invoke-static {v6}, Landroid/security/KeyStore;->interruptedPreservingGet(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/security/KeyStore$KeyAttestationCallbackResult;

    invoke-virtual {v6}, Landroid/security/KeyStore$KeyAttestationCallbackResult;->getKeystoreResponse()Landroid/security/keystore/KeystoreResponse;

    move-result-object v7

    invoke-virtual {v7}, Landroid/security/keystore/KeystoreResponse;->getErrorCode()I

    move-result v7

    move v4, v7

    if-ne v4, v5, :cond_52

    invoke-virtual {v6}, Landroid/security/KeyStore$KeyAttestationCallbackResult;->getCertificateChain()Landroid/security/keymaster/KeymasterCertificateChain;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/security/keymaster/KeymasterCertificateChain;->shallowCopyFrom(Landroid/security/keymaster/KeymasterCertificateChain;)V
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_52} :catch_70
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_36 .. :try_end_52} :catch_5f
    .catchall {:try_start_36 .. :try_end_52} :catchall_5d

    :cond_52
    nop

    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return v4

    :catchall_5d
    move-exception v0

    goto :goto_81

    :catch_5f
    move-exception v4

    :try_start_60
    const-string v5, "AttestDevicdeIds completed with exception"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_65
    .catchall {:try_start_60 .. :try_end_65} :catchall_5d

    nop

    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return v2

    :catch_70
    move-exception v4

    :try_start_71
    const-string v5, "Cannot connect to keystore"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_76
    .catchall {:try_start_71 .. :try_end_76} :catchall_5d

    nop

    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return v2

    :goto_81
    iget-object v2, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v2}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    throw v0
.end method

.method public attestKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;Landroid/security/keymaster/KeymasterCertificateChain;)I
    .registers 12

    const-string v0, "KeyStore"

    new-instance v1, Landroid/security/KeyStore$CertificateChainPromise;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/security/KeyStore$CertificateChainPromise;-><init>(Landroid/security/KeyStore;Landroid/security/KeyStore$1;)V

    const/4 v2, 0x4

    const/4 v3, 0x0

    :try_start_a
    iget-object v4, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v4}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v4, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    if-nez p2, :cond_1b

    new-instance v4, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v4}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    move-object p2, v4

    :cond_1b
    if-nez p3, :cond_23

    new-instance v4, Landroid/security/keymaster/KeymasterCertificateChain;

    invoke-direct {v4}, Landroid/security/keymaster/KeymasterCertificateChain;-><init>()V

    move-object p3, v4

    :cond_23
    iget-object v4, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v4, v1, p1, p2}, Landroid/security/keystore/IKeystoreService;->attestKey(Landroid/security/keystore/IKeystoreCertificateChainCallback;Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;)I

    move-result v4
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_29} :catch_70
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_a .. :try_end_29} :catch_5f
    .catchall {:try_start_a .. :try_end_29} :catchall_5d

    const/4 v5, 0x1

    if-eq v4, v5, :cond_36

    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return v4

    :cond_36
    :try_start_36
    invoke-virtual {v1}, Landroid/security/KeyStore$CertificateChainPromise;->getFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v6

    invoke-static {v6}, Landroid/security/KeyStore;->interruptedPreservingGet(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/security/KeyStore$KeyAttestationCallbackResult;

    invoke-virtual {v6}, Landroid/security/KeyStore$KeyAttestationCallbackResult;->getKeystoreResponse()Landroid/security/keystore/KeystoreResponse;

    move-result-object v7

    invoke-virtual {v7}, Landroid/security/keystore/KeystoreResponse;->getErrorCode()I

    move-result v7

    move v4, v7

    if-ne v4, v5, :cond_52

    invoke-virtual {v6}, Landroid/security/KeyStore$KeyAttestationCallbackResult;->getCertificateChain()Landroid/security/keymaster/KeymasterCertificateChain;

    move-result-object v5

    invoke-virtual {p3, v5}, Landroid/security/keymaster/KeymasterCertificateChain;->shallowCopyFrom(Landroid/security/keymaster/KeymasterCertificateChain;)V
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_52} :catch_70
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_36 .. :try_end_52} :catch_5f
    .catchall {:try_start_36 .. :try_end_52} :catchall_5d

    :cond_52
    nop

    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return v4

    :catchall_5d
    move-exception v0

    goto :goto_81

    :catch_5f
    move-exception v4

    :try_start_60
    const-string v5, "AttestKey completed with exception"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_65
    .catchall {:try_start_60 .. :try_end_65} :catchall_5d

    nop

    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return v2

    :catch_70
    move-exception v4

    :try_start_71
    const-string v5, "Cannot connect to keystore"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_76
    .catchall {:try_start_71 .. :try_end_76} :catchall_5d

    nop

    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return v2

    :goto_81
    iget-object v2, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v2}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    throw v0
.end method

.method public begin(Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;
    .registers 14

    if-eqz p5, :cond_4

    move-object v6, p5

    goto :goto_8

    :cond_4
    const/4 v0, 0x0

    new-array v0, v0, [B

    move-object v6, v0

    :goto_8
    if-eqz p4, :cond_c

    move-object v5, p4

    goto :goto_12

    :cond_c
    new-instance p5, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {p5}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    move-object v5, p5

    :goto_12
    const/4 v7, -0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v7}, Landroid/security/KeyStore;->begin(Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[BI)Landroid/security/keymaster/OperationResult;

    move-result-object p4

    return-object p4
.end method

.method public begin(Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[BI)Landroid/security/keymaster/OperationResult;
    .registers 22

    move-object v1, p0

    const-string v2, "KeyStore"

    new-instance v0, Landroid/security/KeyStore$OperationPromise;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Landroid/security/KeyStore$OperationPromise;-><init>(Landroid/security/KeyStore;Landroid/security/KeyStore$1;)V

    move-object v13, v0

    const/4 v14, 0x0

    :try_start_b
    iget-object v0, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v13, v14}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    if-eqz p4, :cond_19

    move-object/from16 v10, p4

    goto :goto_1f

    :cond_19
    new-instance v0, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v0}, Landroid/security/keymaster/KeymasterArguments;-><init>()V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1e} :catch_8b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_b .. :try_end_1e} :catch_76
    .catchall {:try_start_b .. :try_end_1e} :catchall_70

    move-object v10, v0

    :goto_1f
    if-eqz p5, :cond_24

    move-object/from16 v11, p5

    goto :goto_27

    :cond_24
    :try_start_24
    new-array v0, v14, [B
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_26} :catch_6c
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_24 .. :try_end_26} :catch_68
    .catchall {:try_start_24 .. :try_end_26} :catchall_64

    move-object v11, v0

    :goto_27
    :try_start_27
    iget-object v4, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-direct {p0}, Landroid/security/KeyStore;->getToken()Landroid/os/IBinder;

    move-result-object v6

    move-object v5, v13

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v12, p6

    invoke-interface/range {v4 .. v12}, Landroid/security/keystore/IKeystoreService;->begin(Landroid/security/keystore/IKeystoreOperationResultCallback;Landroid/os/IBinder;Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[BI)I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_51

    invoke-virtual {v13}, Landroid/security/KeyStore$OperationPromise;->getFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    invoke-static {v4}, Landroid/security/KeyStore;->interruptedPreservingGet(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/security/keymaster/OperationResult;
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_47} :catch_62
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_27 .. :try_end_47} :catch_60
    .catchall {:try_start_27 .. :try_end_47} :catchall_a0

    iget-object v2, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v2}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, v13, v14}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-object v4

    :cond_51
    :try_start_51
    new-instance v4, Landroid/security/keymaster/OperationResult;

    invoke-direct {v4, v0}, Landroid/security/keymaster/OperationResult;-><init>(I)V
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_56} :catch_62
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_51 .. :try_end_56} :catch_60
    .catchall {:try_start_51 .. :try_end_56} :catchall_a0

    iget-object v2, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v2}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, v13, v14}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-object v4

    :catch_60
    move-exception v0

    goto :goto_7b

    :catch_62
    move-exception v0

    goto :goto_90

    :catchall_64
    move-exception v0

    move-object/from16 v11, p5

    goto :goto_a1

    :catch_68
    move-exception v0

    move-object/from16 v11, p5

    goto :goto_7b

    :catch_6c
    move-exception v0

    move-object/from16 v11, p5

    goto :goto_90

    :catchall_70
    move-exception v0

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    goto :goto_a1

    :catch_76
    move-exception v0

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    :goto_7b
    :try_start_7b
    const-string v4, "Begin completed with exception"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_80
    .catchall {:try_start_7b .. :try_end_80} :catchall_a0

    nop

    iget-object v2, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v2}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, v13, v14}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-object v3

    :catch_8b
    move-exception v0

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    :goto_90
    :try_start_90
    const-string v4, "Cannot connect to keystore"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_95
    .catchall {:try_start_90 .. :try_end_95} :catchall_a0

    nop

    iget-object v2, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v2}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, v13, v14}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-object v3

    :catchall_a0
    move-exception v0

    :goto_a1
    iget-object v2, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v2}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, v13, v14}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    throw v0
.end method

.method public cancelConfirmationPrompt(Landroid/os/IBinder;)I
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0, p1}, Landroid/security/keystore/IKeystoreService;->cancelConfirmationPrompt(Landroid/os/IBinder;)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x5

    return v1
.end method

.method public clearUid(I)Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    int-to-long v2, p1

    invoke-interface {v1, v2, v3}, Landroid/security/keystore/IKeystoreService;->clear_uid(J)I

    move-result v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_d

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    move v0, v2

    :cond_c
    return v0

    :catch_d
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public contains(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/String;I)Z
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/keystore/IKeystoreService;->exist(Ljava/lang/String;I)I

    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_c

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b

    move v0, v2

    :cond_b
    return v0

    :catch_c
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public delete(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public delete(Ljava/lang/String;I)Z
    .registers 6

    invoke-virtual {p0, p1, p2}, Landroid/security/KeyStore;->delete2(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    const/4 v2, 0x7

    if-ne v0, v2, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :cond_c
    :goto_c
    return v1
.end method

.method delete2(Ljava/lang/String;I)I
    .registers 6

    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0, p1, p2}, Landroid/security/keystore/IKeystoreService;->del(Ljava/lang/String;I)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x4

    return v1
.end method

.method public exportKey(Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;)Landroid/security/keymaster/ExportResult;
    .registers 11

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/security/KeyStore;->exportKey(Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;I)Landroid/security/keymaster/ExportResult;

    move-result-object v0

    return-object v0
.end method

.method public exportKey(Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;I)Landroid/security/keymaster/ExportResult;
    .registers 19

    move-object v1, p0

    const-string v2, "KeyStore"

    new-instance v0, Landroid/security/KeyStore$ExportKeyPromise;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Landroid/security/KeyStore$ExportKeyPromise;-><init>(Landroid/security/KeyStore;Landroid/security/KeyStore$1;)V

    move-object v11, v0

    const/4 v12, 0x0

    :try_start_b
    iget-object v0, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v11, v12}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    if-eqz p3, :cond_19

    move-object/from16 v8, p3

    goto :goto_21

    :cond_19
    new-instance v0, Landroid/security/keymaster/KeymasterBlob;

    new-array v4, v12, [B

    invoke-direct {v0, v4}, Landroid/security/keymaster/KeymasterBlob;-><init>([B)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_20} :catch_8a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_b .. :try_end_20} :catch_75
    .catchall {:try_start_b .. :try_end_20} :catchall_6f

    move-object v8, v0

    :goto_21
    if-eqz p4, :cond_26

    move-object/from16 v9, p4

    goto :goto_2e

    :cond_26
    :try_start_26
    new-instance v0, Landroid/security/keymaster/KeymasterBlob;

    new-array v4, v12, [B

    invoke-direct {v0, v4}, Landroid/security/keymaster/KeymasterBlob;-><init>([B)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2d} :catch_6b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_26 .. :try_end_2d} :catch_67
    .catchall {:try_start_26 .. :try_end_2d} :catchall_63

    move-object v9, v0

    :goto_2e
    :try_start_2e
    iget-object v4, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    move-object v5, v11

    move-object v6, p1

    move v7, p2

    move/from16 v10, p5

    invoke-interface/range {v4 .. v10}, Landroid/security/keystore/IKeystoreService;->exportKey(Landroid/security/keystore/IKeystoreExportKeyCallback;Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;I)I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_50

    invoke-virtual {v11}, Landroid/security/KeyStore$ExportKeyPromise;->getFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    invoke-static {v4}, Landroid/security/KeyStore;->interruptedPreservingGet(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/security/keymaster/ExportResult;
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_46} :catch_61
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2e .. :try_end_46} :catch_5f
    .catchall {:try_start_2e .. :try_end_46} :catchall_9f

    iget-object v2, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v2}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, v11, v12}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-object v4

    :cond_50
    :try_start_50
    new-instance v4, Landroid/security/keymaster/ExportResult;

    invoke-direct {v4, v0}, Landroid/security/keymaster/ExportResult;-><init>(I)V
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_55} :catch_61
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_50 .. :try_end_55} :catch_5f
    .catchall {:try_start_50 .. :try_end_55} :catchall_9f

    iget-object v2, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v2}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, v11, v12}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-object v4

    :catch_5f
    move-exception v0

    goto :goto_7a

    :catch_61
    move-exception v0

    goto :goto_8f

    :catchall_63
    move-exception v0

    move-object/from16 v9, p4

    goto :goto_a0

    :catch_67
    move-exception v0

    move-object/from16 v9, p4

    goto :goto_7a

    :catch_6b
    move-exception v0

    move-object/from16 v9, p4

    goto :goto_8f

    :catchall_6f
    move-exception v0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    goto :goto_a0

    :catch_75
    move-exception v0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    :goto_7a
    :try_start_7a
    const-string v4, "ExportKey completed with exception"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7f
    .catchall {:try_start_7a .. :try_end_7f} :catchall_9f

    nop

    iget-object v2, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v2}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, v11, v12}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-object v3

    :catch_8a
    move-exception v0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    :goto_8f
    :try_start_8f
    const-string v4, "Cannot connect to keystore"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_94
    .catchall {:try_start_8f .. :try_end_94} :catchall_9f

    nop

    iget-object v2, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v2}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, v11, v12}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-object v3

    :catchall_9f
    move-exception v0

    :goto_a0
    iget-object v2, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v2}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, v11, v12}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    throw v0
.end method

.method public finish(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;
    .registers 10

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/security/KeyStore;->finish(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B[B[B)Landroid/security/keymaster/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method public finish(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B[B[B)Landroid/security/keymaster/OperationResult;
    .registers 19

    move-object v1, p0

    const-string v2, "KeyStore"

    new-instance v0, Landroid/security/KeyStore$OperationPromise;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Landroid/security/KeyStore$OperationPromise;-><init>(Landroid/security/KeyStore;Landroid/security/KeyStore$1;)V

    move-object v11, v0

    const/4 v12, 0x0

    :try_start_b
    iget-object v0, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v11, v12}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    if-eqz p2, :cond_18

    move-object v7, p2

    goto :goto_1e

    :cond_18
    new-instance v0, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v0}, Landroid/security/keymaster/KeymasterArguments;-><init>()V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1d} :catch_c3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_b .. :try_end_1d} :catch_ab
    .catchall {:try_start_b .. :try_end_1d} :catchall_a2

    move-object v7, v0

    :goto_1e
    if-eqz p5, :cond_23

    move-object/from16 v10, p5

    goto :goto_26

    :cond_23
    :try_start_23
    new-array v0, v12, [B
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_25} :catch_9a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_23 .. :try_end_25} :catch_92
    .catchall {:try_start_23 .. :try_end_25} :catchall_8a

    move-object v10, v0

    :goto_26
    if-eqz p3, :cond_2b

    move-object/from16 v8, p3

    goto :goto_2e

    :cond_2b
    :try_start_2b
    new-array v0, v12, [B
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2d} :catch_84
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2b .. :try_end_2d} :catch_7e
    .catchall {:try_start_2b .. :try_end_2d} :catchall_77

    move-object v8, v0

    :goto_2e
    if-eqz p4, :cond_33

    move-object/from16 v9, p4

    goto :goto_36

    :cond_33
    :try_start_33
    new-array v0, v12, [B
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_35} :catch_72
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_33 .. :try_end_35} :catch_6e
    .catchall {:try_start_33 .. :try_end_35} :catchall_69

    move-object v9, v0

    :goto_36
    :try_start_36
    iget-object v4, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    move-object v5, v11

    move-object v6, p1

    invoke-interface/range {v4 .. v10}, Landroid/security/keystore/IKeystoreService;->finish(Landroid/security/keystore/IKeystoreOperationResultCallback;Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B[B[B)I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_55

    invoke-virtual {v11}, Landroid/security/KeyStore$OperationPromise;->getFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    invoke-static {v4}, Landroid/security/KeyStore;->interruptedPreservingGet(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/security/keymaster/OperationResult;
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_4b} :catch_66
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_36 .. :try_end_4b} :catch_64
    .catchall {:try_start_36 .. :try_end_4b} :catchall_db

    iget-object v2, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v2}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, v11, v12}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-object v4

    :cond_55
    :try_start_55
    new-instance v4, Landroid/security/keymaster/OperationResult;

    invoke-direct {v4, v0}, Landroid/security/keymaster/OperationResult;-><init>(I)V
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_5a} :catch_66
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_55 .. :try_end_5a} :catch_64
    .catchall {:try_start_55 .. :try_end_5a} :catchall_db

    iget-object v2, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v2}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, v11, v12}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-object v4

    :catch_64
    move-exception v0

    goto :goto_b3

    :catch_66
    move-exception v0

    goto/16 :goto_cb

    :catchall_69
    move-exception v0

    move-object/from16 v9, p4

    goto/16 :goto_dc

    :catch_6e
    move-exception v0

    move-object/from16 v9, p4

    goto :goto_b3

    :catch_72
    move-exception v0

    move-object/from16 v9, p4

    goto/16 :goto_cb

    :catchall_77
    move-exception v0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    goto/16 :goto_dc

    :catch_7e
    move-exception v0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    goto :goto_b3

    :catch_84
    move-exception v0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    goto :goto_cb

    :catchall_8a
    move-exception v0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    goto :goto_dc

    :catch_92
    move-exception v0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    goto :goto_b3

    :catch_9a
    move-exception v0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    goto :goto_cb

    :catchall_a2
    move-exception v0

    move-object v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    goto :goto_dc

    :catch_ab
    move-exception v0

    move-object v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    :goto_b3
    :try_start_b3
    const-string v4, "Finish completed with exception"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b8
    .catchall {:try_start_b3 .. :try_end_b8} :catchall_db

    nop

    iget-object v2, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v2}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, v11, v12}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-object v3

    :catch_c3
    move-exception v0

    move-object v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    :goto_cb
    :try_start_cb
    const-string v4, "Cannot connect to keystore"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d0
    .catchall {:try_start_cb .. :try_end_d0} :catchall_db

    nop

    iget-object v2, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v2}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, v11, v12}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-object v3

    :catchall_db
    move-exception v0

    :goto_dc
    iget-object v2, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v2}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, v11, v12}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    throw v0
.end method

.method public generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BIILandroid/security/keymaster/KeyCharacteristics;)I
    .registers 23

    const/4 v1, 0x4

    const-string v2, "KeyStore"

    if-eqz p3, :cond_8

    move-object/from16 v6, p3

    goto :goto_c

    :cond_8
    const/4 v0, 0x0

    :try_start_9
    new-array v0, v0, [B
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_b} :catch_8a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_9 .. :try_end_b} :catch_79

    move-object v6, v0

    :goto_c
    if-eqz p2, :cond_11

    move-object/from16 v5, p2

    goto :goto_17

    :cond_11
    :try_start_11
    new-instance v0, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v0}, Landroid/security/keymaster/KeymasterArguments;-><init>()V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_6f
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_11 .. :try_end_16} :catch_65

    move-object v5, v0

    :goto_17
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    :try_start_21
    invoke-direct/range {v3 .. v9}, Landroid/security/KeyStore;->generateKeyInternal(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v0
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_25} :catch_5d
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_21 .. :try_end_25} :catch_55

    const/16 v3, 0x10

    if-ne v0, v3, :cond_4e

    move-object/from16 v3, p0

    :try_start_2b
    iget-object v4, v3, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2d} :catch_4c
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2b .. :try_end_2d} :catch_4a

    move-object/from16 v14, p1

    move/from16 v15, p4

    :try_start_31
    invoke-interface {v4, v14, v15}, Landroid/security/keystore/IKeystoreService;->del(Ljava/lang/String;I)I

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object v9, v5

    move-object v10, v6

    move/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v13, p6

    invoke-direct/range {v7 .. v13}, Landroid/security/KeyStore;->generateKeyInternal(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v1
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_44} :catch_48
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_31 .. :try_end_44} :catch_46

    move v0, v1

    goto :goto_54

    :catch_46
    move-exception v0

    goto :goto_84

    :catch_48
    move-exception v0

    goto :goto_95

    :catch_4a
    move-exception v0

    goto :goto_58

    :catch_4c
    move-exception v0

    goto :goto_60

    :cond_4e
    move-object/from16 v3, p0

    move-object/from16 v14, p1

    move/from16 v15, p4

    :goto_54
    return v0

    :catch_55
    move-exception v0

    move-object/from16 v3, p0

    :goto_58
    move-object/from16 v14, p1

    move/from16 v15, p4

    goto :goto_84

    :catch_5d
    move-exception v0

    move-object/from16 v3, p0

    :goto_60
    move-object/from16 v14, p1

    move/from16 v15, p4

    goto :goto_95

    :catch_65
    move-exception v0

    move-object/from16 v3, p0

    move-object/from16 v14, p1

    move/from16 v15, p4

    move-object/from16 v5, p2

    goto :goto_84

    :catch_6f
    move-exception v0

    move-object/from16 v3, p0

    move-object/from16 v14, p1

    move/from16 v15, p4

    move-object/from16 v5, p2

    goto :goto_95

    :catch_79
    move-exception v0

    move-object/from16 v3, p0

    move-object/from16 v14, p1

    move/from16 v15, p4

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    :goto_84
    const-string v4, "generateKey completed with exception"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :catch_8a
    move-exception v0

    move-object/from16 v3, p0

    move-object/from16 v14, p1

    move/from16 v15, p4

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    :goto_95
    const-string v4, "Cannot connect to keystore"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BILandroid/security/keymaster/KeyCharacteristics;)I
    .registers 13

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/security/KeyStore;->generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/String;)[B
    .registers 3

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;I)[B
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/security/KeyStore;->get(Ljava/lang/String;IZ)[B

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;IZ)[B
    .registers 9

    const/4 v0, 0x0

    const-string v1, "KeyStore"

    if-eqz p1, :cond_7

    move-object v2, p1

    goto :goto_9

    :cond_7
    :try_start_7
    const-string v2, ""

    :goto_9
    move-object p1, v2

    iget-object v2, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v2, p1, p2}, Landroid/security/keystore/IKeystoreService;->get(Ljava/lang/String;I)[B

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_1f
    .catch Landroid/os/ServiceSpecificException; {:try_start_7 .. :try_end_10} :catch_11

    return-object v0

    :catch_11
    move-exception v2

    if-eqz p3, :cond_19

    iget v3, v2, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_1e

    :cond_19
    const-string v3, "KeyStore exception"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    return-object v0

    :catch_1f
    move-exception v2

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public get(Ljava/lang/String;Z)[B
    .registers 4

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Landroid/security/KeyStore;->get(Ljava/lang/String;IZ)[B

    move-result-object v0

    return-object v0
.end method

.method public getInvalidKeyException(Ljava/lang/String;II)Ljava/security/InvalidKeyException;
    .registers 5

    invoke-static {p3}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/security/KeyStore;->getInvalidKeyException(Ljava/lang/String;ILandroid/security/KeyStoreException;)Ljava/security/InvalidKeyException;

    move-result-object v0

    return-object v0
.end method

.method public getInvalidKeyException(Ljava/lang/String;ILandroid/security/KeyStoreException;)Ljava/security/InvalidKeyException;
    .registers 19

    invoke-virtual/range {p3 .. p3}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_ad

    const/16 v1, 0xf

    if-eq v0, v1, :cond_2b

    packed-switch v0, :pswitch_data_c0

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Keystore operation failed"

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :pswitch_1b
    move-object/from16 v2, p3

    new-instance v0, Landroid/security/keystore/KeyNotYetValidException;

    invoke-direct {v0}, Landroid/security/keystore/KeyNotYetValidException;-><init>()V

    return-object v0

    :pswitch_23
    move-object/from16 v2, p3

    new-instance v0, Landroid/security/keystore/KeyExpiredException;

    invoke-direct {v0}, Landroid/security/keystore/KeyExpiredException;-><init>()V

    return-object v0

    :cond_2b
    :pswitch_2b
    move-object/from16 v2, p3

    new-instance v0, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v0}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    move-object/from16 v4, p1

    move/from16 v7, p2

    move-object v8, v0

    invoke-virtual/range {v3 .. v8}, Landroid/security/KeyStore;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;ILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4d

    new-instance v3, Ljava/security/InvalidKeyException;

    invoke-static {v1}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v4

    const-string v5, "Failed to obtained key characteristics"

    invoke-direct {v3, v5, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3

    :cond_4d
    const v3, -0x5ffffe0a

    invoke-virtual {v0, v3}, Landroid/security/keymaster/KeyCharacteristics;->getUnsignedLongs(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_60

    new-instance v4, Landroid/security/keystore/KeyPermanentlyInvalidatedException;

    invoke-direct {v4}, Landroid/security/keystore/KeyPermanentlyInvalidatedException;-><init>()V

    return-object v4

    :cond_60
    invoke-static {}, Landroid/security/GateKeeper;->getSecureUserId()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_7a

    invoke-static {v4, v5}, Landroid/security/keymaster/KeymasterArguments;->toUint64(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7a

    new-instance v6, Landroid/security/keystore/UserNotAuthenticatedException;

    invoke-direct {v6}, Landroid/security/keystore/UserNotAuthenticatedException;-><init>()V

    return-object v6

    :cond_7a
    move-object v6, p0

    iget-object v7, v6, Landroid/security/KeyStore;->mContext:Landroid/content/Context;

    const-class v8, Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {v7}, Landroid/hardware/biometrics/BiometricManager;->getAuthenticatorIds()[J

    move-result-object v8

    const/4 v9, 0x1

    array-length v10, v8

    const/4 v11, 0x0

    :goto_8c
    if-ge v11, v10, :cond_9f

    aget-wide v12, v8, v11

    invoke-static {v12, v13}, Landroid/security/keymaster/KeymasterArguments;->toUint64(J)Ljava/math/BigInteger;

    move-result-object v14

    invoke-interface {v3, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9c

    const/4 v9, 0x0

    goto :goto_9f

    :cond_9c
    add-int/lit8 v11, v11, 0x1

    goto :goto_8c

    :cond_9f
    :goto_9f
    if-eqz v9, :cond_a7

    new-instance v10, Landroid/security/keystore/UserNotAuthenticatedException;

    invoke-direct {v10}, Landroid/security/keystore/UserNotAuthenticatedException;-><init>()V

    return-object v10

    :cond_a7
    new-instance v10, Landroid/security/keystore/KeyPermanentlyInvalidatedException;

    invoke-direct {v10}, Landroid/security/keystore/KeyPermanentlyInvalidatedException;-><init>()V

    return-object v10

    :cond_ad
    move-object v6, p0

    move-object/from16 v2, p3

    new-instance v0, Landroid/security/keystore/KeyPermanentlyInvalidatedException;

    invoke-direct {v0}, Landroid/security/keystore/KeyPermanentlyInvalidatedException;-><init>()V

    return-object v0

    :cond_b6
    move-object v6, p0

    move-object/from16 v2, p3

    new-instance v0, Landroid/security/keystore/UserNotAuthenticatedException;

    invoke-direct {v0}, Landroid/security/keystore/UserNotAuthenticatedException;-><init>()V

    return-object v0

    nop

    :pswitch_data_c0
    .packed-switch -0x1a
        :pswitch_2b
        :pswitch_23
        :pswitch_1b
    .end packed-switch
.end method

.method public getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;ILandroid/security/keymaster/KeyCharacteristics;)I
    .registers 16

    const-string v0, "KeyStore"

    new-instance v1, Landroid/security/KeyStore$KeyCharacteristicsPromise;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/security/KeyStore$KeyCharacteristicsPromise;-><init>(Landroid/security/KeyStore;Landroid/security/KeyStore$1;)V

    const/4 v2, 0x4

    const/4 v9, 0x0

    :try_start_a
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v3}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3, v1, v9}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    if-eqz p2, :cond_17

    move-object v6, p2

    goto :goto_1f

    :cond_17
    new-instance v3, Landroid/security/keymaster/KeymasterBlob;

    new-array v4, v9, [B

    invoke-direct {v3, v4}, Landroid/security/keymaster/KeymasterBlob;-><init>([B)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1e} :catch_a2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_a .. :try_end_1e} :catch_8f
    .catchall {:try_start_a .. :try_end_1e} :catchall_8b

    move-object v6, v3

    :goto_1f
    if-eqz p3, :cond_23

    move-object v7, p3

    goto :goto_2b

    :cond_23
    :try_start_23
    new-instance p2, Landroid/security/keymaster/KeymasterBlob;

    new-array v3, v9, [B

    invoke-direct {p2, v3}, Landroid/security/keymaster/KeymasterBlob;-><init>([B)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_2a} :catch_89
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_23 .. :try_end_2a} :catch_87
    .catchall {:try_start_23 .. :try_end_2a} :catchall_b5

    move-object v7, p2

    :goto_2b
    :try_start_2b
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    move-object v4, v1

    move-object v5, p1

    move v8, p4

    invoke-interface/range {v3 .. v8}, Landroid/security/keystore/IKeystoreService;->getKeyCharacteristics(Landroid/security/keystore/IKeystoreKeyCharacteristicsCallback;Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;I)I

    move-result p2
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_34} :catch_84
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2b .. :try_end_34} :catch_81
    .catchall {:try_start_2b .. :try_end_34} :catchall_7e

    const/4 p3, 0x1

    if-eq p2, p3, :cond_41

    iget-object p3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {p3}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-interface {p3, v1, v9}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return p2

    :cond_41
    :try_start_41
    invoke-virtual {v1}, Landroid/security/KeyStore$KeyCharacteristicsPromise;->getFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    invoke-static {v3}, Landroid/security/KeyStore;->interruptedPreservingGet(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/security/KeyStore$KeyCharacteristicsCallbackResult;

    invoke-virtual {v3}, Landroid/security/KeyStore$KeyCharacteristicsCallbackResult;->getKeystoreResponse()Landroid/security/keystore/KeystoreResponse;

    move-result-object v4

    invoke-virtual {v4}, Landroid/security/keystore/KeystoreResponse;->getErrorCode()I

    move-result v4
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_53} :catch_84
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_41 .. :try_end_53} :catch_81
    .catchall {:try_start_41 .. :try_end_53} :catchall_7e

    move p2, v4

    if-eq p2, p3, :cond_60

    iget-object p3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {p3}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-interface {p3, v1, v9}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return p2

    :cond_60
    :try_start_60
    invoke-virtual {v3}, Landroid/security/KeyStore$KeyCharacteristicsCallbackResult;->getKeyCharacteristics()Landroid/security/keymaster/KeyCharacteristics;

    move-result-object v4
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_64} :catch_84
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_60 .. :try_end_64} :catch_81
    .catchall {:try_start_60 .. :try_end_64} :catchall_7e

    if-nez v4, :cond_70

    iget-object p3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {p3}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-interface {p3, v1, v9}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return v2

    :cond_70
    :try_start_70
    invoke-virtual {p5, v4}, Landroid/security/keymaster/KeyCharacteristics;->shallowCopyFrom(Landroid/security/keymaster/KeyCharacteristics;)V
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_70 .. :try_end_73} :catch_84
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_70 .. :try_end_73} :catch_81
    .catchall {:try_start_70 .. :try_end_73} :catchall_7e

    nop

    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v1, v9}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return p3

    :catchall_7e
    move-exception p2

    move-object p3, v7

    goto :goto_b6

    :catch_81
    move-exception p2

    move-object p3, v7

    goto :goto_92

    :catch_84
    move-exception p2

    move-object p3, v7

    goto :goto_a5

    :catch_87
    move-exception p2

    goto :goto_92

    :catch_89
    move-exception p2

    goto :goto_a5

    :catchall_8b
    move-exception v0

    move-object v6, p2

    move-object p2, v0

    goto :goto_b6

    :catch_8f
    move-exception v3

    move-object v6, p2

    move-object p2, v3

    :goto_92
    :try_start_92
    const-string v3, "GetKeyCharacteristics completed with exception"

    invoke-static {v0, v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_97
    .catchall {:try_start_92 .. :try_end_97} :catchall_b5

    nop

    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v1, v9}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return v2

    :catch_a2
    move-exception v3

    move-object v6, p2

    move-object p2, v3

    :goto_a5
    :try_start_a5
    const-string v3, "Cannot connect to keystore"

    invoke-static {v0, v3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_aa
    .catchall {:try_start_a5 .. :try_end_aa} :catchall_b5

    nop

    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v1, v9}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return v2

    :catchall_b5
    move-exception p2

    :goto_b6
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v1, v9}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    throw p2
.end method

.method public getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeyCharacteristics;)I
    .registers 11

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/security/KeyStore;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;ILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v0

    return v0
.end method

.method public getLastError()I
    .registers 2

    iget v0, p0, Landroid/security/KeyStore;->mError:I

    return v0
.end method

.method public getmtime(Ljava/lang/String;)J
    .registers 4

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->getmtime(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getmtime(Ljava/lang/String;I)J
    .registers 8

    const-wide/16 v0, -0x1

    :try_start_2
    iget-object v2, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v2, p1, p2}, Landroid/security/keystore/IKeystoreService;->getmtime(Ljava/lang/String;I)J

    move-result-wide v2
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_8} :catch_11

    cmp-long v4, v2, v0

    if-nez v4, :cond_d

    return-wide v0

    :cond_d
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0

    :catch_11
    move-exception v2

    const-string v3, "KeyStore"

    const-string v4, "Cannot connect to keystore"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-wide v0
.end method

.method public grant(Ljava/lang/String;I)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/keystore/IKeystoreService;->grant(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_d

    if-ne v1, v2, :cond_c

    return-object v0

    :cond_c
    return-object v1

    :catch_d
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I
    .registers 12

    const-string v0, "KeyStore"

    const/4 v1, 0x4

    :try_start_3
    invoke-direct/range {p0 .. p7}, Landroid/security/KeyStore;->importKeyInternal(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_15

    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v3, p1, p5}, Landroid/security/keystore/IKeystoreService;->del(Ljava/lang/String;I)I

    invoke-direct/range {p0 .. p7}, Landroid/security/KeyStore;->importKeyInternal(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_14} :catch_1d
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_14} :catch_16

    move v2, v0

    :cond_15
    return v2

    :catch_16
    move-exception v2

    const-string v3, "ImportKey completed with exception"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :catch_1d
    move-exception v2

    const-string v3, "Cannot connect to keystore"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BILandroid/security/keymaster/KeyCharacteristics;)I
    .registers 15

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v0

    return v0
.end method

.method public importKey(Ljava/lang/String;[BII)Z
    .registers 16

    invoke-direct {p0, p2}, Landroid/security/KeyStore;->getAlgorithmFromPKCS8([B)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-direct {p0, v0}, Landroid/security/KeyStore;->makeLegacyArguments(Ljava/lang/String;)Landroid/security/keymaster/KeymasterArguments;

    move-result-object v10

    new-instance v9, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v9}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    const/4 v5, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, v10

    move-object v6, p2

    move v7, p3

    move v8, p4

    invoke-virtual/range {v2 .. v9}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_30

    new-instance v3, Landroid/security/KeyStoreException;

    const-string v4, "legacy key import failed"

    invoke-direct {v3, v2, v4}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "KeyStore"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_30
    return v3
.end method

.method public importWrappedKey(Ljava/lang/String;[BLjava/lang/String;[BLandroid/security/keymaster/KeymasterArguments;JJILandroid/security/keymaster/KeyCharacteristics;)I
    .registers 28

    const-string v1, "KeyStore"

    const/4 v2, 0x4

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-wide/from16 v9, p6

    move-wide/from16 v11, p8

    move-object/from16 v13, p11

    :try_start_15
    invoke-direct/range {v3 .. v13}, Landroid/security/KeyStore;->importWrappedKeyInternal(Ljava/lang/String;[BLjava/lang/String;[BLandroid/security/keymaster/KeymasterArguments;JJLandroid/security/keymaster/KeyCharacteristics;)I

    move-result v0
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_19} :catch_57
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_15 .. :try_end_19} :catch_4c

    const/16 v3, 0x10

    if-ne v0, v3, :cond_47

    move-object/from16 v3, p0

    :try_start_1f
    iget-object v4, v3, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_21} :catch_45
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1f .. :try_end_21} :catch_43

    const/4 v5, -0x1

    move-object/from16 v15, p1

    :try_start_24
    invoke-interface {v4, v15, v5}, Landroid/security/keystore/IKeystoreService;->del(Ljava/lang/String;I)I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    move-object/from16 v14, p11

    invoke-direct/range {v4 .. v14}, Landroid/security/KeyStore;->importWrappedKeyInternal(Ljava/lang/String;[BLjava/lang/String;[BLandroid/security/keymaster/KeymasterArguments;JJLandroid/security/keymaster/KeyCharacteristics;)I

    move-result v1
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_3d} :catch_41
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_24 .. :try_end_3d} :catch_3f

    move v0, v1

    goto :goto_4b

    :catch_3f
    move-exception v0

    goto :goto_51

    :catch_41
    move-exception v0

    goto :goto_5c

    :catch_43
    move-exception v0

    goto :goto_4f

    :catch_45
    move-exception v0

    goto :goto_5a

    :cond_47
    move-object/from16 v3, p0

    move-object/from16 v15, p1

    :goto_4b
    return v0

    :catch_4c
    move-exception v0

    move-object/from16 v3, p0

    :goto_4f
    move-object/from16 v15, p1

    :goto_51
    const-string v4, "ImportWrappedKey completed with exception"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2

    :catch_57
    move-exception v0

    move-object/from16 v3, p0

    :goto_5a
    move-object/from16 v15, p1

    :goto_5c
    const-string v4, "Cannot connect to keystore"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method public insert(Ljava/lang/String;[BII)I
    .registers 8

    if-nez p2, :cond_6

    const/4 v0, 0x0

    :try_start_3
    new-array v0, v0, [B

    move-object p2, v0

    :cond_6
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/security/keystore/IKeystoreService;->insert(Ljava/lang/String;[BII)I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1c

    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v1, p1, p3}, Landroid/security/keystore/IKeystoreService;->del(Ljava/lang/String;I)I

    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/security/keystore/IKeystoreService;->insert(Ljava/lang/String;[BII)I

    move-result v1
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1b} :catch_1d

    move v0, v1

    :cond_1c
    return v0

    :catch_1d
    move-exception v0

    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x4

    return v1
.end method

.method public isConfirmationPromptSupported()Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->isConfirmationPromptSupported()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public isEmpty()Z
    .registers 2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/security/KeyStore;->isEmpty(I)Z

    move-result v0

    return v0
.end method

.method public isEmpty(I)Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v1, p1}, Landroid/security/keystore/IKeystoreService;->isEmpty(I)I

    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_b

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0

    :catch_b
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public isHardwareBacked()Z
    .registers 2

    const-string v0, "RSA"

    invoke-virtual {p0, v0}, Landroid/security/KeyStore;->isHardwareBacked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isHardwareBacked(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/security/keystore/IKeystoreService;->is_hardware_backed(Ljava/lang/String;)I

    move-result v1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_12

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    move v0, v2

    :cond_11
    return v0

    :catch_12
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public isUnlocked()Z
    .registers 3

    invoke-virtual {p0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public list(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public list(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 7

    const-string v0, "KeyStore"

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v2, p1, p2}, Landroid/security/keystore/IKeystoreService;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_9} :catch_11
    .catch Landroid/os/ServiceSpecificException; {:try_start_3 .. :try_end_9} :catch_a

    return-object v0

    :catch_a
    move-exception v2

    const-string v3, "KeyStore exception"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :catch_11
    move-exception v2

    const-string v3, "Cannot connect to keystore"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public listUidsOfAuthBoundKeys()[I
    .registers 9

    const-string v0, "KeyStore"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :try_start_8
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v3, v1}, Landroid/security/keystore/IKeystoreService;->listUidsOfAuthBoundKeys(Ljava/util/List;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_24

    const-string v5, "listUidsOfAuthBoundKeys failed with error code %d"

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_23} :catch_3b
    .catch Landroid/os/ServiceSpecificException; {:try_start_8 .. :try_end_23} :catch_34

    return-object v2

    :cond_24
    nop

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v2, Landroid/security/-$$Lambda$wddj3-hVVrg0MkscpMtYt3BzY8Y;->INSTANCE:Landroid/security/-$$Lambda$wddj3-hVVrg0MkscpMtYt3BzY8Y;

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    return-object v0

    :catch_34
    move-exception v3

    const-string v4, "KeyStore exception"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    :catch_3b
    move-exception v3

    const-string v4, "Cannot connect to keystore"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method public lock()Z
    .registers 2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/security/KeyStore;->lock(I)Z

    move-result v0

    return v0
.end method

.method public lock(I)Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v1, p1}, Landroid/security/keystore/IKeystoreService;->lock(I)I

    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_c

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b

    move v0, v2

    :cond_b
    return v0

    :catch_c
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public onDeviceOffBody()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->onDeviceOffBody()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public onUserAdded(I)V
    .registers 3

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->onUserAdded(II)V

    return-void
.end method

.method public onUserAdded(II)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0, p1, p2}, Landroid/security/keystore/IKeystoreService;->onUserAdded(II)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public onUserLockedStateChanged(IZ)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0, p2, p1}, Landroid/security/keystore/IKeystoreService;->onKeyguardVisibilityChanged(ZI)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_1d

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to update user locked state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyStore"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1d
    return-void
.end method

.method public onUserPasswordChanged(ILjava/lang/String;)Z
    .registers 7

    if-nez p2, :cond_4

    const-string p2, ""

    :cond_4
    const/4 v0, 0x0

    :try_start_5
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/keystore/IKeystoreService;->onUserPasswordChanged(ILjava/lang/String;)I

    move-result v1
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_b} :catch_10

    const/4 v2, 0x1

    if-ne v1, v2, :cond_f

    move v0, v2

    :cond_f
    return v0

    :catch_10
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public onUserPasswordChanged(Ljava/lang/String;)Z
    .registers 3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/security/KeyStore;->onUserPasswordChanged(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onUserRemoved(I)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0, p1}, Landroid/security/keystore/IKeystoreService;->onUserRemoved(I)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public presentConfirmationPrompt(Landroid/os/IBinder;Ljava/lang/String;[BLjava/lang/String;I)I
    .registers 12

    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/security/keystore/IKeystoreService;->presentConfirmationPrompt(Landroid/os/IBinder;Ljava/lang/String;[BLjava/lang/String;I)I

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    return v0

    :catch_c
    move-exception v0

    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x5

    return v1
.end method

.method public put(Ljava/lang/String;[BII)Z
    .registers 7

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/security/KeyStore;->insert(Ljava/lang/String;[BII)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public state()Landroid/security/KeyStore$State;
    .registers 2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/security/KeyStore;->state(I)Landroid/security/KeyStore$State;

    move-result-object v0

    return-object v0
.end method

.method public state(I)Landroid/security/KeyStore$State;
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0, p1}, Landroid/security/keystore/IKeystoreService;->getState(I)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_21

    nop

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1b

    const/4 v1, 0x3

    if-ne v0, v1, :cond_13

    sget-object v1, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    return-object v1

    :cond_13
    new-instance v1, Ljava/lang/AssertionError;

    iget v2, p0, Landroid/security/KeyStore;->mError:I

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    :cond_1b
    sget-object v1, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    return-object v1

    :cond_1e
    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    return-object v1

    :catch_21
    move-exception v0

    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public ungrant(Ljava/lang/String;I)Z
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/keystore/IKeystoreService;->ungrant(Ljava/lang/String;I)I

    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_c

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b

    move v0, v2

    :cond_b
    return v0

    :catch_c
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public unlock(ILjava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    move-object v1, p2

    goto :goto_7

    :cond_5
    :try_start_5
    const-string v1, ""

    :goto_7
    move-object p2, v1

    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/keystore/IKeystoreService;->unlock(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/security/KeyStore;->mError:I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_10} :catch_15

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    move v0, v2

    :cond_14
    return v0

    :catch_15
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public unlock(Ljava/lang/String;)Z
    .registers 3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/security/KeyStore;->unlock(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public update(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;
    .registers 10

    const-string v0, "KeyStore"

    new-instance v1, Landroid/security/KeyStore$OperationPromise;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/security/KeyStore$OperationPromise;-><init>(Landroid/security/KeyStore;Landroid/security/KeyStore$1;)V

    const/4 v3, 0x0

    :try_start_9
    iget-object v4, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v4}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v4, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    if-eqz p2, :cond_16

    move-object v4, p2

    goto :goto_1b

    :cond_16
    new-instance v4, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v4}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    :goto_1b
    move-object p2, v4

    if-eqz p3, :cond_20

    move-object v4, p3

    goto :goto_22

    :cond_20
    new-array v4, v3, [B

    :goto_22
    move-object p3, v4

    iget-object v4, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v4, v1, p1, p2, p3}, Landroid/security/keystore/IKeystoreService;->update(Landroid/security/keystore/IKeystoreOperationResultCallback;Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_40

    invoke-virtual {v1}, Landroid/security/KeyStore$OperationPromise;->getFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v5

    invoke-static {v5}, Landroid/security/KeyStore;->interruptedPreservingGet(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/security/keymaster/OperationResult;
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_36} :catch_62
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_9 .. :try_end_36} :catch_51
    .catchall {:try_start_9 .. :try_end_36} :catchall_4f

    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-object v5

    :cond_40
    :try_start_40
    new-instance v5, Landroid/security/keymaster/OperationResult;

    invoke-direct {v5, v4}, Landroid/security/keymaster/OperationResult;-><init>(I)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_45} :catch_62
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_40 .. :try_end_45} :catch_51
    .catchall {:try_start_40 .. :try_end_45} :catchall_4f

    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-object v5

    :catchall_4f
    move-exception v0

    goto :goto_73

    :catch_51
    move-exception v4

    :try_start_52
    const-string v5, "Update completed with exception"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_57
    .catchall {:try_start_52 .. :try_end_57} :catchall_4f

    nop

    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-object v2

    :catch_62
    move-exception v4

    :try_start_63
    const-string v5, "Cannot connect to keystore"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_68
    .catchall {:try_start_63 .. :try_end_68} :catchall_4f

    nop

    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-object v2

    :goto_73
    iget-object v2, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v2}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    throw v0
.end method
