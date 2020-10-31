.class Landroid/widget/DynamicOverScroller$OverScrollHandler$Monitor;
.super Ljava/lang/Object;
.source "DynamicOverScroller.java"

# interfaces
.implements Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DynamicOverScroller$OverScrollHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Monitor"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/DynamicOverScroller$OverScrollHandler;


# direct methods
.method private constructor <init>(Landroid/widget/DynamicOverScroller$OverScrollHandler;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler$Monitor;->this$0:Landroid/widget/DynamicOverScroller$OverScrollHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/DynamicOverScroller$OverScrollHandler;Landroid/widget/DynamicOverScroller$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/DynamicOverScroller$OverScrollHandler$Monitor;-><init>(Landroid/widget/DynamicOverScroller$OverScrollHandler;)V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;FF)V
    .registers 7

    iget-object v0, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler$Monitor;->this$0:Landroid/widget/DynamicOverScroller$OverScrollHandler;

    iput p3, v0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mVelocity:F

    iget-object v0, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler$Monitor;->this$0:Landroid/widget/DynamicOverScroller$OverScrollHandler;

    iget v1, v0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mStartValue:I

    float-to-int v2, p2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mValue:I

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler$Monitor;->this$0:Landroid/widget/DynamicOverScroller$OverScrollHandler;

    # getter for: Landroid/widget/DynamicOverScroller$OverScrollHandler;->mAnimMinValue:F
    invoke-static {v1}, Landroid/widget/DynamicOverScroller$OverScrollHandler;->access$500(Landroid/widget/DynamicOverScroller$OverScrollHandler;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler$Monitor;->this$0:Landroid/widget/DynamicOverScroller$OverScrollHandler;

    # getter for: Landroid/widget/DynamicOverScroller$OverScrollHandler;->mAnimMaxValue:F
    invoke-static {v1}, Landroid/widget/DynamicOverScroller$OverScrollHandler;->access$600(Landroid/widget/DynamicOverScroller$OverScrollHandler;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "%s updating value(%f), velocity(%f), min(%f), max(%f)"

    invoke-static {v1, v0}, Landroid/widget/OverScrollLogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
