.class Lcom/miui/internal/widget/SlidingButtonHelper$7;
.super Ljava/lang/Object;
.source "SlidingButtonHelper.java"

# interfaces
.implements Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/SlidingButtonHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/widget/SlidingButtonHelper;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/SlidingButtonHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper$7;->this$0:Lcom/miui/internal/widget/SlidingButtonHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lmiui/animation/physics/DynamicAnimation;FF)V
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper$7;->this$0:Lcom/miui/internal/widget/SlidingButtonHelper;

    # getter for: Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;
    invoke-static {v0}, Lcom/miui/internal/widget/SlidingButtonHelper;->access$000(Lcom/miui/internal/widget/SlidingButtonHelper;)Landroid/widget/CompoundButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->invalidate()V

    return-void
.end method
