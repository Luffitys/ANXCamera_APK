.class Lmiui/app/ToggleManager$20;
.super Ljava/lang/Object;
.source "ToggleManager.java"

# interfaces
.implements Landroid/content/SyncStatusObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/ToggleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/ToggleManager;


# direct methods
.method constructor <init>(Lmiui/app/ToggleManager;)V
    .registers 2

    iput-object p1, p0, Lmiui/app/ToggleManager$20;->this$0:Lmiui/app/ToggleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .registers 6

    iget-object v0, p0, Lmiui/app/ToggleManager$20;->this$0:Lmiui/app/ToggleManager;

    # getter for: Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lmiui/app/ToggleManager;->access$600(Lmiui/app/ToggleManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/app/ToggleManager$20;->this$0:Lmiui/app/ToggleManager;

    # getter for: Lmiui/app/ToggleManager;->mUpdateSyncStateRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lmiui/app/ToggleManager;->access$3300(Lmiui/app/ToggleManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lmiui/app/ToggleManager$20;->this$0:Lmiui/app/ToggleManager;

    # getter for: Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lmiui/app/ToggleManager;->access$600(Lmiui/app/ToggleManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/app/ToggleManager$20;->this$0:Lmiui/app/ToggleManager;

    # getter for: Lmiui/app/ToggleManager;->mUpdateSyncStateRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lmiui/app/ToggleManager;->access$3300(Lmiui/app/ToggleManager;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
