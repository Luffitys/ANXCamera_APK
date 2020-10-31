.class Lmiui/animation/physics/DynamicAnimation$1;
.super Lmiui/animation/property/FloatProperty;
.source "DynamicAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/animation/physics/DynamicAnimation;-><init>(Lmiui/animation/property/FloatValueHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/animation/physics/DynamicAnimation;

.field final synthetic val$floatValueHolder:Lmiui/animation/property/FloatValueHolder;


# direct methods
.method constructor <init>(Lmiui/animation/physics/DynamicAnimation;Ljava/lang/String;Lmiui/animation/property/FloatValueHolder;)V
    .registers 4

    iput-object p1, p0, Lmiui/animation/physics/DynamicAnimation$1;->this$0:Lmiui/animation/physics/DynamicAnimation;

    iput-object p3, p0, Lmiui/animation/physics/DynamicAnimation$1;->val$floatValueHolder:Lmiui/animation/property/FloatValueHolder;

    invoke-direct {p0, p2}, Lmiui/animation/property/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Ljava/lang/Object;)F
    .registers 3

    iget-object v0, p0, Lmiui/animation/physics/DynamicAnimation$1;->val$floatValueHolder:Lmiui/animation/property/FloatValueHolder;

    invoke-virtual {v0}, Lmiui/animation/property/FloatValueHolder;->getValue()F

    move-result v0

    return v0
.end method

.method public setValue(Ljava/lang/Object;F)V
    .registers 4

    iget-object v0, p0, Lmiui/animation/physics/DynamicAnimation$1;->val$floatValueHolder:Lmiui/animation/property/FloatValueHolder;

    invoke-virtual {v0, p2}, Lmiui/animation/property/FloatValueHolder;->setValue(F)V

    return-void
.end method
