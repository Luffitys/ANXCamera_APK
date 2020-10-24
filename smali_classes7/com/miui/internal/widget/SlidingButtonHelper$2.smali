.class Lcom/miui/internal/widget/SlidingButtonHelper$2;
.super Lmiui/animation/property/FloatProperty;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/internal/widget/SlidingButtonHelper;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/SlidingButtonHelper;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper$2;->this$0:Lcom/miui/internal/widget/SlidingButtonHelper;

    invoke-direct {p0, p2}, Lmiui/animation/property/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/miui/internal/widget/SlidingButtonHelper;)F
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper$2;->this$0:Lcom/miui/internal/widget/SlidingButtonHelper;

    invoke-virtual {p0}, Lcom/miui/internal/widget/SlidingButtonHelper;->getMaskCheckedSlideBarAlpha()F

    move-result p0

    return p0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Lcom/miui/internal/widget/SlidingButtonHelper;

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/SlidingButtonHelper$2;->getValue(Lcom/miui/internal/widget/SlidingButtonHelper;)F

    move-result p0

    return p0
.end method

.method public setValue(Lcom/miui/internal/widget/SlidingButtonHelper;F)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper$2;->this$0:Lcom/miui/internal/widget/SlidingButtonHelper;

    invoke-virtual {p0, p2}, Lcom/miui/internal/widget/SlidingButtonHelper;->setMaskCheckedSlideBarAlpha(F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lcom/miui/internal/widget/SlidingButtonHelper;

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/widget/SlidingButtonHelper$2;->setValue(Lcom/miui/internal/widget/SlidingButtonHelper;F)V

    return-void
.end method
