.class public Lmiui/animation/physics/AccelerateOperator;
.super Ljava/lang/Object;
.source "AccelerateOperator.java"

# interfaces
.implements Lmiui/animation/physics/PhysicsOperator;


# instance fields
.field private final accelerate:F


# direct methods
.method public constructor <init>(F)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v0, p1

    iput v0, p0, Lmiui/animation/physics/AccelerateOperator;->accelerate:F

    return-void
.end method


# virtual methods
.method public varargs updateVelocity(DF[D)D
    .registers 7

    iget v0, p0, Lmiui/animation/physics/AccelerateOperator;->accelerate:F

    mul-float/2addr v0, p3

    float-to-double v0, v0

    add-double/2addr v0, p1

    return-wide v0
.end method
