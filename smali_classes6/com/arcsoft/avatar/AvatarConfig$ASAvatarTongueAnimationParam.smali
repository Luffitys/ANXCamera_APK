.class public Lcom/arcsoft/avatar/AvatarConfig$ASAvatarTongueAnimationParam;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private fBackSlowLevel:F

.field private fLevel:F

.field private fMouthExpressionBak:F

.field private nTongueAnimationStatus:I

.field private nTongueStatus:I


# direct methods
.method public constructor <init>(IFFIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarTongueAnimationParam;->nTongueStatus:I

    iput p2, p0, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarTongueAnimationParam;->fLevel:F

    iput p3, p0, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarTongueAnimationParam;->fBackSlowLevel:F

    iput p4, p0, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarTongueAnimationParam;->nTongueAnimationStatus:I

    iput p5, p0, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarTongueAnimationParam;->fMouthExpressionBak:F

    return-void
.end method
