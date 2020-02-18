.class Lcom/android/camera/module/Camera2Module$23$1;
.super Ljava/lang/Object;
.source "Camera2Module.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/Camera2Module$23;->onSessionStatusFlawResultData(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/module/Camera2Module$23;

.field final synthetic val$config:Lcom/android/camera/fragment/top/FragmentTopConfig;

.field final synthetic val$flawResult:I


# direct methods
.method constructor <init>(Lcom/android/camera/module/Camera2Module$23;ILcom/android/camera/fragment/top/FragmentTopConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/Camera2Module$23$1;->this$1:Lcom/android/camera/module/Camera2Module$23;

    iput p2, p0, Lcom/android/camera/module/Camera2Module$23$1;->val$flawResult:I

    iput-object p3, p0, Lcom/android/camera/module/Camera2Module$23$1;->val$config:Lcom/android/camera/fragment/top/FragmentTopConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget v0, p0, Lcom/android/camera/module/Camera2Module$23$1;->val$flawResult:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    const-wide/16 v2, 0xbb8

    const/4 v4, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module$23$1;->val$config:Lcom/android/camera/fragment/top/FragmentTopConfig;

    if-eqz p0, :cond_3

    const v0, 0x7f0f01f5

    invoke-virtual {p0, v4, v0, v2, v3}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertAiDetectTipHint(IIJ)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module$23$1;->val$config:Lcom/android/camera/fragment/top/FragmentTopConfig;

    if-eqz p0, :cond_3

    const v0, 0x7f0f01f6

    invoke-virtual {p0, v4, v0, v2, v3}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertAiDetectTipHint(IIJ)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module$23$1;->val$config:Lcom/android/camera/fragment/top/FragmentTopConfig;

    if-eqz p0, :cond_3

    const v0, 0x7f0f01f7

    invoke-virtual {p0, v4, v0, v2, v3}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertAiDetectTipHint(IIJ)V

    :cond_3
    :goto_0
    return-void
.end method
