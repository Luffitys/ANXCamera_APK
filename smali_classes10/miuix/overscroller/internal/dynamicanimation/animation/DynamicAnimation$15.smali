.class Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$15;
.super Lmiuix/overscroller/internal/dynamicanimation/animation/FloatPropertyCompat;
.source ""


# instance fields
.field final synthetic this$0:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

.field final synthetic val$floatValueHolder:Lmiuix/overscroller/internal/dynamicanimation/animation/FloatValueHolder;


# direct methods
.method constructor <init>(Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;Ljava/lang/String;Lmiuix/overscroller/internal/dynamicanimation/animation/FloatValueHolder;)V
    .locals 0

    iput-object p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$15;->this$0:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    iput-object p3, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$15;->val$floatValueHolder:Lmiuix/overscroller/internal/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {p0, p2}, Lmiuix/overscroller/internal/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Ljava/lang/Object;)F
    .locals 0

    iget-object p0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$15;->val$floatValueHolder:Lmiuix/overscroller/internal/dynamicanimation/animation/FloatValueHolder;

    invoke-virtual {p0}, Lmiuix/overscroller/internal/dynamicanimation/animation/FloatValueHolder;->getValue()F

    move-result p0

    return p0
.end method

.method public setValue(Ljava/lang/Object;F)V
    .locals 0

    iget-object p0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$15;->val$floatValueHolder:Lmiuix/overscroller/internal/dynamicanimation/animation/FloatValueHolder;

    invoke-virtual {p0, p2}, Lmiuix/overscroller/internal/dynamicanimation/animation/FloatValueHolder;->setValue(F)V

    return-void
.end method
