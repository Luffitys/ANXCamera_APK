.class public Lmiui/animation/physics/SpringOperator;
.super Ljava/lang/Object;
.source "SpringOperator.java"

# interfaces
.implements Lmiui/animation/physics/PhysicsOperator;


# instance fields
.field private final damping:D

.field private final tension:D


# direct methods
.method public constructor <init>(FF)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    float-to-double v0, p2

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v2, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lmiui/animation/physics/SpringOperator;->tension:D

    float-to-double v0, p1

    const-wide v2, 0x402921fb54442d18L    # 12.566370614359172

    mul-double/2addr v0, v2

    float-to-double v2, p2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lmiui/animation/physics/SpringOperator;->damping:D

    return-void
.end method


# virtual methods
.method public varargs updateVelocity(DF[D)D
    .registers 13

    const/4 v0, 0x0

    aget-wide v0, p4, v0

    const/4 v2, 0x1

    aget-wide v2, p4, v2

    iget-wide v4, p0, Lmiui/animation/physics/SpringOperator;->damping:D

    float-to-double v6, p3

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v4

    mul-double/2addr p1, v6

    iget-wide v4, p0, Lmiui/animation/physics/SpringOperator;->tension:D

    sub-double v6, v0, v2

    mul-double/2addr v4, v6

    float-to-double v6, p3

    mul-double/2addr v4, v6

    double-to-float v4, v4

    float-to-double v4, v4

    add-double/2addr v4, p1

    return-wide v4
.end method
