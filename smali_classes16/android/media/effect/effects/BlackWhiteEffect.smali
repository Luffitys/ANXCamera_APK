.class public Landroid/media/effect/effects/BlackWhiteEffect;
.super Landroid/media/effect/SingleFilterEffect;
.source "BlackWhiteEffect.java"


# direct methods
.method public constructor <init>(Landroid/media/effect/EffectContext;Ljava/lang/String;)V
    .registers 10

    const-class v3, Landroid/filterpacks/imageproc/BlackWhiteFilter;

    const/4 v0, 0x0

    new-array v6, v0, [Ljava/lang/Object;

    const-string v4, "image"

    const-string v5, "image"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/media/effect/SingleFilterEffect;-><init>(Landroid/media/effect/EffectContext;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
