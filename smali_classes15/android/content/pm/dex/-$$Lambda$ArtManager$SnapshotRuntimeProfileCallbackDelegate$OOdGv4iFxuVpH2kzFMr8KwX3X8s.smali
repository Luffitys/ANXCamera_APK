.class public final synthetic Landroid/content/pm/dex/-$$Lambda$ArtManager$SnapshotRuntimeProfileCallbackDelegate$OOdGv4iFxuVpH2kzFMr8KwX3X8s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallbackDelegate;

.field public final synthetic f$1:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallbackDelegate;Landroid/os/ParcelFileDescriptor;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/dex/-$$Lambda$ArtManager$SnapshotRuntimeProfileCallbackDelegate$OOdGv4iFxuVpH2kzFMr8KwX3X8s;->f$0:Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallbackDelegate;

    iput-object p2, p0, Landroid/content/pm/dex/-$$Lambda$ArtManager$SnapshotRuntimeProfileCallbackDelegate$OOdGv4iFxuVpH2kzFMr8KwX3X8s;->f$1:Landroid/os/ParcelFileDescriptor;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/content/pm/dex/-$$Lambda$ArtManager$SnapshotRuntimeProfileCallbackDelegate$OOdGv4iFxuVpH2kzFMr8KwX3X8s;->f$0:Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallbackDelegate;

    iget-object v1, p0, Landroid/content/pm/dex/-$$Lambda$ArtManager$SnapshotRuntimeProfileCallbackDelegate$OOdGv4iFxuVpH2kzFMr8KwX3X8s;->f$1:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0, v1}, Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallbackDelegate;->lambda$onSuccess$0$ArtManager$SnapshotRuntimeProfileCallbackDelegate(Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method
