.class Lcom/android/camera/fragment/top/FragmentTopAlert$5;
.super Lcom/android/camera/fragment/top/FragmentTopAlert$TopAlertRunnable;
.source ""


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/top/FragmentTopAlert;)V
    .locals 1

    iput-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$5;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/top/FragmentTopAlert$TopAlertRunnable;-><init>(Lcom/android/camera/fragment/top/FragmentTopAlert;Lcom/android/camera/fragment/top/FragmentTopAlert$1;)V

    return-void
.end method


# virtual methods
.method public runToSafe()V
    .locals 4

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$5;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$5;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-static {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$600(Lcom/android/camera/fragment/top/FragmentTopAlert;)Lcom/android/camera/ui/ToggleSwitch;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-static {p0, v1, v2, v0, v3}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$700(Lcom/android/camera/fragment/top/FragmentTopAlert;Landroid/view/View;ZLandroid/widget/LinearLayout$LayoutParams;I)V

    return-void
.end method
