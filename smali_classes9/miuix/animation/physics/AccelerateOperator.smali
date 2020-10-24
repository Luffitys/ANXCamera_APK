.class public Lmiuix/animation/physics/AccelerateOperator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiuix/animation/physics/PhysicsOperator;


# instance fields
.field private final accelerate:F


# direct methods
.method public constructor <init>(F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr p1, v0

    iput p1, p0, Lmiuix/animation/physics/AccelerateOperator;->accelerate:F

    return-void
.end method


# virtual methods
.method public varargs updateVelocity(DF[D)D
    .locals 0

    iget p0, p0, Lmiuix/animation/physics/AccelerateOperator;->accelerate:F

    mul-float/2addr p0, p3

    float-to-double p3, p0

    add-double/2addr p1, p3

    return-wide p1
.end method
