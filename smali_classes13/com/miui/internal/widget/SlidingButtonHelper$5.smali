.class Lcom/miui/internal/widget/SlidingButtonHelper$5;
.super Lmiui/animation/property/FloatProperty;
.source "SlidingButtonHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/SlidingButtonHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/animation/property/FloatProperty<",
        "Lcom/miui/internal/widget/SlidingButtonHelper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/widget/SlidingButtonHelper;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/SlidingButtonHelper;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper$5;->this$0:Lcom/miui/internal/widget/SlidingButtonHelper;

    invoke-direct {p0, p2}, Lmiui/animation/property/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/miui/internal/widget/SlidingButtonHelper;)F
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper$5;->this$0:Lcom/miui/internal/widget/SlidingButtonHelper;

    invoke-virtual {v0}, Lcom/miui/internal/widget/SlidingButtonHelper;->getSliderScale()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .registers 2

    check-cast p1, Lcom/miui/internal/widget/SlidingButtonHelper;

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/SlidingButtonHelper$5;->getValue(Lcom/miui/internal/widget/SlidingButtonHelper;)F

    move-result p1

    return p1
.end method

.method public setValue(Lcom/miui/internal/widget/SlidingButtonHelper;F)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper$5;->this$0:Lcom/miui/internal/widget/SlidingButtonHelper;

    invoke-virtual {v0, p2}, Lcom/miui/internal/widget/SlidingButtonHelper;->setSliderScale(F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    check-cast p1, Lcom/miui/internal/widget/SlidingButtonHelper;

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/widget/SlidingButtonHelper$5;->setValue(Lcom/miui/internal/widget/SlidingButtonHelper;F)V

    return-void
.end method
