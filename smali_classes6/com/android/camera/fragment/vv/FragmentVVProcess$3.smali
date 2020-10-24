.class Lcom/android/camera/fragment/vv/FragmentVVProcess$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/vv/FragmentVVProcess;

.field final synthetic val$formWorkspace:Z

.field final synthetic val$inPreview:Z


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/vv/FragmentVVProcess;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess$3;->this$0:Lcom/android/camera/fragment/vv/FragmentVVProcess;

    iput-boolean p2, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess$3;->val$formWorkspace:Z

    iput-boolean p3, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess$3;->val$inPreview:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-boolean p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess$3;->val$formWorkspace:Z

    iget-boolean v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess$3;->val$inPreview:Z

    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess$3;->this$0:Lcom/android/camera/fragment/vv/FragmentVVProcess;

    invoke-static {v1}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->access$200(Lcom/android/camera/fragment/vv/FragmentVVProcess;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess$3;->this$0:Lcom/android/camera/fragment/vv/FragmentVVProcess;

    invoke-static {v3}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->access$300(Lcom/android/camera/fragment/vv/FragmentVVProcess;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-static {p1, v0, v1, v3}, Lcom/android/camera/statistic/CameraStatUtils;->trackVV2ExitConfirm(ZZZZ)V

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess$3;->this$0:Lcom/android/camera/fragment/vv/FragmentVVProcess;

    invoke-virtual {p1, v2}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->quitLiveRecordPreview(Z)V

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess$3;->this$0:Lcom/android/camera/fragment/vv/FragmentVVProcess;

    invoke-static {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->access$100(Lcom/android/camera/fragment/vv/FragmentVVProcess;)Z

    return-void
.end method
