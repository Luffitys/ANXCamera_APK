.class public Lmiui/os/DynamicEffect;
.super Ljava/lang/Object;
.source "DynamicEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/os/DynamicEffect$Parameter;,
        Lmiui/os/DynamicEffect$PrimitiveEffect;
    }
.end annotation


# static fields
.field public static final INTENSITY:I = 0x0

.field public static final SHARPNESS:I = 0x1


# instance fields
.field private mEffect:Landroid/os/DynamicEffect;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/DynamicEffect;->startCompose()Landroid/os/DynamicEffect;

    move-result-object v0

    iput-object v0, p0, Lmiui/os/DynamicEffect;->mEffect:Landroid/os/DynamicEffect;

    return-void
.end method

.method private constructor <init>(Landroid/os/DynamicEffect;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/os/DynamicEffect;->mEffect:Landroid/os/DynamicEffect;

    return-void
.end method

.method public static create(Landroid/content/Context;I)Lmiui/os/DynamicEffect;
    .registers 4

    new-instance v0, Lmiui/os/DynamicEffect;

    invoke-static {p0, p1}, Landroid/os/DynamicEffect;->create(Landroid/content/Context;I)Landroid/os/DynamicEffect;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/os/DynamicEffect;-><init>(Landroid/os/DynamicEffect;)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;F)Lmiui/os/DynamicEffect;
    .registers 4

    new-instance v0, Lmiui/os/DynamicEffect;

    invoke-static {p0, p1}, Landroid/os/DynamicEffect;->create(Ljava/lang/String;F)Landroid/os/DynamicEffect;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/os/DynamicEffect;-><init>(Landroid/os/DynamicEffect;)V

    return-object v0
.end method

.method public static createContinuous(FFF)Lmiui/os/DynamicEffect$PrimitiveEffect;
    .registers 5

    new-instance v0, Lmiui/os/DynamicEffect$PrimitiveEffect;

    invoke-static {p0, p1, p2}, Landroid/os/DynamicEffect;->createContinuous(FFF)Landroid/os/DynamicEffect$PrimitiveEffect;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/os/DynamicEffect$PrimitiveEffect;-><init>(Landroid/os/DynamicEffect$PrimitiveEffect;)V

    return-object v0
.end method

.method public static createParameter(I[F[F)Lmiui/os/DynamicEffect$Parameter;
    .registers 5

    new-instance v0, Lmiui/os/DynamicEffect$Parameter;

    invoke-static {p0, p1, p2}, Landroid/os/DynamicEffect;->createParameter(I[F[F)Landroid/os/DynamicEffect$Parameter;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/os/DynamicEffect$Parameter;-><init>(Landroid/os/DynamicEffect$Parameter;)V

    return-object v0
.end method

.method public static createTransient(FF)Lmiui/os/DynamicEffect$PrimitiveEffect;
    .registers 4

    new-instance v0, Lmiui/os/DynamicEffect$PrimitiveEffect;

    invoke-static {p0, p1}, Landroid/os/DynamicEffect;->createTransient(FF)Landroid/os/DynamicEffect$PrimitiveEffect;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/os/DynamicEffect$PrimitiveEffect;-><init>(Landroid/os/DynamicEffect$PrimitiveEffect;)V

    return-object v0
.end method

.method public static startCompose()Lmiui/os/DynamicEffect;
    .registers 1

    new-instance v0, Lmiui/os/DynamicEffect;

    invoke-direct {v0}, Lmiui/os/DynamicEffect;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addParameter(FLmiui/os/DynamicEffect$Parameter;)Lmiui/os/DynamicEffect;
    .registers 5

    iget-object v0, p0, Lmiui/os/DynamicEffect;->mEffect:Landroid/os/DynamicEffect;

    invoke-virtual {p2}, Lmiui/os/DynamicEffect$Parameter;->get()Landroid/os/DynamicEffect$Parameter;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/DynamicEffect;->addParameter(FLandroid/os/DynamicEffect$Parameter;)Landroid/os/DynamicEffect;

    return-object p0
.end method

.method public addPrimitive(FLmiui/os/DynamicEffect$PrimitiveEffect;)Lmiui/os/DynamicEffect;
    .registers 5

    iget-object v0, p0, Lmiui/os/DynamicEffect;->mEffect:Landroid/os/DynamicEffect;

    invoke-virtual {p2}, Lmiui/os/DynamicEffect$PrimitiveEffect;->get()Landroid/os/DynamicEffect$PrimitiveEffect;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/DynamicEffect;->addPrimitive(FLandroid/os/DynamicEffect$PrimitiveEffect;)Landroid/os/DynamicEffect;

    return-object p0
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, Lmiui/os/DynamicEffect;->mEffect:Landroid/os/DynamicEffect;

    invoke-virtual {v0}, Landroid/os/DynamicEffect;->clear()V

    return-void
.end method

.method public get()Landroid/os/DynamicEffect;
    .registers 2

    iget-object v0, p0, Lmiui/os/DynamicEffect;->mEffect:Landroid/os/DynamicEffect;

    return-object v0
.end method
