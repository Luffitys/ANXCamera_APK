.class public Lmiui/os/DynamicEffect$PrimitiveEffect;
.super Ljava/lang/Object;
.source "DynamicEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/os/DynamicEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrimitiveEffect"
.end annotation


# instance fields
.field private mPrimitiveEffect:Landroid/os/DynamicEffect$PrimitiveEffect;


# direct methods
.method public constructor <init>(Landroid/os/DynamicEffect$PrimitiveEffect;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/os/DynamicEffect$PrimitiveEffect;->mPrimitiveEffect:Landroid/os/DynamicEffect$PrimitiveEffect;

    return-void
.end method


# virtual methods
.method public addParameter(Lmiui/os/DynamicEffect$Parameter;)Lmiui/os/DynamicEffect$PrimitiveEffect;
    .registers 4

    iget-object v0, p0, Lmiui/os/DynamicEffect$PrimitiveEffect;->mPrimitiveEffect:Landroid/os/DynamicEffect$PrimitiveEffect;

    invoke-virtual {p1}, Lmiui/os/DynamicEffect$Parameter;->get()Landroid/os/DynamicEffect$Parameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/DynamicEffect$PrimitiveEffect;->addParameter(Landroid/os/DynamicEffect$Parameter;)Landroid/os/DynamicEffect$PrimitiveEffect;

    return-object p0
.end method

.method public get()Landroid/os/DynamicEffect$PrimitiveEffect;
    .registers 2

    iget-object v0, p0, Lmiui/os/DynamicEffect$PrimitiveEffect;->mPrimitiveEffect:Landroid/os/DynamicEffect$PrimitiveEffect;

    return-object v0
.end method
