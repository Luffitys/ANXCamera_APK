.class public final Lmiuix/overscroller/internal/dynamicanimation/animation/FloatValueHolder;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mValue:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FloatValueHolder;->mValue:F

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FloatValueHolder;->mValue:F

    invoke-virtual {p0, p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/FloatValueHolder;->setValue(F)V

    return-void
.end method


# virtual methods
.method public getValue()F
    .locals 0

    iget p0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FloatValueHolder;->mValue:F

    return p0
.end method

.method public setValue(F)V
    .locals 0

    iput p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FloatValueHolder;->mValue:F

    return-void
.end method
