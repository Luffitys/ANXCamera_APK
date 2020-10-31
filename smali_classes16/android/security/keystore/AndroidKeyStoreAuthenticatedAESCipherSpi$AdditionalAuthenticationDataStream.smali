.class Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$AdditionalAuthenticationDataStream;
.super Ljava/lang/Object;
.source "AndroidKeyStoreAuthenticatedAESCipherSpi.java"

# interfaces
.implements Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdditionalAuthenticationDataStream"
.end annotation


# instance fields
.field private final mKeyStore:Landroid/security/KeyStore;

.field private final mOperationToken:Landroid/os/IBinder;


# direct methods
.method private constructor <init>(Landroid/security/KeyStore;Landroid/os/IBinder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$AdditionalAuthenticationDataStream;->mKeyStore:Landroid/security/KeyStore;

    iput-object p2, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$AdditionalAuthenticationDataStream;->mOperationToken:Landroid/os/IBinder;

    return-void
.end method

.method synthetic constructor <init>(Landroid/security/KeyStore;Landroid/os/IBinder;Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$AdditionalAuthenticationDataStream;-><init>(Landroid/security/KeyStore;Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public finish([B[B[B)Landroid/security/keymaster/OperationResult;
    .registers 14

    if-eqz p3, :cond_e

    array-length v0, p3

    if-gtz v0, :cond_6

    goto :goto_e

    :cond_6
    new-instance v0, Ljava/security/ProviderException;

    const-string v1, "AAD stream does not support additional entropy"

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    :goto_e
    new-instance v0, Landroid/security/keymaster/OperationResult;

    const/4 v3, 0x1

    iget-object v4, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$AdditionalAuthenticationDataStream;->mOperationToken:Landroid/os/IBinder;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    sget-object v8, Llibcore/util/EmptyArray;->BYTE:[B

    new-instance v9, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v9}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Landroid/security/keymaster/OperationResult;-><init>(ILandroid/os/IBinder;JI[BLandroid/security/keymaster/KeymasterArguments;)V

    return-object v0
.end method

.method public update([B)Landroid/security/keymaster/OperationResult;
    .registers 14

    new-instance v0, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v0}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    const v1, -0x6ffffc18

    invoke-virtual {v0, v1, p1}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$AdditionalAuthenticationDataStream;->mKeyStore:Landroid/security/KeyStore;

    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$AdditionalAuthenticationDataStream;->mOperationToken:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/security/KeyStore;->update(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;

    move-result-object v1

    iget v2, v1, Landroid/security/keymaster/OperationResult;->resultCode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2b

    new-instance v2, Landroid/security/keymaster/OperationResult;

    iget v5, v1, Landroid/security/keymaster/OperationResult;->resultCode:I

    iget-object v6, v1, Landroid/security/keymaster/OperationResult;->token:Landroid/os/IBinder;

    iget-wide v7, v1, Landroid/security/keymaster/OperationResult;->operationHandle:J

    array-length v9, p1

    iget-object v10, v1, Landroid/security/keymaster/OperationResult;->output:[B

    iget-object v11, v1, Landroid/security/keymaster/OperationResult;->outParams:Landroid/security/keymaster/KeymasterArguments;

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Landroid/security/keymaster/OperationResult;-><init>(ILandroid/os/IBinder;JI[BLandroid/security/keymaster/KeymasterArguments;)V

    move-object v1, v2

    :cond_2b
    return-object v1
.end method
