.class Lcom/miui/internal/widget/SlidingButtonHelper$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/miui/internal/widget/SlidingButtonHelper;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/SlidingButtonHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper$7;->this$0:Lcom/miui/internal/widget/SlidingButtonHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lmiui/animation/physics/DynamicAnimation;FF)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper$7;->this$0:Lcom/miui/internal/widget/SlidingButtonHelper;

    invoke-static {p0}, Lcom/miui/internal/widget/SlidingButtonHelper;->access$000(Lcom/miui/internal/widget/SlidingButtonHelper;)Landroid/widget/CompoundButton;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    return-void
.end method
