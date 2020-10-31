.class Lmiui/widget/Rotation3DLayout$2;
.super Ljava/lang/Object;
.source "Rotation3DLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/Rotation3DLayout;->resetRotation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/Rotation3DLayout;


# direct methods
.method constructor <init>(Lmiui/widget/Rotation3DLayout;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/Rotation3DLayout$2;->this$0:Lmiui/widget/Rotation3DLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lmiui/widget/Rotation3DLayout$2;->this$0:Lmiui/widget/Rotation3DLayout;

    const/4 v2, 0x1

    # invokes: Lmiui/widget/Rotation3DLayout;->setRotationXInternal(FZ)V
    invoke-static {v1, v0, v2}, Lmiui/widget/Rotation3DLayout;->access$100(Lmiui/widget/Rotation3DLayout;FZ)V

    return-void
.end method
