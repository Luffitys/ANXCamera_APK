.class Lcom/android/camera/fragment/settings/CameraPreferenceFragment$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/settings/CameraPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/settings/CameraPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$4;->this$0:Lcom/android/camera/fragment/settings/CameraPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$4;->this$0:Lcom/android/camera/fragment/settings/CameraPreferenceFragment;

    invoke-static {p0}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->access$100(Lcom/android/camera/fragment/settings/CameraPreferenceFragment;)Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
