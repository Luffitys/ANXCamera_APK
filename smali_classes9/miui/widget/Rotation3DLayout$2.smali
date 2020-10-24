.class Lmiui/widget/Rotation3DLayout$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lmiui/widget/Rotation3DLayout;


# direct methods
.method constructor <init>(Lmiui/widget/Rotation3DLayout;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/Rotation3DLayout$2;->this$0:Lmiui/widget/Rotation3DLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object p0, p0, Lmiui/widget/Rotation3DLayout$2;->this$0:Lmiui/widget/Rotation3DLayout;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lmiui/widget/Rotation3DLayout;->access$100(Lmiui/widget/Rotation3DLayout;FZ)V

    return-void
.end method
