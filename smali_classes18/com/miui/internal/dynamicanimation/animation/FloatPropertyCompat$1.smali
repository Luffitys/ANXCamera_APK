.class Lcom/miui/internal/dynamicanimation/animation/FloatPropertyCompat$1;
.super Lcom/miui/internal/dynamicanimation/animation/FloatPropertyCompat;
.source "FloatPropertyCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/dynamicanimation/animation/FloatPropertyCompat;->createFloatPropertyCompat(Landroid/util/FloatProperty;)Lcom/miui/internal/dynamicanimation/animation/FloatPropertyCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/internal/dynamicanimation/animation/FloatPropertyCompat<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$property:Landroid/util/FloatProperty;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/util/FloatProperty;)V
    .registers 3

    iput-object p2, p0, Lcom/miui/internal/dynamicanimation/animation/FloatPropertyCompat$1;->val$property:Landroid/util/FloatProperty;

    invoke-direct {p0, p1}, Lcom/miui/internal/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Ljava/lang/Object;)F
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)F"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/FloatPropertyCompat$1;->val$property:Landroid/util/FloatProperty;

    invoke-virtual {v0, p1}, Landroid/util/FloatProperty;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public setValue(Ljava/lang/Object;F)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/FloatPropertyCompat$1;->val$property:Landroid/util/FloatProperty;

    invoke-virtual {v0, p1, p2}, Landroid/util/FloatProperty;->setValue(Ljava/lang/Object;F)V

    return-void
.end method
