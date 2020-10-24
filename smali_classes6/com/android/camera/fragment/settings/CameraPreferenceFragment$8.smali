.class Lcom/android/camera/fragment/settings/CameraPreferenceFragment$8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/settings/CameraPreferenceFragment;

.field final synthetic val$fragment:Landroid/app/Fragment;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/settings/CameraPreferenceFragment;Landroid/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$8;->this$0:Lcom/android/camera/fragment/settings/CameraPreferenceFragment;

    iput-object p2, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$8;->val$fragment:Landroid/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$8;->this$0:Lcom/android/camera/fragment/settings/CameraPreferenceFragment;

    invoke-static {p1}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->access$200(Lcom/android/camera/fragment/settings/CameraPreferenceFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLocationPermissions()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$8;->val$fragment:Landroid/app/Fragment;

    invoke-static {p1}, Lcom/android/camera/permission/PermissionManager;->requestCameraLocationPermissionsByFragment(Landroid/app/Fragment;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$8;->this$0:Lcom/android/camera/fragment/settings/CameraPreferenceFragment;

    invoke-static {p1}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->access$000(Lcom/android/camera/fragment/settings/CameraPreferenceFragment;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$8;->this$0:Lcom/android/camera/fragment/settings/CameraPreferenceFragment;

    invoke-static {p1}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->access$300(Lcom/android/camera/fragment/settings/CameraPreferenceFragment;)Landroid/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$8;->this$0:Lcom/android/camera/fragment/settings/CameraPreferenceFragment;

    invoke-static {p0, v0}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->access$302(Lcom/android/camera/fragment/settings/CameraPreferenceFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void
.end method
