.class public final synthetic Landroid/app/-$$Lambda$ActivityThread$vMpYFfxK9ah9pM-OyK4G3WmpR2s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/view/DisplayAdjustments$FixedRotationAdjustments;

.field public final synthetic f$1:[Landroid/content/res/Configuration;


# direct methods
.method public synthetic constructor <init>(Landroid/view/DisplayAdjustments$FixedRotationAdjustments;[Landroid/content/res/Configuration;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/-$$Lambda$ActivityThread$vMpYFfxK9ah9pM-OyK4G3WmpR2s;->f$0:Landroid/view/DisplayAdjustments$FixedRotationAdjustments;

    iput-object p2, p0, Landroid/app/-$$Lambda$ActivityThread$vMpYFfxK9ah9pM-OyK4G3WmpR2s;->f$1:[Landroid/content/res/Configuration;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Landroid/app/-$$Lambda$ActivityThread$vMpYFfxK9ah9pM-OyK4G3WmpR2s;->f$0:Landroid/view/DisplayAdjustments$FixedRotationAdjustments;

    iget-object v1, p0, Landroid/app/-$$Lambda$ActivityThread$vMpYFfxK9ah9pM-OyK4G3WmpR2s;->f$1:[Landroid/content/res/Configuration;

    check-cast p1, Landroid/view/DisplayAdjustments;

    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->lambda$handleFixedRotationAdjustments$0(Landroid/view/DisplayAdjustments$FixedRotationAdjustments;[Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;)V

    return-void
.end method
