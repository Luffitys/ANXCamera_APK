.class Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$15;
.super Lcom/miui/internal/dynamicanimation/animation/FloatPropertyCompat;
.source "DynamicAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;-><init>(Lcom/miui/internal/dynamicanimation/animation/FloatValueHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

.field final synthetic val$floatValueHolder:Lcom/miui/internal/dynamicanimation/animation/FloatValueHolder;


# direct methods
.method constructor <init>(Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;Ljava/lang/String;Lcom/miui/internal/dynamicanimation/animation/FloatValueHolder;)V
    .registers 4

    iput-object p1, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$15;->this$0:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    iput-object p3, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$15;->val$floatValueHolder:Lcom/miui/internal/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {p0, p2}, Lcom/miui/internal/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Ljava/lang/Object;)F
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$15;->val$floatValueHolder:Lcom/miui/internal/dynamicanimation/animation/FloatValueHolder;

    invoke-virtual {v0}, Lcom/miui/internal/dynamicanimation/animation/FloatValueHolder;->getValue()F

    move-result v0

    return v0
.end method

.method public setValue(Ljava/lang/Object;F)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$15;->val$floatValueHolder:Lcom/miui/internal/dynamicanimation/animation/FloatValueHolder;

    invoke-virtual {v0, p2}, Lcom/miui/internal/dynamicanimation/animation/FloatValueHolder;->setValue(F)V

    return-void
.end method
