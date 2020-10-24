.class Lcom/android/camera/fragment/settings/WatermarkFragment$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/settings/WatermarkFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$2;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 4

    iget-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$2;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "StartActivityWhenLocked"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$2;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$2;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    invoke-static {p1}, Lcom/android/camera/fragment/settings/WatermarkFragment;->access$200(Lcom/android/camera/fragment/settings/WatermarkFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDefaultWatermarkStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$2;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    invoke-static {p1}, Lcom/android/camera/fragment/settings/WatermarkFragment;->access$300(Lcom/android/camera/fragment/settings/WatermarkFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v1, ""

    if-nez p1, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDefaultWatermarkStr()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$2;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    invoke-static {v2}, Lcom/android/camera/fragment/settings/WatermarkFragment;->access$300(Lcom/android/camera/fragment/settings/WatermarkFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$2;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    invoke-static {p1}, Lcom/android/camera/fragment/settings/WatermarkFragment;->access$200(Lcom/android/camera/fragment/settings/WatermarkFragment;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$2;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    invoke-static {v1}, Lcom/android/camera/fragment/settings/WatermarkFragment;->access$300(Lcom/android/camera/fragment/settings/WatermarkFragment;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$2;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    invoke-static {p1}, Lcom/android/camera/fragment/settings/WatermarkFragment;->access$200(Lcom/android/camera/fragment/settings/WatermarkFragment;)Landroid/widget/EditText;

    move-result-object p1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$2;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    invoke-static {p1}, Lcom/android/camera/fragment/settings/WatermarkFragment;->access$200(Lcom/android/camera/fragment/settings/WatermarkFragment;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$2;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    invoke-static {v1}, Lcom/android/camera/fragment/settings/WatermarkFragment;->access$200(Lcom/android/camera/fragment/settings/WatermarkFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setSelection(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$2;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    new-instance v1, Landroid/os/HandlerThread;

    const/16 v2, 0xa

    const-string v3, "WatermarkFragment"

    invoke-direct {v1, v3, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-static {p1, v1}, Lcom/android/camera/fragment/settings/WatermarkFragment;->access$402(Lcom/android/camera/fragment/settings/WatermarkFragment;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    iget-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$2;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    invoke-static {p1}, Lcom/android/camera/fragment/settings/WatermarkFragment;->access$400(Lcom/android/camera/fragment/settings/WatermarkFragment;)Landroid/os/HandlerThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    iget-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$2;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    new-instance v1, Lcom/android/camera/fragment/settings/WatermarkFragment$BackgroundHandler;

    iget-object v2, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$2;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    invoke-static {v2}, Lcom/android/camera/fragment/settings/WatermarkFragment;->access$400(Lcom/android/camera/fragment/settings/WatermarkFragment;)Landroid/os/HandlerThread;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/camera/fragment/settings/WatermarkFragment$BackgroundHandler;-><init>(Lcom/android/camera/fragment/settings/WatermarkFragment;Landroid/os/Looper;)V

    iput-object v1, p1, Lcom/android/camera/fragment/settings/WatermarkFragment;->mBackgroundHandler:Lcom/android/camera/fragment/settings/WatermarkFragment$BackgroundHandler;

    iget-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$2;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    new-instance v1, Lcom/android/camera/fragment/settings/WatermarkFragment$UiHandler;

    iget-object v2, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$2;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/camera/fragment/settings/WatermarkFragment$UiHandler;-><init>(Lcom/android/camera/fragment/settings/WatermarkFragment;Landroid/os/Looper;)V

    iput-object v1, p1, Lcom/android/camera/fragment/settings/WatermarkFragment;->mUiHandler:Lcom/android/camera/fragment/settings/WatermarkFragment$UiHandler;

    iget-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$2;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    invoke-static {p1}, Lcom/android/camera/fragment/settings/WatermarkFragment;->access$200(Lcom/android/camera/fragment/settings/WatermarkFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$2;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    invoke-static {p1}, Lcom/android/camera/fragment/settings/WatermarkFragment;->access$200(Lcom/android/camera/fragment/settings/WatermarkFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object p0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$2;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    invoke-static {p0}, Lcom/android/camera/fragment/settings/WatermarkFragment;->access$200(Lcom/android/camera/fragment/settings/WatermarkFragment;)Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method
