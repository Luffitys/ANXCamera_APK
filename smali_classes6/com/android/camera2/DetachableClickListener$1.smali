.class Lcom/android/camera2/DetachableClickListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowAttachListener;


# instance fields
.field final synthetic this$0:Lcom/android/camera2/DetachableClickListener;


# direct methods
.method constructor <init>(Lcom/android/camera2/DetachableClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera2/DetachableClickListener$1;->this$0:Lcom/android/camera2/DetachableClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowAttached()V
    .locals 1

    invoke-static {}, Lcom/android/camera2/DetachableClickListener;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v0, "dialog attach to window"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onWindowDetached()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera2/DetachableClickListener$1;->this$0:Lcom/android/camera2/DetachableClickListener;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera2/DetachableClickListener;->access$102(Lcom/android/camera2/DetachableClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;

    iget-object p0, p0, Lcom/android/camera2/DetachableClickListener$1;->this$0:Lcom/android/camera2/DetachableClickListener;

    invoke-static {p0, v1}, Lcom/android/camera2/DetachableClickListener;->access$202(Lcom/android/camera2/DetachableClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method
