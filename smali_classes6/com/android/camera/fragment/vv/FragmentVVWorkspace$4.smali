.class Lcom/android/camera/fragment/vv/FragmentVVWorkspace$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/vv/FragmentVVWorkspace;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/vv/FragmentVVWorkspace;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace$4;->this$0:Lcom/android/camera/fragment/vv/FragmentVVWorkspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace$4;->this$0:Lcom/android/camera/fragment/vv/FragmentVVWorkspace;

    invoke-static {p1}, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->access$800(Lcom/android/camera/fragment/vv/FragmentVVWorkspace;)V

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace$4;->this$0:Lcom/android/camera/fragment/vv/FragmentVVWorkspace;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->access$902(Lcom/android/camera/fragment/vv/FragmentVVWorkspace;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void
.end method
