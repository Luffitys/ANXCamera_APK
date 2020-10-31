.class Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallbackDelegate;
.super Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback$Stub;
.source "ArtManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/dex/ArtManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SnapshotRuntimeProfileCallbackDelegate"
.end annotation


# instance fields
.field private final mCallback:Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallback;

.field private final mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method private constructor <init>(Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallback;Ljava/util/concurrent/Executor;)V
    .registers 3

    invoke-direct {p0}, Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback$Stub;-><init>()V

    iput-object p1, p0, Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallbackDelegate;->mCallback:Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallback;

    iput-object p2, p0, Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallbackDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallback;Ljava/util/concurrent/Executor;Landroid/content/pm/dex/ArtManager$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallbackDelegate;-><init>(Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onError$1$ArtManager$SnapshotRuntimeProfileCallbackDelegate(I)V
    .registers 3

    iget-object v0, p0, Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallbackDelegate;->mCallback:Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallback;

    invoke-virtual {v0, p1}, Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallback;->onError(I)V

    return-void
.end method

.method public synthetic lambda$onSuccess$0$ArtManager$SnapshotRuntimeProfileCallbackDelegate(Landroid/os/ParcelFileDescriptor;)V
    .registers 3

    iget-object v0, p0, Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallbackDelegate;->mCallback:Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallback;

    invoke-virtual {v0, p1}, Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallback;->onSuccess(Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method public onError(I)V
    .registers 4

    iget-object v0, p0, Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallbackDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/content/pm/dex/-$$Lambda$ArtManager$SnapshotRuntimeProfileCallbackDelegate$m2Wpsf6LxhWt_1tS6tQt3B8QcGo;

    invoke-direct {v1, p0, p1}, Landroid/content/pm/dex/-$$Lambda$ArtManager$SnapshotRuntimeProfileCallbackDelegate$m2Wpsf6LxhWt_1tS6tQt3B8QcGo;-><init>(Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallbackDelegate;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess(Landroid/os/ParcelFileDescriptor;)V
    .registers 4

    iget-object v0, p0, Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallbackDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/content/pm/dex/-$$Lambda$ArtManager$SnapshotRuntimeProfileCallbackDelegate$OOdGv4iFxuVpH2kzFMr8KwX3X8s;

    invoke-direct {v1, p0, p1}, Landroid/content/pm/dex/-$$Lambda$ArtManager$SnapshotRuntimeProfileCallbackDelegate$OOdGv4iFxuVpH2kzFMr8KwX3X8s;-><init>(Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallbackDelegate;Landroid/os/ParcelFileDescriptor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
