.class Lcom/android/camera/fragment/vv/FragmentVVProcess$7;
.super Ljava/lang/Object;
.source "FragmentVVProcess.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/vv/FragmentVVProcess;->initTextureView()V
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

    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess$7;->this$0:Lcom/android/camera/fragment/vv/FragmentVVProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess$7;->this$0:Lcom/android/camera/fragment/vv/FragmentVVProcess;

    invoke-static {p1}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->access$600(Lcom/android/camera/fragment/vv/FragmentVVProcess;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess$7;->this$0:Lcom/android/camera/fragment/vv/FragmentVVProcess;

    invoke-static {p1}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->access$700(Lcom/android/camera/fragment/vv/FragmentVVProcess;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess$7;->this$0:Lcom/android/camera/fragment/vv/FragmentVVProcess;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->access$800(Lcom/android/camera/fragment/vv/FragmentVVProcess;ZZ)V

    :cond_1
    :goto_0
    return-void
.end method
