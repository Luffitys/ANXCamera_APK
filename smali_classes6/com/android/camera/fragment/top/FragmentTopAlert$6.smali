.class Lcom/android/camera/fragment/top/FragmentTopAlert$6;
.super Lcom/android/camera/fragment/top/FragmentTopAlert$TopAlertRunnable;
.source ""


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/top/FragmentTopAlert;)V
    .locals 1

    iput-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$6;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/top/FragmentTopAlert$TopAlertRunnable;-><init>(Lcom/android/camera/fragment/top/FragmentTopAlert;Lcom/android/camera/fragment/top/FragmentTopAlert$1;)V

    return-void
.end method


# virtual methods
.method runToSafe()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$6;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    const-string v1, "unknow"

    invoke-static {v0, v1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$802(Lcom/android/camera/fragment/top/FragmentTopAlert;Ljava/lang/String;)Ljava/lang/String;

    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$6;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-static {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$900(Lcom/android/camera/fragment/top/FragmentTopAlert;)Lcom/android/camera/customization/BGTintTextView;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$1000(Lcom/android/camera/fragment/top/FragmentTopAlert;Landroid/view/View;)V

    return-void
.end method
