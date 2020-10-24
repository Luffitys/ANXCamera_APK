.class public Lmiui/animation/physics/FrictionOperator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/animation/physics/PhysicsOperator;


# instance fields
.field private final friction:D


# direct methods
.method public constructor <init>(F)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x3f79999a    # -4.2f

    mul-float/2addr p1, v0

    float-to-double v0, p1

    const-wide v2, 0x4005bf0a8b145769L    # Math.E

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    iput-wide v2, p0, Lmiui/animation/physics/FrictionOperator;->friction:D

    return-void
.end method


# virtual methods
.method public varargs updateVelocity(DF[D)D
    .locals 4

    iget-wide v0, p0, Lmiui/animation/physics/FrictionOperator;->friction:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    float-to-double p3, p3

    invoke-static {v2, v3, p3, p4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p3

    mul-double/2addr p1, p3

    return-wide p1
.end method
