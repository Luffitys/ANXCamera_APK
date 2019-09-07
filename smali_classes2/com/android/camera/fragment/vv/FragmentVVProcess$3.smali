.class Lcom/android/camera/fragment/vv/FragmentVVProcess$3;
.super Ljava/lang/Object;
.source "FragmentVVProcess.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/vv/FragmentVVProcess;->showExitConfirm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/vv/FragmentVVProcess;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/vv/FragmentVVProcess;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess$3;->this$0:Lcom/android/camera/fragment/vv/FragmentVVProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "live\u9884\u89c8\u9000\u51fa\u786e\u8ba4"

    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtil;->trackLiveClick(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess$3;->this$0:Lcom/android/camera/fragment/vv/FragmentVVProcess;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->access$102(Lcom/android/camera/fragment/vv/FragmentVVProcess;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess$3;->this$0:Lcom/android/camera/fragment/vv/FragmentVVProcess;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->quitLiveRecordPreview(Z)V

    return-void
.end method
