.class Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$4$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic this$1:Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$4;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$4;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$4$2;->this$1:Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$4$2;->this$1:Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$4;

    iget-object p0, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$4;->this$0:Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->access$602(Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void
.end method
