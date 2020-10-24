.class Lcom/android/camera/fragment/top/FragmentTopAlert$8;
.super Lcom/android/camera/fragment/top/FragmentTopAlert$TopAlertRunnable;
.source ""


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/top/FragmentTopAlert;)V
    .locals 1

    iput-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$8;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/top/FragmentTopAlert$TopAlertRunnable;-><init>(Lcom/android/camera/fragment/top/FragmentTopAlert;Lcom/android/camera/fragment/top/FragmentTopAlert$1;)V

    return-void
.end method


# virtual methods
.method runToSafe()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$8;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$1300(Lcom/android/camera/fragment/top/FragmentTopAlert;Z)V

    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$8;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-static {p0, v1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$1400(Lcom/android/camera/fragment/top/FragmentTopAlert;Z)V

    return-void
.end method
