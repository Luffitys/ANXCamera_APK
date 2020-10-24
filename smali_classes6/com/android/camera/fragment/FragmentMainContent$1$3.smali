.class Lcom/android/camera/fragment/FragmentMainContent$1$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic this$1:Lcom/android/camera/fragment/FragmentMainContent$1;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/FragmentMainContent$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent$1$3;->this$1:Lcom/android/camera/fragment/FragmentMainContent$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent$1$3;->this$1:Lcom/android/camera/fragment/FragmentMainContent$1;

    iget-object p1, p1, Lcom/android/camera/fragment/FragmentMainContent$1;->this$0:Lcom/android/camera/fragment/FragmentMainContent;

    invoke-static {p1}, Lcom/android/camera/fragment/FragmentMainContent;->access$000(Lcom/android/camera/fragment/FragmentMainContent;)Landroid/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent$1$3;->this$1:Lcom/android/camera/fragment/FragmentMainContent$1;

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent$1;->this$0:Lcom/android/camera/fragment/FragmentMainContent;

    invoke-static {p0, v0}, Lcom/android/camera/fragment/FragmentMainContent;->access$002(Lcom/android/camera/fragment/FragmentMainContent;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void
.end method
