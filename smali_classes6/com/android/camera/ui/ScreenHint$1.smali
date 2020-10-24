.class Lcom/android/camera/ui/ScreenHint$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/ScreenHint;

.field final synthetic val$doNext:Ljava/lang/Runnable;

.field final synthetic val$isCheckOtherPermission:Z


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ScreenHint;ZLjava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/ScreenHint$1;->this$0:Lcom/android/camera/ui/ScreenHint;

    iput-boolean p2, p0, Lcom/android/camera/ui/ScreenHint$1;->val$isCheckOtherPermission:Z

    iput-object p3, p0, Lcom/android/camera/ui/ScreenHint$1;->val$doNext:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/android/camera/ui/ScreenHint$1;->this$0:Lcom/android/camera/ui/ScreenHint;

    invoke-static {p1}, Lcom/android/camera/ui/ScreenHint;->access$000(Lcom/android/camera/ui/ScreenHint;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/camera/ui/ScreenHint$1;->val$isCheckOtherPermission:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLaunchPermissions()Z

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x64

    goto :goto_0

    :cond_0
    const/16 p1, 0x65

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/android/camera/ui/ScreenHint$1;->val$isCheckOtherPermission:Z

    if-eqz p1, :cond_2

    const/16 p1, 0x66

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint$1;->this$0:Lcom/android/camera/ui/ScreenHint;

    invoke-static {v0}, Lcom/android/camera/ui/ScreenHint;->access$100(Lcom/android/camera/ui/ScreenHint;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/camera/permission/PermissionManager;->requestCameraPermissions(Landroid/app/Activity;I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/camera/ui/ScreenHint$1;->this$0:Lcom/android/camera/ui/ScreenHint;

    invoke-static {p1}, Lcom/android/camera/ui/ScreenHint;->access$000(Lcom/android/camera/ui/ScreenHint;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLocationPermissions()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->updateRecordLocationPreference(Z)V

    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    :cond_3
    iget-object p1, p0, Lcom/android/camera/ui/ScreenHint$1;->val$doNext:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_4
    iget-object p0, p0, Lcom/android/camera/ui/ScreenHint$1;->this$0:Lcom/android/camera/ui/ScreenHint;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/camera/ui/ScreenHint;->access$202(Lcom/android/camera/ui/ScreenHint;Lmiui/app/AlertDialog;)Lmiui/app/AlertDialog;

    return-void
.end method
