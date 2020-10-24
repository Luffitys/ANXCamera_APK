.class Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit$6;->this$0:Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit$6;->this$0:Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->access$1402(Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void
.end method
