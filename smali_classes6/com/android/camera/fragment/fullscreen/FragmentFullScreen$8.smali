.class Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$8;->this$0:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$8;->this$0:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->access$1002(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;Z)Z

    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$8;->this$0:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;

    invoke-static {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->access$1100(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
