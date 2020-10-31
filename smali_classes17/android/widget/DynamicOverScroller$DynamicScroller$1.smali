.class Landroid/widget/DynamicOverScroller$DynamicScroller$1;
.super Ljava/lang/Object;
.source "DynamicOverScroller.java"

# interfaces
.implements Landroid/widget/DynamicOverScroller$OverScrollHandler$OnFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/DynamicOverScroller$DynamicScroller;->doFling(IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/DynamicOverScroller$DynamicScroller;

.field final synthetic val$max:I

.field final synthetic val$min:I

.field final synthetic val$over:I


# direct methods
.method constructor <init>(Landroid/widget/DynamicOverScroller$DynamicScroller;III)V
    .registers 5

    iput-object p1, p0, Landroid/widget/DynamicOverScroller$DynamicScroller$1;->this$0:Landroid/widget/DynamicOverScroller$DynamicScroller;

    iput p2, p0, Landroid/widget/DynamicOverScroller$DynamicScroller$1;->val$min:I

    iput p3, p0, Landroid/widget/DynamicOverScroller$DynamicScroller$1;->val$max:I

    iput p4, p0, Landroid/widget/DynamicOverScroller$DynamicScroller$1;->val$over:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whenFinished(FF)Z
    .registers 13

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget v1, p0, Landroid/widget/DynamicOverScroller$DynamicScroller$1;->val$min:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    iget v1, p0, Landroid/widget/DynamicOverScroller$DynamicScroller$1;->val$max:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v0, v4

    const-string v1, "fling finished: value(%f), velocity(%f), scroller boundary(%d, %d)"

    invoke-static {v1, v0}, Landroid/widget/OverScrollLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller$1;->this$0:Landroid/widget/DynamicOverScroller$DynamicScroller;

    # getter for: Landroid/widget/DynamicOverScroller$DynamicScroller;->mFlingAnimation:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;
    invoke-static {v0}, Landroid/widget/DynamicOverScroller$DynamicScroller;->access$100(Landroid/widget/DynamicOverScroller$DynamicScroller;)Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/DynamicOverScroller$DynamicScroller$1;->this$0:Landroid/widget/DynamicOverScroller$DynamicScroller;

    # getter for: Landroid/widget/DynamicOverScroller$DynamicScroller;->mHandler:Landroid/widget/DynamicOverScroller$OverScrollHandler;
    invoke-static {v1}, Landroid/widget/DynamicOverScroller$DynamicScroller;->access$000(Landroid/widget/DynamicOverScroller$DynamicScroller;)Landroid/widget/DynamicOverScroller$OverScrollHandler;

    move-result-object v1

    iget v1, v1, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mValue:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->setStartValue(F)Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller$1;->this$0:Landroid/widget/DynamicOverScroller$DynamicScroller;

    # getter for: Landroid/widget/DynamicOverScroller$DynamicScroller;->mFlingAnimation:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;
    invoke-static {v0}, Landroid/widget/DynamicOverScroller$DynamicScroller;->access$100(Landroid/widget/DynamicOverScroller$DynamicScroller;)Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/DynamicOverScroller$DynamicScroller$1;->this$0:Landroid/widget/DynamicOverScroller$DynamicScroller;

    # getter for: Landroid/widget/DynamicOverScroller$DynamicScroller;->mHandler:Landroid/widget/DynamicOverScroller$OverScrollHandler;
    invoke-static {v1}, Landroid/widget/DynamicOverScroller$DynamicScroller;->access$000(Landroid/widget/DynamicOverScroller$DynamicScroller;)Landroid/widget/DynamicOverScroller$OverScrollHandler;

    move-result-object v1

    iget v1, v1, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mVelocity:F

    invoke-virtual {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->setStartVelocity(F)Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;

    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller$1;->this$0:Landroid/widget/DynamicOverScroller$DynamicScroller;

    # getter for: Landroid/widget/DynamicOverScroller$DynamicScroller;->mFlingAnimation:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;
    invoke-static {v0}, Landroid/widget/DynamicOverScroller$DynamicScroller;->access$100(Landroid/widget/DynamicOverScroller$DynamicScroller;)Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->predictNaturalDest()F

    move-result v0

    float-to-int v1, p1

    if-eqz v1, :cond_89

    iget v1, p0, Landroid/widget/DynamicOverScroller$DynamicScroller$1;->val$max:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_66

    iget v1, p0, Landroid/widget/DynamicOverScroller$DynamicScroller$1;->val$min:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_89

    :cond_66
    const-string v1, "fling destination beyound boundary, start spring"

    invoke-static {v1}, Landroid/widget/OverScrollLogger;->debug(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/widget/DynamicOverScroller$DynamicScroller$1;->this$0:Landroid/widget/DynamicOverScroller$DynamicScroller;

    # invokes: Landroid/widget/DynamicOverScroller$DynamicScroller;->resetHandler()V
    invoke-static {v1}, Landroid/widget/DynamicOverScroller$DynamicScroller;->access$200(Landroid/widget/DynamicOverScroller$DynamicScroller;)V

    iget-object v4, p0, Landroid/widget/DynamicOverScroller$DynamicScroller$1;->this$0:Landroid/widget/DynamicOverScroller$DynamicScroller;

    const/4 v5, 0x2

    invoke-virtual {v4}, Landroid/widget/DynamicOverScroller$DynamicScroller;->getCurrentPosition()I

    move-result v6

    iget-object v1, p0, Landroid/widget/DynamicOverScroller$DynamicScroller$1;->this$0:Landroid/widget/DynamicOverScroller$DynamicScroller;

    invoke-virtual {v1}, Landroid/widget/DynamicOverScroller$DynamicScroller;->getCurrVelocity()F

    move-result v7

    iget-object v1, p0, Landroid/widget/DynamicOverScroller$DynamicScroller$1;->this$0:Landroid/widget/DynamicOverScroller$DynamicScroller;

    invoke-virtual {v1}, Landroid/widget/DynamicOverScroller$DynamicScroller;->getFinal()I

    move-result v8

    iget v9, p0, Landroid/widget/DynamicOverScroller$DynamicScroller$1;->val$over:I

    # invokes: Landroid/widget/DynamicOverScroller$DynamicScroller;->doSpring(IIFII)V
    invoke-static/range {v4 .. v9}, Landroid/widget/DynamicOverScroller$DynamicScroller;->access$300(Landroid/widget/DynamicOverScroller$DynamicScroller;IIFII)V

    return v3

    :cond_89
    const-string v1, "fling finished, no more work."

    invoke-static {v1}, Landroid/widget/OverScrollLogger;->debug(Ljava/lang/String;)V

    return v2
.end method
