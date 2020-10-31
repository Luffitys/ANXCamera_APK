.class public final Lcom/miui/internal/dynamicanimation/animation/FloatValueHolder;
.super Ljava/lang/Object;
.source "FloatValueHolder.java"


# instance fields
.field private mValue:F


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/dynamicanimation/animation/FloatValueHolder;->mValue:F

    return-void
.end method

.method public constructor <init>(F)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/dynamicanimation/animation/FloatValueHolder;->mValue:F

    invoke-virtual {p0, p1}, Lcom/miui/internal/dynamicanimation/animation/FloatValueHolder;->setValue(F)V

    return-void
.end method


# virtual methods
.method public getValue()F
    .registers 2

    iget v0, p0, Lcom/miui/internal/dynamicanimation/animation/FloatValueHolder;->mValue:F

    return v0
.end method

.method public setValue(F)V
    .registers 2

    iput p1, p0, Lcom/miui/internal/dynamicanimation/animation/FloatValueHolder;->mValue:F

    return-void
.end method
