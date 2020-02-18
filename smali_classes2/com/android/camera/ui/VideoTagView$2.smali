.class Lcom/android/camera/ui/VideoTagView$2;
.super Ljava/lang/Object;
.source "VideoTagView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/VideoTagView;->initTagViewAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/VideoTagView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/VideoTagView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/VideoTagView$2;->this$0:Lcom/android/camera/ui/VideoTagView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/VideoTagView$2;->this$0:Lcom/android/camera/ui/VideoTagView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/camera/ui/VideoTagView;->access$400(Lcom/android/camera/ui/VideoTagView;I)V

    return-void
.end method
