.class Landroid/security/KeyStore$ExportKeyPromise;
.super Landroid/security/keystore/IKeystoreExportKeyCallback$Stub;
.source "KeyStore.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/KeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExportKeyPromise"
.end annotation


# instance fields
.field private final future:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Landroid/security/keymaster/ExportResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/security/KeyStore;


# direct methods
.method private constructor <init>(Landroid/security/KeyStore;)V
    .registers 2

    iput-object p1, p0, Landroid/security/KeyStore$ExportKeyPromise;->this$0:Landroid/security/KeyStore;

    invoke-direct {p0}, Landroid/security/keystore/IKeystoreExportKeyCallback$Stub;-><init>()V

    new-instance p1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object p1, p0, Landroid/security/KeyStore$ExportKeyPromise;->future:Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method synthetic constructor <init>(Landroid/security/KeyStore;Landroid/security/KeyStore$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/security/KeyStore$ExportKeyPromise;-><init>(Landroid/security/KeyStore;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    iget-object v0, p0, Landroid/security/KeyStore$ExportKeyPromise;->future:Ljava/util/concurrent/CompletableFuture;

    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "Keystore died"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final getFuture()Ljava/util/concurrent/CompletableFuture;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "Landroid/security/keymaster/ExportResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/security/KeyStore$ExportKeyPromise;->future:Ljava/util/concurrent/CompletableFuture;

    return-object v0
.end method

.method public onFinished(Landroid/security/keymaster/ExportResult;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/security/KeyStore$ExportKeyPromise;->future:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method
