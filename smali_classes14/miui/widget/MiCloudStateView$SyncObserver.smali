.class Lmiui/widget/MiCloudStateView$SyncObserver;
.super Ljava/lang/Object;
.source "MiCloudStateView.java"

# interfaces
.implements Landroid/content/SyncStatusObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/MiCloudStateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SyncObserver"
.end annotation


# instance fields
.field mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiui/widget/MiCloudStateView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lmiui/widget/MiCloudStateView;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/widget/MiCloudStateView$SyncObserver;->mView:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .registers 4

    iget-object v0, p0, Lmiui/widget/MiCloudStateView$SyncObserver;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/widget/MiCloudStateView;

    if-eqz v0, :cond_e

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/widget/MiCloudStateView;->updateState(Z)V

    :cond_e
    return-void
.end method
