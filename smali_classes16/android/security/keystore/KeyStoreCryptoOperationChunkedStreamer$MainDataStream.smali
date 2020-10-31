.class public Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;
.super Ljava/lang/Object;
.source "KeyStoreCryptoOperationChunkedStreamer.java"

# interfaces
.implements Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MainDataStream"
.end annotation


# instance fields
.field private final mKeyStore:Landroid/security/KeyStore;

.field private final mOperationToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/security/KeyStore;Landroid/os/IBinder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;->mKeyStore:Landroid/security/KeyStore;

    iput-object p2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;->mOperationToken:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public finish([B[B[B)Landroid/security/keymaster/OperationResult;
    .registers 10

    iget-object v0, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;->mKeyStore:Landroid/security/KeyStore;

    iget-object v1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;->mOperationToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/security/KeyStore;->finish(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B[B[B)Landroid/security/keymaster/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method public update([B)Landroid/security/keymaster/OperationResult;
    .registers 5

    iget-object v0, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;->mKeyStore:Landroid/security/KeyStore;

    iget-object v1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;->mOperationToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/security/KeyStore;->update(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;

    move-result-object v0

    return-object v0
.end method
