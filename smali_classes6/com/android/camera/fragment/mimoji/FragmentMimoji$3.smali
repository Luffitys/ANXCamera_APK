.class Lcom/android/camera/fragment/mimoji/FragmentMimoji$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/mimoji/FragmentMimoji;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/mimoji/FragmentMimoji;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji$3;->this$0:Lcom/android/camera/fragment/mimoji/FragmentMimoji;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji$3;->this$0:Lcom/android/camera/fragment/mimoji/FragmentMimoji;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->access$502(Lcom/android/camera/fragment/mimoji/FragmentMimoji;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void
.end method
