.class Landroid/view/InsetsController$InternalAnimationControlListener$1;
.super Ljava/lang/ThreadLocal;
.source "InsetsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InsetsController$InternalAnimationControlListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Landroid/animation/AnimationHandler;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/InsetsController$InternalAnimationControlListener;


# direct methods
.method constructor <init>(Landroid/view/InsetsController$InternalAnimationControlListener;)V
    .registers 2

    iput-object p1, p0, Landroid/view/InsetsController$InternalAnimationControlListener$1;->this$0:Landroid/view/InsetsController$InternalAnimationControlListener;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Landroid/animation/AnimationHandler;
    .registers 3

    new-instance v0, Landroid/animation/AnimationHandler;

    invoke-direct {v0}, Landroid/animation/AnimationHandler;-><init>()V

    new-instance v1, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;

    invoke-direct {v1}, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimationHandler;->setProvider(Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;)V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Landroid/view/InsetsController$InternalAnimationControlListener$1;->initialValue()Landroid/animation/AnimationHandler;

    move-result-object v0

    return-object v0
.end method
