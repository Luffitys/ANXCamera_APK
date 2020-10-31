.class Lmiui/view/VolumeDialog$SafetyWarningDialog$2;
.super Ljava/lang/Object;
.source "VolumeDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/VolumeDialog$SafetyWarningDialog;-><init>(Lmiui/view/VolumeDialog;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/view/VolumeDialog$SafetyWarningDialog;

.field final synthetic val$this$0:Lmiui/view/VolumeDialog;


# direct methods
.method constructor <init>(Lmiui/view/VolumeDialog$SafetyWarningDialog;Lmiui/view/VolumeDialog;)V
    .registers 3

    iput-object p1, p0, Lmiui/view/VolumeDialog$SafetyWarningDialog$2;->this$1:Lmiui/view/VolumeDialog$SafetyWarningDialog;

    iput-object p2, p0, Lmiui/view/VolumeDialog$SafetyWarningDialog$2;->val$this$0:Lmiui/view/VolumeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 5

    iget-object v0, p0, Lmiui/view/VolumeDialog$SafetyWarningDialog$2;->this$1:Lmiui/view/VolumeDialog$SafetyWarningDialog;

    iget-object v0, v0, Lmiui/view/VolumeDialog$SafetyWarningDialog;->this$0:Lmiui/view/VolumeDialog;

    # getter for: Lmiui/view/VolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;
    invoke-static {v0}, Lmiui/view/VolumeDialog;->access$3200(Lmiui/view/VolumeDialog;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_9
    iget-object v1, p0, Lmiui/view/VolumeDialog$SafetyWarningDialog$2;->this$1:Lmiui/view/VolumeDialog$SafetyWarningDialog;

    iget-object v1, v1, Lmiui/view/VolumeDialog$SafetyWarningDialog;->this$0:Lmiui/view/VolumeDialog;

    const/4 v2, 0x0

    # setter for: Lmiui/view/VolumeDialog;->mSafetyWarning:Landroid/app/AlertDialog;
    invoke-static {v1, v2}, Lmiui/view/VolumeDialog;->access$3302(Lmiui/view/VolumeDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    monitor-exit v0

    return-void

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_13

    throw v1
.end method
