.class Lcom/miui/internal/widget/SlidingButtonHelper$8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/animation/physics/DynamicAnimation$OnAnimationEndListener;


# instance fields
.field final synthetic this$0:Lcom/miui/internal/widget/SlidingButtonHelper;

.field final synthetic val$callBack:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/SlidingButtonHelper;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper$8;->this$0:Lcom/miui/internal/widget/SlidingButtonHelper;

    iput-object p2, p0, Lcom/miui/internal/widget/SlidingButtonHelper$8;->val$callBack:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lmiui/animation/physics/DynamicAnimation;ZFF)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper$8;->val$callBack:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
