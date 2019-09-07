.class Lcom/android/camera/fragment/vv/FragmentVVProcess$2;
.super Ljava/lang/Object;
.source "FragmentVVProcess.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/vv/FragmentVVProcess;->showReverseConfirmDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/vv/FragmentVVProcess;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/vv/FragmentVVProcess;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess$2;->this$0:Lcom/android/camera/fragment/vv/FragmentVVProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess$2;->this$0:Lcom/android/camera/fragment/vv/FragmentVVProcess;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->access$002(Lcom/android/camera/fragment/vv/FragmentVVProcess;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void
.end method
